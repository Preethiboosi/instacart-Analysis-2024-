select *from BlinkIT_data

select sum(sales) as Total_Sales from BlinkIT_data 

select cast(sum(sales)/1000000 as Decimal(10,2)) AS Total_sales_Millions from BlinkIT_data
where Item_Fat_Content = 'Low Fat'


select cast(avg(sales) as Decimal(10,1)) as Average_sales from BlinkIT_data
where Outlet_Establishment_Year = 2022

select count(*) as no_of_items from BlinkIT_data
where Outlet_Establishment_Year = 2022

select cast(avg(Rating) as decimal(10,2)) as avg_rating from BlinkIT_data

select Item_Fat_Content, 
   cast(sum(sales)/1000 as Decimal(10,2)) AS Total_sales_Thousands,
   cast(avg(sales) as Decimal(10,1)) as Average_sales,
   count(*) as No_of_items ,
   cast(avg(Rating) as decimal(10,2)) as Avg_rating
from BlinkIT_data
"where Outlet_Establishment_Year = 2022"
group by Item_Fat_Content
order by Total_sales_Thousands DESC

select outlet_Establishment_Year,
      cast(sum(sales) as decimal(10,2)) as Total_sales,
	  cast(avg(sales) as Decimal(10,1)) as Average_sales,
	  count(*) as no_of_items,
	  cast(avg(Rating) as decimal(10,2)) as avg_rating
from BlinkIT_data

group by outlet_Establishment_Year
order by Total_sales Desc

select outlet_size, 
     cast(sum(sales) as decimal(10,2)) as Total_sales,
	 cast((sum(sales)*100.0/sum(sum(sales)) over()) as decimal(10,2)) as sales_percentage
from BlinkIT_data
group by outlet_size
order by total_sales desc;

select outlet_Location_type,
      cast(sum(sales) as decimal(10,2)) as Total_sales,
	  cast((sum(sales)*100.0/sum(sum(sales)) over()) as decimal(10,2)) as sales_percentage,
	  cast(avg(sales) as Decimal(10,1)) as Average_sales,
	  count(*) as no_of_items,
	  cast(avg(Rating) as decimal(10,2)) as avg_rating
from BlinkIT_data
"where Outlet_Establishment_Year = 2022"
group by outlet_Location_type
order by Total_sales Desc

