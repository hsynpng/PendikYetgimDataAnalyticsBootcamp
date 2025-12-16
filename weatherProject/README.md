# 🌦️ Hava Durumu Veri Çalışması

Bu proje, Türkiye’deki farklı şehirlerden elde edilen hava durumu verileri kullanılarak temel veri işleme ve analiz adımlarının uygulanmasını amaçlamaktadır.  
Çalışma kapsamında Pandas ve NumPy kütüphaneleri ile veri keşfi, filtreleme, sıralama, gruplama ve özet çıkarma işlemleri gerçekleştirilmiştir.

Proje, **İş Zekası – Power BI – Tableau Online Aralık Eğitimi** kapsamında, veri analizi mantığını kavramaya yönelik hazırlanmıştır.

---

## 📁 Kullanılan Veri Seti
- **Dosya adı:** `weather_data.csv`

---

## ✅ Yapılan Çalışmalar

### 1️⃣ Kütüphaneler ve Veri Yükleme
- Pandas ve NumPy projeye dahil edildi  
- CSV dosyası DataFrame yapısına aktarıldı  

---

### 2️⃣ Veri Setini Tanıma
Veri üzerinde ilk inceleme adımları uygulandı:
- İlk ve son satırların görüntülenmesi  
- Sayısal sütunlar için temel istatistiksel özetlerin alınması  

---

### 3️⃣ Sütunlarla Çalışma
- Date, City ve Temperature sütunları seçildi  
- Şehir ve sıcaklık bilgileri birlikte incelendi  

---

### 4️⃣ Basit Filtreleme İşlemleri
Veriler belirli koşullara göre süzüldü:
- 30°C üzerindeki sıcaklık değerleri  
- Belirli bir şehre ait kayıtlar  

---

### 5️⃣ Mantıksal Koşullar ile Filtreleme
Birden fazla şart kullanılarak detaylı sorgular oluşturuldu:
- Şehir ve nem koşulları  
- Alternatif sıcaklık ve nem kriterleri  

---

### 6️⃣ Veri Sıralama
Veri seti farklı kriterlere göre yeniden sıralandı:
- Sıcaklık değerine göre  
- Nem oranına göre  
- Şehir adına göre alfabetik olarak  

---

### 7️⃣ Yeni Sütun Oluşturma
Veri setine yeni hesaplanan sütunlar eklendi:
- **Temperature_F:** Fahrenheit cinsinden sıcaklık  
- **FeelsLike:** Hissedilen sıcaklık değeri  

---

### 8️⃣ Gruplama ve Özet Analiz
Veriler şehir bazında gruplanarak:
- Kayıt sayıları  
- Ortalama sıcaklık değerleri  
hesaplandı.

---

### 9️⃣ En Yüksek ve En Düşük Değerler
- En yüksek sıcaklık değeri  
- En düşük nem oranı  
belirlenerek ilgili kayıtlar incelendi.

---

### 🔟 Sonuçların Kaydedilmesi
Şehir bazlı özet bilgiler **Excel dosyası** olarak dışa aktarıldı.

---

## ▶️ Notebook’u Çalıştırma
1. Proje klasörünü VS Code veya Jupyter Notebook ile açın  
2. Gerekli kütüphanelerin yüklü olduğundan emin olun  
3. Hücreleri sırasıyla çalıştırarak kod ve çıktıları inceleyin  

---

## 📦 Kullanılan Kütüphaneler
- pandas  
- numpy  
- openpyxl (isteğe bağlı)

---

## ⚙️ Kurulum
```bash
pip install pandas numpy openpyxl
