# Setup and Development Guide

## 🛠️ Development Setup

### Prerequisites
- Python 3.8+
- Git
- Code editor (VS Code recommended)

### Local Development

1. **Clone & Setup**
   ```bash
   git clone <your-repo-url>
   cd powerpoint-merger
   python -m venv venv
   
   # Activate virtual environment
   # Windows:
   venv\Scripts\activate
   # Mac/Linux:
   source venv/bin/activate
   
   pip install -r requirements.txt
   ```

2. **Run Development Server**
   ```bash
   streamlit run app_streamlit.py
   ```

3. **Development with Auto-reload**
   ```bash
   streamlit run app_streamlit.py --server.runOnSave true
   ```

### 🧪 Testing

#### Manual Testing Checklist
- [ ] Upload single .pptx file
- [ ] Upload multiple .pptx files
- [ ] Test each selection mode (Random, Manual, Range)
- [ ] Test different slide sizes
- [ ] Test large files (close to 50MB limit)
- [ ] Test invalid file formats
- [ ] Test download functionality
- [ ] Test error handling

#### Test Files
Create test PowerPoint files with:
- Different slide counts (1, 5, 20+ slides)
- Different content types (text, images, tables, charts)
- Different slide sizes (16:9, 4:3)
- Large files for stress testing

### 🔍 Code Structure

```
app_streamlit.py - Main application
├── Slide copying functions
├── UI components  
├── File processing
├── Export functionality
└── Main application logic
```

### 📝 Contributing Guidelines

1. **Code Style**
   - Use descriptive variable names
   - Add comments for complex logic
   - Keep functions focused and small
   - Follow PEP 8 style guide

2. **Commit Messages**
   ```
   feat: add new feature
   fix: bug fix
   docs: documentation update
   style: formatting changes
   refactor: code refactoring
   test: add tests
   ```

3. **Pull Request Process**
   - Create feature branch
   - Test thoroughly
   - Update documentation
   - Submit PR with clear description

### 🐛 Debugging

#### Common Issues
1. **ImportError**: Check requirements.txt
2. **File Upload Failed**: Check file size and format
3. **Memory Error**: Optimize for large files
4. **Slides Not Copying**: Check python-pptx compatibility

#### Debug Mode
```python
# Add to app for debugging
import logging
logging.basicConfig(level=logging.DEBUG)
st.write("Debug info:", st.session_state)
```

### 🚀 Deployment Preparation

#### Pre-deployment Checklist
- [ ] Update requirements.txt
- [ ] Test in clean environment
- [ ] Remove debug code
- [ ] Update README.md
- [ ] Add proper error handling
- [ ] Optimize performance
- [ ] Test file upload limits

#### Environment Variables
```python
# For sensitive configurations
import os
DEBUG = os.getenv('DEBUG', 'False').lower() == 'true'
MAX_FILE_SIZE = int(os.getenv('MAX_FILE_SIZE', '52428800'))  # 50MB
```

### 📊 Performance Monitoring

#### Memory Usage
```python
import psutil
import streamlit as st

# Monitor memory usage
memory_usage = psutil.virtual_memory().percent
st.sidebar.metric("Memory Usage", f"{memory_usage:.1f}%")
```

#### File Processing Time
```python
import time

start_time = time.time()
# ... processing code ...
processing_time = time.time() - start_time
st.write(f"Processing took {processing_time:.2f} seconds")
```

### 🔧 Advanced Features

#### Adding New Selection Modes
1. Add mode to UI radio buttons
2. Implement selection logic
3. Update processing function
4. Add tests

#### Custom Slide Templates
1. Create template library
2. Add template selection UI
3. Implement template application
4. Test with various slide types

#### Export Formats
1. Add new export options
2. Implement conversion logic
3. Update download interface
4. Validate output quality

### 📚 Resources

- [Streamlit Documentation](https://docs.streamlit.io/)
- [python-pptx Documentation](https://python-pptx.readthedocs.io/)
- [PowerPoint File Format](https://docs.microsoft.com/en-us/openspecs/office_file_formats/)

### 🤝 Getting Help

1. Check existing issues on GitHub
2. Search Streamlit community forum
3. Review python-pptx documentation
4. Create detailed issue with:
   - Steps to reproduce
   - Expected vs actual behavior
   - Error messages
   - Environment details
