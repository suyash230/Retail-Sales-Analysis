# 🛒 Retail Sales Analysis using SQL

A complete end-to-end SQL project analyzing retail sales data across customers, products, and transactions — built entirely in MySQL with no external CSV import needed.

---

## 🎯 Project Objective

To analyze retail sales data and answer real business questions around revenue performance, customer behavior, product profitability, and seasonal trends — using SQL queries that a Data Analyst would write on the job.

---

## 🗃️ Dataset

- **Source:** Custom dataset built in SQL (no CSV import needed)
- **Transactions:** 100 sales records
- **Customers:** 30 customers across 7 Indian cities
- **Products:** 20 products across 4 categories
- **Period:** January 2023 – December 2023

### Tables:
| Table | Description | Rows |
|---|---|---|
| `customers` | Customer details — name, age, gender, city, segment | 30 |
| `products` | Product info — name, category, unit price, cost price | 20 |
| `sales` | Transactions — date, customer, product, quantity, discount, total | 100 |

### Product Categories:
- Electronics, Clothing, Beauty, Sports

### Customer Segments:
- Regular, Premium, VIP

---

## 🛠️ Tools Used

- **Database:** MySQL
- **Tool:** MySQL Workbench / XAMPP
- **Language:** SQL

---

## 📁 Project Structure

```
retail-sales-sql/
│
├── sql/
│   ├── 01_create_dataset.sql     # Creates all tables + inserts all data
│   └── 02_analysis_queries.sql   # All 15 analysis queries
│
└── README.md
```

---

## 📋 Analysis Breakdown

### 🔵 Section 1 — Data Exploration
| # | Business Question |
|---|---|
| Q1 | How many customers, products and transactions exist? |
| Q2 | What is the date range of the sales data? |
| Q3 | How are transactions distributed across cities and segments? |

### 🟡 Section 2 — Sales & Revenue Analysis
| # | Business Question |
|---|---|
| Q4 | What is the overall business summary — revenue, avg sale, items sold? |
| Q5 | Which product category generates the most revenue and profit? |
| Q6 | What are the top 5 best selling products? |
| Q7 | What does the monthly revenue trend look like? |
| Q8 | Do male or female customers spend more on average? |

### 🟠 Section 3 — Customer Analysis
| # | Business Question |
|---|---|
| Q9 | Who are the top 10 customers by total spending? |
| Q10 | Which customers have made more than 3 purchases? |
| Q11 | Which age group spends the most? |
| Q12 | How does discount percentage affect average sale value per category? |

### 🟢 Section 4 — Business Insights
| # | Business Question |
|---|---|
| Q13 | What is the best selling product in each category? |
| Q14 | Which city generates the highest revenue per customer? |
| Q15 | Which quarter performed best in terms of revenue? |

---

## 💡 Key Business Insights

1. **Electronics** category leads in total revenue but **Sports** has the best profit margin
2. **VIP segment** customers spend significantly more per transaction than Regular customers
3. **Q4 (Oct–Dec)** is the strongest quarter — typical festive season effect
4. Higher discounts do not always lead to higher sales volume
5. **Mumbai and Bangalore** dominate total revenue across cities
6. The **31–45 age group** is the most valuable customer segment by total spend

---

## 🚀 How to Run This Project

1. Open MySQL Workbench or XAMPP
2. Run `01_create_dataset.sql` — this creates the database, all tables, and inserts all data automatically
3. Run `02_analysis_queries.sql` — execute section by section
4. No CSV download or import needed — everything is self-contained!

---

## 🧠 SQL Concepts Used

- `JOIN` — connecting customers, products and sales tables
- `GROUP BY` + aggregate functions (`SUM`, `AVG`, `COUNT`)
- `HAVING` — filtering grouped results
- `CASE WHEN` — age group segmentation
- Subqueries — finding best product per category
- `MONTHNAME`, `QUARTER`, `TIMESTAMPDIFF` — date functions
- `ROUND`, `CONCAT` — formatting output
- `ORDER BY` + `LIMIT` — top-N analysis

---

## 👤 Author

**Suyash**
BCA Graduate | Data Analyst | MySQL • Python • Power BI
