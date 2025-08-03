#!/bin/bash

# � SlideForge - PowerPoint Merger Pro - Git Setup Script
# This script helps you initialize git and prepare for deployment

echo "🔥 SlideForge - Git Setup"
echo "========================="

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    echo "   Download from: https://git-scm.com/downloads"
    exit 1
fi

# Check if already a git repository
if [ -d ".git" ]; then
    echo "📁 Git repository already exists!"
    echo "Current remote:"
    git remote -v
    echo ""
    echo "Status:"
    git status --short
    echo ""
    echo "🔄 You can push changes with:"
    echo "   git add ."
    echo "   git commit -m 'Your commit message'"
    echo "   git push"
    exit 0
fi

# Initialize git repository
echo "🔧 Initializing Git repository..."
git init

# Add all files
echo "📝 Adding files to Git..."
git add .

# Initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: SlideForge - PowerPoint Merger Pro

🔥 Features:
- Multi-file PowerPoint merging with advanced selection modes
- Random, Manual, and Range slide selection
- Real-time preview with detailed slide information  
- Multiple slide size options (16:9, 4:3, A4, Auto)
- Professional Streamlit web interface
- Memory-optimized processing for large files

🚀 Ready for deployment to Streamlit Cloud"

echo ""
echo "✅ Git repository initialized successfully!"
echo ""
echo "🌐 Next steps for GitHub deployment:"
echo "1. Create a new repository on GitHub (suggested name: 'slideforge')"
echo "2. Copy the repository URL"
echo "3. Run this command (replace with your URL):"
echo "   git remote add origin https://github.com/USERNAME/slideforge.git"
echo "4. Push to GitHub:"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "🚀 For Streamlit Cloud deployment:"
echo "1. Go to https://share.streamlit.io"
echo "2. Sign in with GitHub"
echo "3. Click 'New app'"
echo "4. Select your 'slideforge' repository"
echo "5. Set main file: slideforge_app.py"
echo "6. Suggested app URL: slideforge (or slideforge-yourname)"
echo "7. Deploy!"
echo ""
echo "📚 For detailed instructions, see DEPLOYMENT.md"
