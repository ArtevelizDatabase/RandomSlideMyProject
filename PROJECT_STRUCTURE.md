# 📁 SlideForge - Project Structure

```
slideforge/
│
├── � slideforge_app.py        # Main Streamlit application
├── 📋 requirements.txt          # Python dependencies
├── 🐍 runtime.txt              # Python version for deployment
├── 🌍 environment.yml          # Conda environment (alternative)
│
├── 📚 Documentation/
│   ├── README.md               # Main project documentation
│   ├── USER_GUIDE.md          # User manual and guide
│   ├── DEPLOYMENT.md          # Deployment instructions
│   ├── SETUP.md               # Development setup guide
│   └── PROJECT_STRUCTURE.md   # This file
│
├── ⚙️ Configuration/
│   ├── .streamlit/
│   │   └── config.toml         # Streamlit app configuration
│   ├── .gitignore             # Git ignore rules
│   └── LICENSE                # MIT License
│
├── 🚀 Scripts/
│   ├── run_app.sh             # Local app launcher
│   └── setup_git.sh           # Git initialization helper
│
└── 🔧 Development/
    ├── .git/                  # Git repository (after init)
    ├── venv/                  # Virtual environment (local)
    └── __pycache__/           # Python cache (ignored)
```

## 📄 File Descriptions

### Core Application
- **`slideforge_app.py`** - Main application file containing all functionality
  - UI components and layouts
  - File processing logic
  - Slide merging functions
  - Download functionality

### Dependencies
- **`requirements.txt`** - Python package dependencies for deployment
- **`runtime.txt`** - Specifies Python version for Streamlit Cloud
- **`environment.yml`** - Conda environment specification (alternative)

### Documentation
- **`README.md`** - Main project documentation with features and installation
- **`USER_GUIDE.md`** - Detailed user manual and troubleshooting
- **`DEPLOYMENT.md`** - Step-by-step deployment instructions
- **`SETUP.md`** - Development environment setup guide

### Configuration Files
- **`.streamlit/config.toml`** - Streamlit app configuration
  - Theme settings
  - Upload limits
  - Server configuration
- **`.gitignore`** - Files and folders to ignore in Git
- **`LICENSE`** - MIT License for open source usage

### Scripts
- **`run_app.sh`** - Bash script to launch app locally
- **`setup_git.sh`** - Helper script for Git initialization

## 🎯 Key Features Location

### File Upload & Validation
```python
# In slideforge_app.py
uploaded_files = st.file_uploader(...)
# File size and format validation
```

### Slide Selection Modes
```python
# In slideforge_app.py - show_slide_selector()
- Random selection with count input
- Manual selection with checkboxes  
- Range selection with start/end inputs
```

### PowerPoint Processing
```python
# In slideforge_app.py - copy_slide_from_source()
- Master slide preservation
- Media relationship copying
- Shape and content copying
```

### UI Components
```python
# In slideforge_app.py - main()
- Multi-column layouts
- Progress bars
- Expandable sections
- Metrics dashboard
```

## 🛠️ Development Workflow

### Local Development
1. Use `run_app.sh` for local testing
2. Edit `slideforge_app.py` for functionality changes
3. Update `requirements.txt` for new dependencies
4. Test with various PowerPoint files

### Version Control
1. Use `setup_git.sh` for initial Git setup
2. Follow conventional commit messages
3. Create feature branches for new features
4. Update documentation for changes

### Deployment
1. Push to GitHub repository
2. Connect to Streamlit Cloud
3. Set `slideforge_app.py` as main file
4. Monitor deployment logs

## 📊 Configuration Management

### Streamlit Settings
```toml
# .streamlit/config.toml
[theme]
primaryColor = "#FF6B6B"        # App accent color
backgroundColor = "#FFFFFF"      # Main background
secondaryBackgroundColor = "#F0F2F6"  # Sidebar background

[server]
maxUploadSize = 200             # Max file size (MB)
```

### Python Environment
```txt
# requirements.txt
streamlit>=1.28.0              # Web framework
python-pptx>=0.6.21           # PowerPoint processing
```

## 🔧 Customization Points

### Adding New Features
1. **New slide selection modes**: Modify `show_slide_selector()`
2. **Custom templates**: Add template functions
3. **Export formats**: Extend download options
4. **UI improvements**: Update layouts in `main()`

### Styling Changes
1. **Colors**: Update `.streamlit/config.toml`
2. **Layout**: Modify column configurations
3. **Icons**: Change emoji icons throughout UI
4. **Messaging**: Update success/error messages

### Performance Optimization
1. **Caching**: Add `@st.cache_data` decorators
2. **Memory**: Optimize large file handling
3. **Processing**: Streamline slide copying logic
4. **UI**: Reduce unnecessary re-renders

## 📈 Scalability Considerations

### File Size Limits
- Current: 50MB per file
- Streamlit Cloud: 200MB total upload
- Can be adjusted in configuration

### Performance Optimization
- Memory efficient processing
- Progress indicators for long operations
- Error recovery mechanisms

### Feature Extensions
- User authentication
- File history/bookmarks
- Batch processing
- Advanced templates
- Export to other formats
