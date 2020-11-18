-- テーブル「sales」のitem_nm、sales_date、unit_price、qty、sales_amt」を
-- item_nmがクルトガ且つsales_amtが10,000円未満のデータを抽出せよ。
SELECT item_nm, sales_date,unit_price, qty, sales_amt
from sales
where item_nm = "クルトガ" and sales_amt < 10000


select item_nm, sales_date, unit_price, qty, sales_amt
from sales
where item_nm, sales_date,unit_price,qty, sales_amt


SELECT item_nm, sales_date, unit_price, qty, sales_amt
from sales
where item_nm = "クルトガ" and sales_amt < 10000

-- テーブル「sales」のcust_nm、item_nm、sales_date、unit_price、qty、sales_amtをcust_nmが
-- A文具店、B商店、C雑貨店のデータを抽出せよ。
SELECT cust_nm, item_nm, sales_date, unit_price, qty, sales_amt
from sales
where cust_nm in ("A文具店", "B商店", "C雑貨店")



-- select cust_nm , item_nm , sales_date , unit_price , qty, sales_amt 
-- from sales
-- where cust_nm in ("A文具店" , "B商店" ,"C雑貨店")

-- テーブル「sales」の全項目をsales_dateが2020-06-02以上2020-06-05以下のデータを抽出せよ。
select * from sales a
where a.sales_date between '2020-06-02' and '2020-06-05'

-- 人事
select syozoku,sum(salary)
from jinji
group by syozoku 
order by syozoku

select maker_nm, avg(sales_amt)
from sales
where item_nm = "プロフィットギア"
group by maker_nm 
having avg(sales_amt) >= 15000