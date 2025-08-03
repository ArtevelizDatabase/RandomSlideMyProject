#!/bin/bash

# SlideForge - PowerPoint Merger Pro - Launch Script

echo "� Starting SlideForge - PowerPoint Merger Pro..."
echo "=============================================="

# Check if streamlit is installed
if ! command -v streamlit &> /dev/null; then
    echo "❌ Streamlit not found. Installing dependencies..."
    pip install -r requirements.txt
fi

# Launch the application
echo "🌟 Launching SlideForge..."
echo "📱 Your browser will open automatically"
echo "🔗 Or visit: http://localhost:8501"
echo ""
echo "Press Ctrl+C to stop the application"
echo "=============================================="

streamlit run slideforge_app.py --server.port 8501
