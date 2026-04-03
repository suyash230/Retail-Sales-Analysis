show databases;
use retail_sales_db;
show tables;
### 🔵 Section 1 — Data Exploration
# Q1 | How many customers, products and transactions exist? 

select count(*) from customers;
select count(*) from products;
select count(*) from sales;

-- Q2 | What is the date range of the sales data? |
SELECT * FROM sales;

SELECT
    MIN(sale_date) AS first_sale_date,
    MAX(sale_date) AS last_sale_date,
    TIMESTAMPDIFF(MONTH, MIN(sale_date), MAX(sale_date)) AS months_covered
FROM sales;

 -- Q3 | How are transactions distributed across cities and segments? | 
SELECT
    c.city,
    COUNT(s.transaction_id) AS total_transactions,
    ROUND(SUM(s.total_sale), 2) AS total_revenue
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.city;



### 🟡 Section 2 — Sales & Revenue Analysis
-- Q4 | What is the overall business summary — revenue, avg sale, items sold? |

SELECT
    COUNT(transaction_id)       AS total_transactions,
    ROUND(SUM(total_sale), 2)   AS total_revenue,
    ROUND(AVG(total_sale), 2)   AS avg_sale_per_transaction,
    SUM(quantity)               AS total_items_sold
FROM sales;

 -- Q5 | Which product category generates the most revenue and profit? |

SELECT
    p.category,
    COUNT(s.transaction_id)                          AS total_transactions,
    ROUND(SUM(s.total_sale), 2)                      AS total_revenue,
    ROUND(SUM(s.quantity * p.cost_price), 2)         AS total_cost,
    ROUND(SUM(s.total_sale) -
          SUM(s.quantity * p.cost_price), 2)         AS total_profit,
    ROUND(((SUM(s.total_sale) -
            SUM(s.quantity * p.cost_price))
            / SUM(s.total_sale)) * 100, 2)           AS profit_margin_pct
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- Q6 | What are the top 5 best selling products? |
select * from sales;
select * from products;

SELECT
    p.product_name,
    p.category,
    SUM(s.quantity)              AS total_qty_sold,
    ROUND(SUM(s.total_sale), 2)  AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name, p.category
ORDER BY total_revenue DESC
LIMIT 5;
