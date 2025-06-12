import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F4FF),
      appBar: AppBar(
        title: const Text(
          'Privacy Policy',
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
                    'Yooyo Privacy Policy',
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
                  const SizedBox(height: 12),
                  const Text(
                    'This Privacy Policy describes how Yooyo collects, uses, and protects your personal information when you use our mobile application.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF666666),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
            
            _buildSection(
              '1. Information We Collect',
              'We collect the following types of information:\n\n• Personal Information: Name, email address, phone number, and profile information\n• Usage Data: How you interact with our app, features used, and time spent\n• Device Information: Device type, operating system, unique device identifiers\n• Location Data: Approximate location based on IP address (with your consent)\n• Communication Data: Messages, posts, and other content you create',
            ),
            
            _buildSection(
              '2. How We Use Your Information',
              'We use your information to:\n\n• Provide and maintain our service\n• Process transactions and send notifications\n• Improve our app and develop new features\n• Communicate with you about updates and promotions\n• Ensure security and prevent fraud\n• Comply with legal obligations\n• Personalize your experience',
            ),
            
            _buildSection(
              '3. Information Sharing',
              'We do not sell your personal information. We may share your information only in the following circumstances:\n\n• With your explicit consent\n• To comply with legal requirements\n• To protect our rights and safety\n• With service providers who assist us in operating our app\n• In case of a business transfer or merger',
            ),
            
            _buildSection(
              '4. Data Security',
              'We implement appropriate security measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction. However, no method of transmission over the internet is 100% secure, and we cannot guarantee absolute security.',
            ),
            
            _buildSection(
              '5. Data Retention',
              'We retain your personal information for as long as necessary to provide our services and fulfill the purposes outlined in this policy. We will delete or anonymize your information when it is no longer needed, unless we are required to retain it by law.',
            ),
            
            _buildSection(
              '6. Your Rights and Choices',
              'You have the right to:\n\n• Access your personal information\n• Correct inaccurate information\n• Delete your account and personal data\n• Opt-out of marketing communications\n• Restrict or object to certain processing\n• Data portability (receive a copy of your data)',
            ),
            
            _buildSection(
              '7. Cookies and Tracking',
              'We use cookies and similar tracking technologies to enhance your experience, analyze usage patterns, and improve our services. You can control cookie settings through your device settings, but some features may not function properly if cookies are disabled.',
            ),
            
            _buildSection(
              '8. Third-Party Services',
              'Our app may contain links to third-party websites or services. We are not responsible for the privacy practices of these third parties. We encourage you to review their privacy policies before providing any personal information.',
            ),
            
            _buildSection(
              '9. Children\'s Privacy',
              'Our service is not intended for children under 13 years of age. We do not knowingly collect personal information from children under 13. If we become aware that we have collected personal information from a child under 13, we will take steps to delete such information.',
            ),
            
            _buildSection(
              '10. International Data Transfers',
              'Your information may be transferred to and processed in countries other than your own. We ensure that such transfers comply with applicable data protection laws and implement appropriate safeguards to protect your information.',
            ),
            
            _buildSection(
              '11. Changes to This Policy',
              'We may update this Privacy Policy from time to time. We will notify you of any material changes by posting the new policy in our app and updating the "Last updated" date. Your continued use of our service after such changes constitutes acceptance of the updated policy.',
            ),
            
            _buildSection(
              '12. Contact Us',
              'If you have any questions or concerns about this Privacy Policy or our data practices, please contact us at:\n\nEmail: privacy@yooyo.com',
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