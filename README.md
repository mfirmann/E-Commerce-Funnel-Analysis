# 📊 Investigasi Penurunan Konversi 90% pada Flow Checkout Android

## 🧠 Project Overview
Proyek ini berfokus pada analisis **sales funnel e-commerce** untuk mengidentifikasi penyebab utama stagnasi pendapatan meskipun traffic dan anggaran iklan meningkat.

Dengan menganalisis **5.000+ log aktivitas pengguna**, proyek ini berhasil menemukan **anomali teknis kritis pada aplikasi Android** yang menyebabkan kegagalan transaksi di tahap akhir checkout.

> 🎯 **Key Outcome:** Masalah utama bukan pada strategi marketing, melainkan bug teknis pada sistem pembayaran Android.

---

## 🧩 Business Problem (Situation & Task)

### Situation
Tim pemasaran melaporkan bahwa:
- Anggaran **Instagram Ads & Google Ads meningkat**
- Traffic pengguna **stabil**
- Namun **penjualan final tidak mengalami pertumbuhan signifikan**

### Task
Sebagai **Data Analyst**, saya ditugaskan untuk:
- Memetakan **user journey** dari halaman utama hingga pembelian
- Mengidentifikasi **tahap funnel dengan drop-off tertinggi**
- Melakukan **segmentasi berdasarkan jenis perangkat** untuk mendeteksi pola anomali atau bug teknis

---

## 🛠️ Tech Stack
- **Python**  
  Digunakan untuk fabrikasi data log pengguna yang realistis menggunakan library Faker
- **SQL (SQLite)**  
  Digunakan untuk transformasi dan agregasi data funnel dengan `CASE WHEN` dan `COUNT(DISTINCT)`
- **Tableau**  
  Digunakan untuk membangun dashboard interaktif, funnel visualization, dan heatmap analisis perangkat

---

## 🔍 Analytical Process

### 1️⃣ Data Ingestion & Cleaning
- Mengimpor **5.000+ baris data log aktivitas pengguna** ke SQLite
- Validasi konsistensi event dan user ID

### 2️⃣ Funnel Aggregation (SQL)
Menghitung jumlah **unique user** di setiap tahap funnel:

Home View → Product Page → Add to Cart → Checkout → Purchase

Seluruh query SQL tersedia di: /sql/funnel_queries.sql


### 3️⃣ Data Visualization (Tableau)
- Funnel comparison antar perangkat
- **Dual-axis funnel chart** untuk visualisasi simetris
- **Heatmap analysis** untuk mendeteksi korelasi antara perangkat dan kegagalan transaksi

---

## 💡 Key Findings & Insights

### Conversion Rate (Checkout → Purchase)
| Device   | Conversion Rate |
|--------|----------------|
| Web    | >90% |
| iOS    | >90% |
| Android | ❌ **10%** |

### 🔥 Aha Moment
Penurunan konversi **bukan disebabkan oleh strategi iklan**, melainkan **bug teknis pada flow pembayaran aplikasi Android**.

### 📉 Business Impact
- Kehilangan potensi **±380 transaksi pengguna Android**
- Risiko pemborosan anggaran iklan jika masalah tidak segera diperbaiki

---

## 🚀 Strategic Recommendations

### ⚠️ Urgent (Technical)
- Eskalasi ke tim **QA & Developer**
- Debugging **Payment API Integration** pada aplikasi Android versi terbaru

### 🔁 Customer Recovery
- Kirim **push notification atau email recovery**
- Target: pengguna Android yang gagal checkout dalam 24 jam terakhir

### 📊 Monitoring & Prevention
- Tambahkan **real-time alert** di dashboard
- Trigger peringatan jika conversion rate per device < **50%**

---

## 🗂️ Project Structure
```text
.
E-Commerce-Funnel-Analysis/
│
├── data/
│ ├── raw_data/
│ └── processed_data/
│
├── notebooks/
│ └── data_generation.ipynb
│
├── sql/
│ └── funnel_queries.sql
│
├── visuals/
│ ├── dashboard_screenshot.png
│ └── insight_heatmap.png
│
└── README.md
```

---

## 🔗 Important Links
- 📊 **Interactive Dashboard (Tableau Public)**: [PASTE YOUR TABLEAU LINK HERE]
- 📁 Dataset: `/data`
- 🧠 SQL Queries: `/sql`

---

## 👤 Author
**Maulana Firman Nurdiansyah**  
_Data Analyst Portfolio Project_

