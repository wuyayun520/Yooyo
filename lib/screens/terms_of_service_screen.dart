import 'package:flutter/material.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F4FF),
      appBar: AppBar(
        title: const Text(
          'Terms of Service',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFE922DF),
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Yooyo Terms of Service',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFE922DF),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Last updated: 2025-06',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
            
            _buildSection(
              '1. Acceptance of Terms',
              'By downloading, accessing, or using the Yooyo mobile application, you agree to be bound by these Terms of Service and all applicable laws and regulations. If you do not agree with any of these terms, you are prohibited from using or accessing this app.',
            ),
            
            _buildSection(
              '2. Description of Service',
              'Yooyo is a mobile application that provides users with social networking and communication features. We reserve the right to modify, suspend, or discontinue any part of our service at any time without prior notice.',
            ),
            
            _buildSection(
              '3. User Accounts',
              'To access certain features of Yooyo, you may be required to create an account. You are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account. You must immediately notify us of any unauthorized use of your account.',
            ),
            
            _buildSection(
              '4. User Conduct',
              'You agree not to use Yooyo to:\n• Violate any applicable laws or regulations\n• Transmit harmful, offensive, or inappropriate content\n• Impersonate another person or entity\n• Interfere with or disrupt the service\n• Collect user information without permission\n• Use the service for commercial purposes without authorization',
            ),
            
            _buildSection(
              '5. Content and Intellectual Property',
              'All content provided through Yooyo, including but not limited to text, graphics, logos, and software, is the property of Yooyo or its licensors and is protected by copyright and other intellectual property laws. You retain ownership of content you create, but grant us a license to use, display, and distribute such content through our service.',
            ),
            
            _buildSection(
              '6. Privacy and Data Protection',
              'Your privacy is important to us. Please review our Privacy Policy to understand how we collect, use, and protect your personal information. By using Yooyo, you consent to the collection and use of your information as described in our Privacy Policy.',
            ),
            
            _buildSection(
              '7. Disclaimers',
              'Yooyo is provided "as is" without warranties of any kind, either express or implied. We do not warrant that the service will be uninterrupted, secure, or error-free. Your use of Yooyo is at your own risk.',
            ),
            
            _buildSection(
              '8. Limitation of Liability',
              'In no event shall Yooyo be liable for any indirect, incidental, special, consequential, or punitive damages, including but not limited to loss of profits, data, or other intangible losses resulting from your use of the service.',
            ),
            
            _buildSection(
              '9. Termination',
              'We may terminate or suspend your account and access to Yooyo immediately, without prior notice or liability, for any reason, including breach of these Terms of Service. Upon termination, your right to use the service will cease immediately.',
            ),
            
            _buildSection(
              '10. Changes to Terms',
              'We reserve the right to modify these Terms of Service at any time. We will notify users of any material changes by posting the new terms within the app. Your continued use of Yooyo after such modifications constitutes acceptance of the updated terms.',
            ),
            
            _buildSection(
              '11. Contact Information',
              'If you have any questions about these Terms of Service, please contact us at:\n\nEmail: support@yooyo.com',
            ),
            
            const SizedBox(height: 30),
            
            // 底部按钮
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE922DF),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'I Understand',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
  
  Widget _buildSection(String title, String content) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE922DF),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style: const TextStyle(
              fontSize: 15,
              height: 1.6,
              color: Color(0xFF333333),
            ),
          ),
        ],
      ),
    );
  }
} 