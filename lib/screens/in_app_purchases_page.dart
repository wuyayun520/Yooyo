import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'dart:async';
import '../constants/app_colors.dart';

class GoldProduct {
  final String amountStr;
  final String productId;
  final double price;
  int get amount => int.tryParse(amountStr) ?? 0;
  const GoldProduct(this.amountStr, this.productId, this.price);
}

class GoldProducts {
  static const List<GoldProduct> all = [
    GoldProduct('96', 'Yooyo2', 2.99),
    GoldProduct('189', 'Yooyo5', 5.99),
    GoldProduct('359', 'Yooyo9', 9.99),
    GoldProduct('729', 'Yooyo19', 19.99),
    GoldProduct('1869', 'Yooyo49', 49.99),
    GoldProduct('3799', 'Yooyo99', 99.99),
    GoldProduct('5999', 'Yooyo159', 159.99),
    GoldProduct('9059', 'Yooyo239', 239.99),
  ];
}

class InAppPurchasesPage extends StatefulWidget {
  const InAppPurchasesPage({super.key});

  @override
  State<InAppPurchasesPage> createState() => _InAppPurchasesPageState();
}

class _InAppPurchasesPageState extends State<InAppPurchasesPage> with TickerProviderStateMixin {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<ProductDetails> _products = [];
  bool _isLoading = true;
  bool _purchasePending = false;
  String? _purchaseError;
  int _goldCoins = 0;
  late AnimationController _animationController;
  late Animation<double> _pulseAnimation;

  List<GoldProduct> get _goldProducts => GoldProducts.all;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _pulseAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    
    final Stream<List<PurchaseDetails>> purchaseUpdated = _inAppPurchase.purchaseStream;
    _subscription = purchaseUpdated.listen(_listenToPurchaseUpdated, onDone: () {
      _subscription.cancel();
    }, onError: (error) {
      print("Error in IAP Stream: $error");
    });
    _loadGoldCoins();
    _initInAppPurchase();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _subscription.cancel();
    super.dispose();
  }

  Future<void> _loadGoldCoins() async {
    final prefs = await SharedPreferences.getInstance();
    int coins = prefs.getInt('textQuota') ?? 0;
    if (!prefs.containsKey('textQuota')) {
      await prefs.setInt('textQuota', 0);
    }
    setState(() {
      _goldCoins = coins;
    });
  }

  Future<void> _saveGoldCoins(int amount) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _goldCoins += amount;
    });
    await prefs.setInt('textQuota', _goldCoins);
  }

  Future<void> _initInAppPurchase() async {
    final bool isAvailable = await _inAppPurchase.isAvailable();
    if (!isAvailable) {
      setState(() {
        _isLoading = false;
        _purchaseError = "Store is not available.";
      });
      return;
    }
    final Set<String> productIds = _goldProducts.map((e) => e.productId).toSet();
    try {
      final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds);
      setState(() {
        _products = response.productDetails;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
        _purchaseError = "Failed to load products: $e";
      });
    }
  }

  Future<void> _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) async {
    for (var purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        setState(() {
          _purchasePending = true;
        });
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          setState(() {
            _purchasePending = false;
            _purchaseError = purchaseDetails.error?.message ?? "Unknown error occurred";
          });
          _showSnackBar("Purchase failed: ${purchaseDetails.error?.message ?? 'Unknown error'}");
        } else if (purchaseDetails.status == PurchaseStatus.purchased ||
            purchaseDetails.status == PurchaseStatus.restored) {
          _handleSuccessfulPurchase(purchaseDetails);
        } else if (purchaseDetails.status == PurchaseStatus.canceled) {
          setState(() {
            _purchasePending = false;
          });
        }
        if (purchaseDetails.pendingCompletePurchase) {
          await _inAppPurchase.completePurchase(purchaseDetails);
        }
      }
    }
  }

  Future<void> _handleSuccessfulPurchase(PurchaseDetails purchaseDetails) async {
    setState(() {
      _purchasePending = false;
    });
    final product = _goldProducts.firstWhere((e) => e.productId == purchaseDetails.productID, orElse: () => GoldProduct('', '', 0));
    if (product.amount > 0) {
      await _saveGoldCoins(product.amount);
      _showSnackBar("Purchase successful! +${product.amount} Music Coins");
    }
  }

  void _showSnackBar(String msg) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(msg),
          backgroundColor: const Color(0xFFE922DF),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      );
    }
  }

  Future<void> _processPurchase(String productId) async {
    final ProductDetails? product = _products.firstWhereOrNull((p) => p.id == productId);
    if (product == null) {
      _showSnackBar("Product not available");
      return;
    }
    setState(() {
      _purchasePending = true;
    });
    try {
      final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
      await _inAppPurchase.buyConsumable(purchaseParam: purchaseParam, autoConsume: true);
    } catch (e) {
      setState(() {
        _purchasePending = false;
      });
      _showSnackBar("Error starting purchase: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131518),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Color(0xFFE922DF),
              ),
            )
          : CustomScrollView(
              slivers: [
                // 自定义AppBar
                SliverAppBar(
                  expandedHeight: 280,
                  floating: false,
                  pinned: true,
                  backgroundColor: const Color(0xFF131518),
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF2A2D35),
                            Color(0xFF131518),
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 60),
                          // 音乐主题图标
                          AnimatedBuilder(
                            animation: _pulseAnimation,
                            builder: (context, child) {
                              return Transform.scale(
                                scale: _pulseAnimation.value,
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: const LinearGradient(
                                      colors: [Color(0xFFE922DF), Color(0xFFFF6B9D)],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0xFFE922DF).withOpacity(0.4),
                                        blurRadius: 20,
                                        spreadRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.music_note,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 20),
                          // 余额显示
                          Text(
                            '$_goldCoins',
                            style: const TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Music Coins',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFFE922DF),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                // 商品列表
                SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final item = _goldProducts[index];
                        final product = _products.firstWhereOrNull((p) => p.id == item.productId);
                        final priceStr = product?.price ?? '\$${item.price.toStringAsFixed(2)}';
                        
                        return Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            color: const Color(0xFF2A2D35),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: const Color(0xFFE922DF).withOpacity(0.2),
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(16),
                              onTap: _purchasePending ? null : () => _processPurchase(item.productId),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    // 音乐图标
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [Color(0xFFE922DF), Color(0xFFFF6B9D)],
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0xFFE922DF).withOpacity(0.3),
                                            blurRadius: 8,
                                            offset: const Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child: const Icon(
                                        Icons.audiotrack,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                    
                                    const SizedBox(width: 16),
                                    
                                    // 商品信息
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${item.amount} Music Coins',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    
                                    // 价格按钮
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [Color(0xFFE922DF), Color(0xFFFF6B9D)],
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0xFFE922DF).withOpacity(0.3),
                                            blurRadius: 8,
                                            offset: const Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child: Text(
                                        priceStr,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: _goldProducts.length,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
  
  Widget _buildFeatureItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFE922DF),
            size: 18,
          ),
          const SizedBox(width: 12),
          Text(
            text,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

extension FirstWhereOrNullExtension<E> on List<E> {
  E? firstWhereOrNull(bool Function(E) test) {
    for (final element in this) {
      if (test(element)) return element;
    }
    return null;
  }
} 