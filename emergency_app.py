import streamlit as st
import sys
import subprocess

st.set_page_config(page_title="SlideForge - PowerPoint Merger Pro", layout="wide")

# Emergency install attempt
def install_package(package):
    try:
        subprocess.check_call([sys.executable, "-m", "pip", "install", package])
        return True
    except Exception as e:
        st.error(f"Failed to install {package}: {e}")
        return False

# Try to import or install python-pptx
try:
    from pptx import Presentation
    st.success("✅ python-pptx imported successfully!")
    
    # Import the main app
    import slideforge_app
    
except ImportError as e:
    st.error("❌ python-pptx not found. Attempting emergency install...")
    
    with st.spinner("Installing required packages..."):
        # Try to install packages
        packages = [
            "python-pptx==0.6.23",
            "lxml==4.9.3", 
            "Pillow==10.0.0"
        ]
        
        success = True
        for package in packages:
            if not install_package(package):
                success = False
                break
        
        if success:
            st.success("✅ Packages installed! Please refresh the page.")
            st.experimental_rerun()
        else:
            st.error("❌ Failed to install packages. Please contact support.")
            st.error("Repository: https://github.com/ArtevelizDatabase/RandomSlideMyProject")
            st.stop()
