# GameVault Database Project

Bu proje, dijital oyun dağıtım platformu (Steam / Epic Games benzeri) için
tasarlanmış bir **PostgreSQL veritabanı** çalışmasını içermektedir.

Proje, veritabanı tasarımı, tablo ilişkileri ve temel SQL sorgularını
kapsayacak şekilde hazırlanmıştır.

## Veritabanı Yapısı

Projede aşağıdaki tablolar bulunmaktadır:

- `developers` : Oyun geliştirici firmalar
- `games` : Oyun bilgileri
- `genres` : Oyun türleri
- `games_genres` : Oyun ve türler arasındaki çoktan-çoğa (Many-to-Many) ilişkiyi sağlayan ara tablo

### İlişkiler
- Bir geliştirici birden fazla oyun geliştirebilir (One-to-Many)
- Bir oyun birden fazla türe sahip olabilir (Many-to-Many)

## Dosyalar

- `gamevault.sql`  
  - Tabloların oluşturulması (CREATE TABLE)
  - Veri ekleme işlemleri (INSERT)
  - Güncelleme ve silme işlemleri (UPDATE / DELETE)
  - Raporlama sorguları (SELECT & JOIN)

- `diagram.png`  
  - DrawSQL kullanılarak oluşturulmuş veritabanı diyagramı ekran görüntüsü

## Kurulum ve Çalıştırma

PostgreSQL üzerinde çalıştırmak için:

```sql
\i gamevault.sql
