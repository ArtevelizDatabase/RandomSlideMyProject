# � SlideForge - Quick Start Guide

## ⚡ Deploy to Streamlit Cloud (5 menit)

### 1. Setup GitHub Repository
```bash
# Di terminal, navigate ke folder project
cd "path/to/SlideForge"

# Jalankan script setup otomatis
./setup_git.sh

# Atau manual:
git init
git add .
git commit -m "Initial commit: SlideForge - PowerPoint Merger Pro"
```

### 2. Push ke GitHub
1. Buat repository baru di [GitHub](https://github.com/new) dengan nama `slideforge`
2. Copy URL repository
3. Jalankan commands:
```bash
git remote add origin https://github.com/USERNAME/slideforge.git
git branch -M main
git push -u origin main
```

### 3. Deploy ke Streamlit Cloud
1. Buka [share.streamlit.io](https://share.streamlit.io)
2. Sign in dengan GitHub
3. Klik "New app"
4. Pilih repository Anda
5. Main file: `slideforge_app.py`
6. Deploy!

### 4. Update README
Setelah deploy berhasil, update badge di README.md:
```markdown
[![Streamlit App](https://static.streamlit.io/badges/streamlit_badge_black_white.svg)](https://slideforge.streamlit.app)
```

## 🔥 SlideForge Features Ready to Use

✅ **Multi-file Upload** - Upload beberapa .pptx sekaligus
✅ **3 Selection Modes** - Random, Manual, Range
✅ **Real-time Preview** - Lihat slide sebelum merge  
✅ **Flexible Output** - Berbagai ukuran slide
✅ **Progress Tracking** - Monitor proses real-time
✅ **Error Handling** - Recovery otomatis dari error
✅ **Mobile Responsive** - Works di desktop & mobile

## 🛠️ Local Testing

```bash
# Test lokal sebelum deploy
./run_app.sh

# Atau manual:
streamlit run slideforge_app.py
```

## 📁 Project Structure (Ready for Deploy)

```
✅ slideforge_app.py        # Main app
✅ requirements.txt          # Dependencies  
✅ runtime.txt              # Python version
✅ .streamlit/config.toml   # App config
✅ .gitignore              # Git ignore
✅ README.md               # Documentation
✅ LICENSE                 # MIT License
✅ All documentation files
```

## 🔧 Configuration Highlights

### Streamlit Cloud Ready
- ✅ Upload limit: 200MB total
- ✅ Python 3.8+ compatibility
- ✅ Optimized memory usage
- ✅ Error recovery mechanisms

### Security & Performance
- ✅ File validation
- ✅ Size limits
- ✅ Type checking
- ✅ Progress indicators

## 🎨 Customization

### Colors (`.streamlit/config.toml`)
```toml
primaryColor = "#FF6B6B"        # Change app accent
backgroundColor = "#FFFFFF"      # Main background  
```

### Features (`app_streamlit.py`)
- Add new selection modes
- Custom slide templates
- Additional export formats
- Enhanced UI components

## 📞 Support

- 📖 Detailed docs: `DEPLOYMENT.md`
- 🛠️ Setup guide: `SETUP.md`  
- 👤 User manual: `USER_GUIDE.md`
- 🏗️ Structure: `PROJECT_STRUCTURE.md`

## 🎉 SlideForge is Ready!

Your SlideForge PowerPoint Merger app is now ready for deployment! 

1. ✅ All files configured for SlideForge
2. ✅ Dependencies optimized
3. ✅ Documentation complete
4. ✅ Deployment ready

Just follow the 3 steps above to get your SlideForge app live on Streamlit Cloud!
