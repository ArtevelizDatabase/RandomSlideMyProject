# Deployment Guide

## 🚀 Deploy ke Streamlit Cloud

### Prerequisites
1. Akun GitHub
2. Akun Streamlit Cloud (gratis)
3. Repository yang sudah di-push ke GitHub

### Step-by-Step Deployment:

#### 1. Setup GitHub Repository
```bash
# Initialize git (jika belum)
git init

# Add semua file
git add .

# Commit pertama
git commit -m "Initial commit: PowerPoint Merger App"

# Add remote origin (ganti dengan URL repo Anda)
git remote add origin https://github.com/USERNAME/REPOSITORY-NAME.git

# Push ke GitHub
git push -u origin main
```

#### 2. Deploy ke Streamlit Cloud

1. **Login ke Streamlit Cloud**
   - Buka [share.streamlit.io](https://share.streamlit.io)
   - Klik "Sign up" atau "Sign in"
   - Login dengan akun GitHub Anda

2. **Create New App**
   - Klik tombol "New app"
   - Pilih "From existing repo"
   - Pilih repository GitHub Anda
   - Main file path: `app_streamlit.py`
   - Branch: `main` (default)

3. **Advanced Settings (Optional)**
   - Python version: `3.8` (sesuai runtime.txt)
   - Custom requirements: sudah otomatis dari requirements.txt

4. **Deploy!**
   - Klik "Deploy!"
   - Tunggu proses deployment (biasanya 2-5 menit)
   - URL aplikasi akan tersedia setelah selesai

#### 3. Custom Domain (Optional)
- Setelah deploy berhasil, buka Settings
- Scroll ke "Custom domain"
- Masukkan domain yang diinginkan
- Update badge di README.md dengan URL baru

### 🔧 Troubleshooting Deployment

#### Error: "Module not found"
- Pastikan semua dependencies ada di `requirements.txt`
- Check apakah ada typo dalam nama package

#### Error: "App crashed"
- Check logs di Streamlit Cloud dashboard
- Pastikan `app_streamlit.py` bisa berjalan di lokal terlebih dahulu
- Periksa path file dan import statements

#### Error: "Memory limit exceeded"
- Optimasi code untuk mengurangi memory usage
- Pertimbangkan upgrade ke Streamlit Cloud Pro

#### File Upload Issues
- Streamlit Cloud memiliki limit file upload (biasanya 200MB)
- Setting sudah dikonfigurasi di `.streamlit/config.toml`

### 📊 Monitoring & Maintenance

#### Analytics
- Streamlit Cloud memberikan basic analytics
- Monitor usage dan performance di dashboard

#### Updates
```bash
# Update code
git add .
git commit -m "Update: your changes description"
git push

# Streamlit Cloud akan auto-redeploy
```

#### Backup
- Repository GitHub adalah backup utama
- Download deployment logs secara berkala

### 🌍 Alternative Deployment Options

#### 1. Heroku
```bash
# Tambahkan Procfile
echo "web: streamlit run app_streamlit.py --server.port=$PORT --server.address=0.0.0.0" > Procfile

# Setup.sh untuk Heroku
mkdir -p ~/.streamlit/
echo "[server]
headless = true
port = $PORT
enableCORS = false
" > ~/.streamlit/config.toml
```

#### 2. Railway
- Import GitHub repo di railway.app
- Railway akan auto-detect sebagai Python app
- Set start command: `streamlit run app_streamlit.py`

#### 3. Docker (Advanced)
```dockerfile
FROM python:3.8-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8501

CMD ["streamlit", "run", "app_streamlit.py"]
```

### 🔒 Security Best Practices

1. **Environment Variables**
   - Jangan hardcode API keys
   - Gunakan st.secrets untuk sensitive data

2. **File Upload Security**
   - Validasi file type dan size
   - Sanitize file names

3. **Error Handling**
   - Jangan expose sensitive error messages
   - Log errors untuk debugging

### 📈 Performance Optimization

1. **Caching**
   ```python
   @st.cache_data
   def load_data():
       # Expensive operations
   ```

2. **Session State**
   ```python
   if 'key' not in st.session_state:
       st.session_state.key = initial_value
   ```

3. **Memory Management**
   - Clear large variables when done
   - Use generators for large datasets

### 🎯 Post-Deployment Checklist

- [ ] App loads successfully
- [ ] File upload works
- [ ] Slide merging functions correctly
- [ ] Download works
- [ ] Mobile responsive
- [ ] Error handling works
- [ ] Performance is acceptable
- [ ] Analytics tracking (if needed)
- [ ] Update README with live URL
- [ ] Share with users for testing

### 📞 Support

Jika mengalami masalah deployment:
1. Check Streamlit Cloud documentation
2. Review deployment logs
3. Test locally terlebih dahulu
4. Contact Streamlit support jika diperlukan
