


import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Header.dart';


class PortfolioHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1a1a2e),
              Color(0xFF16213e),
              Color(0xFF0f3460),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section
                Buildheader(),
                SizedBox(height: 30),

                // About Section
                _buildAboutSection(),
                SizedBox(height: 30),

                // Education Section
                _buildEducationSection(),
                SizedBox(height: 30),

                // Skills Section
                _buildSkillsSection(),
                SizedBox(height: 30),

                // Projects Section
                _buildProjectsSection(),
                SizedBox(height: 30),

                // Certifications Section
                _buildCertificationsSection(),
                SizedBox(height: 30),

                // Contact Section
                _buildContactSection(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildAboutSection() {
    return _buildSectionCard(
      title: "About Me",
      icon: Icons.person_outline,
      child: Text(
        "I am a dedicated Diploma in Computer Engineering student with a passion for technology and software development. "
            "Currently in my final year, I have gained hands-on experience in programming, web development, and system design. "
            "I enjoy solving complex problems and am always eager to learn new technologies and apply them in real-world projects.",
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey[300],
          height: 1.6,
        ),
      ),
    );
  }

  Widget _buildEducationSection() {
    return _buildSectionCard(
      title: "Education",
      icon: Icons.school,
      child: Column(
        children: [
          _buildEducationItem(
            degree: "Diploma in Computer Engineering",
            institution: "SSM Polytechnic College,Tirur",
            duration: "2023 - 2026",
            grade: "CGPA: 8.5/10",
            description: "Specialized in software development, database management, and computer networks.",
          ),
          SizedBox(height: 16),
          _buildEducationItem(
            degree: "Higher Secondary Education (12th)",
            institution: "Government Higher Secondary School,Areekode",
            duration: "2021 - 2023",
            grade: "Percentage: 88%",
            description: "Science stream with Mathematics, Physics, and Chemistry.",
          ),
          SizedBox(height: 16),
          _buildEducationItem(
            degree: "Secondary Education (10th)",
            institution: "Sullamussalam Oriental High School,Areekode",
            duration: "2019 - 2021",
            grade: "Percentage: 100%",
            description: "Completed with distinction in all subjects.",
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem({
    required String degree,
    required String institution,
    required String duration,
    required String grade,
    required String description,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  degree,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  grade,
                  style: TextStyle(
                    color: Colors.green[300],
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            institution,
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[300],
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 4),
          Text(
            duration,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[400],
            ),
          ),
          SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[300],
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsSection() {
    return _buildSectionCard(
      title: "Technical Skills",
      icon: Icons.code,
      child: Column(
        children: [
          _buildSkillCategory(
            "Programming Languages",
            ["C", "C++", "Java", "Python", "JavaScript", "HTML/CSS","PHP"],
          ),
          SizedBox(height: 16),
          _buildSkillCategory(
            "Frameworks & Technologies",
            ["React", "Node.js", "Express.js", "Bootstrap", "jQuery"],
          ),
          SizedBox(height: 16),
          _buildSkillCategory(
            "Databases",
            ["MySQL", "MongoDB", "SQLite"],
          ),
          SizedBox(height: 16),
          _buildSkillCategory(
            "Tools & Software",
            ["Git", "GitHub", "VS Code", "Android Studio", "Figma"],
          ),
          SizedBox(height: 16),
          _buildSkillCategory(
            "Core Subjects",
            ["Data Structures", "Algorithms", "DBMS", "Computer Networks", "Operating Systems"],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillCategory(String category, List<String> skills) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue[300],
          ),
        ),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: skills.map((skill) => _buildSkillChip(skill)).toList(),
        ),
      ],
    );
  }

  Widget _buildSkillChip(String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue.withOpacity(0.5)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.blue[200],
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildProjectsSection() {
    return _buildSectionCard(
      title: "Academic Projects",
      icon: Icons.work_outline,
      child: Column(
        children: [
          _buildProjectCard(
            title: "Football Auth App",
            description: "A football-focused authentication app built to manage user access and secure login for players and admins.",
            technologies: ["PHP", "MySQL", "HTML", "CSS", "JavaScript"],
            features: [
              "User registration and login with JWT authentication",
              "Role-based access control (players, admins)",
              "Secure password hashing and validation",
              "Simple, responsive UI for smooth user experience",
            ],
          ),
          SizedBox(height: 16),
          _buildProjectCard(
            title: "E-Commerce Website",
            description: "A responsive e-commerce platform with shopping cart functionality and payment integration.",
            technologies: ["React", "Node.js", "MongoDB", "Express.js"],
            features: [
              "Product catalog with search and filter",
              "Shopping cart and wishlist",
              "User authentication and profiles",
              "Order management system",
            ],
          ),
          SizedBox(height: 16),
          _buildProjectCard(
            title: "Turf Booking Website",
            description: "Web application for Online turf booking,users can register,Check availability,book slots and make secure payments.",
            technologies: ["React", "Node.js", "MongoDB","Express.js"],
            features: [
              "User and turf owner login with role-based access",
              "Real-time slot availability and booking system",
              "Turf management dashboard for owners",
              "Responsive design with secure payment integration",
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard({
    required String title,
    required String description,
    required List<String> technologies,
    required List<String> features,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[900]?.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[700]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.folder_open, color: Colors.blue[300], size: 24),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[300],
              height: 1.4,
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Technologies Used:",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.blue[300],
            ),
          ),
          SizedBox(height: 4),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: technologies.map((tech) => _buildTechChip(tech)).toList(),
          ),
          SizedBox(height: 12),
          Text(
            "Key Features:",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.blue[300],
            ),
          ),
          SizedBox(height: 4),
          ...features.map((feature) => Padding(
            padding: EdgeInsets.only(left: 8, top: 2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("• ", style: TextStyle(color: Colors.blue[300])),
                Expanded(
                  child: Text(
                    feature,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ],
            ),
          )).toList(),
        ],
      ),
    );
  }

  Widget _buildTechChip(String tech) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.orange.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.orange.withOpacity(0.5)),
      ),
      child: Text(
        tech,
        style: TextStyle(
          color: Colors.orange[200],
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildCertificationsSection() {
    return _buildSectionCard(
      title: "Certifications & Achievements",
      icon: Icons.emoji_events,
      child: Column(
        children: [
          _buildCertificationItem(
            title: "Web Development Fundamentals",
            issuer: "FreeCodeCamp",
            date: "2024",
            description: "Completed comprehensive course covering HTML, CSS, JavaScript, and responsive design.",
          ),
          SizedBox(height: 12),
          _buildCertificationItem(
            title: "Python Programming",
            issuer: "Coursera",
            date: "2023",
            description: "Learned Python fundamentals, data structures, and object-oriented programming concepts.",
          ),
          SizedBox(height: 12),
          _buildCertificationItem(
            title: "Database Management Systems",
            issuer: "NPTEL",
            date: "2023",
            description: "Completed course on database design, SQL queries, and database optimization techniques.",
          ),
          SizedBox(height: 12),
          _buildCertificationItem(
            title: "Best Project Award",
            issuer: "College Technical Fest",
            date: "2024",
            description: "Won first place for Student Management System project in college technical exhibition.",
          ),
        ],
      ),
    );
  }

  Widget _buildCertificationItem({
    required String title,
    required String issuer,
    required String date,
    required String description,
  }) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.green.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          Icon(Icons.verified, color: Colors.green[300], size: 20),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "$issuer • $date",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.green[300],
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactSection() {
    return _buildSectionCard(
      title: "Contact Information",
      icon: Icons.contact_mail,
      child: Column(
        children: [
          _buildContactItem(
            icon: Icons.email,
            title: "Email",
            subtitle: "your.email@gmail.com",
            onTap: () => _launchUrl('mailto:your.email@gmail.com'),
          ),
          _buildContactItem(
            icon: Icons.phone,
            title: "Phone",
            subtitle: "+91 9876543210",
            onTap: () => _launchUrl('tel:+919876543210'),
          ),
          _buildContactItem(
            icon: Icons.location_on,
            title: "Location",
            subtitle: "Your City, State, India",
            onTap: null,
          ),
          _buildContactItem(
            icon: Icons.code,
            title: "GitHub",
            subtitle: "github.com/yourusername",
            onTap: () => _launchUrl('https://github.com/yourusername'),
          ),
          _buildContactItem(
            icon: Icons.work,
            title: "LinkedIn",
            subtitle: "linkedin.com/in/yourprofile",
            onTap: () => _launchUrl('https://linkedin.com/in/yourprofile'),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: Colors.blue[300], size: 20),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.grey[300]),
      ),
      onTap: onTap,
      trailing: onTap != null ? Icon(Icons.open_in_new, color: Colors.grey[400], size: 16) : null,
    );
  }

  Widget _buildSectionCard({
    required String title,
    required IconData icon,
    required Widget child,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[800]!),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.blue[300], size: 24),
              SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          child,
        ],
      ),
    );
  }

  void _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }
}