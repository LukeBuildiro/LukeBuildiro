select *
from product_price_snapshot pps 
limit 100;

select ean, max (max) - min (min) as price_difference
from product_price_snapshot pps 
group by ean having max (max) - min (min) <= 100000
order by price_difference desc 
;

select *
from product p
where ean = '708747937602';



-- bathroom_showers

select *
from product_price_snapshot pps2 
join
(select *
from product join product_category_tree pct on product.category_tree_uuid = pct.uuid) as products
on pps2.ean = products.ean  
join 
(select ean, max (max) - min (min) as price_difference
from product_price_snapshot pps 
group by ean having max (max) - min (min) <= 200000
order by price_difference desc ) as prices
on products.ean = prices.ean
where 1=2
or products.alias = 'bathrooms-showers-exposed-mixer-showers' 
or products.alias = 'bathrooms-showers-shower-valves' 
or products.alias = 'bathrooms-showers-electric-showers' 
or products.alias = 'bathrooms-showers-digital-showers' 
or products.alias = 'bathrooms-showers-mixer-showers' 
or products.alias = 'bathrooms-showers-power-showers' 
or products.alias = 'bathrooms-showers-thermostatic-mixer-showers' 
or products.alias = 'bathrooms-showers-concealed-mixer-showers' 
or products.alias = 'bathrooms-showers-slider-rail-mixer-showers' 
or products.alias = 'bathrooms-showers-smart-showers' 
order by price_difference desc 


-- bathroom_toilets

select products.ean, min(title), min(name),max(price_difference)
from product_price_snapshot pps2 
join
(select *
from product join product_category_tree pct on product.category_tree_uuid = pct.uuid) as products
on pps2.ean = products.ean  
join 
(select ean, max (max) - min (min) as price_difference
from product_price_snapshot pps 
group by ean having max (max) - min (min) <= 200000
order by price_difference desc ) as prices
on products.ean = prices.ean
where 1=2
or products.alias = 'bathrooms-toilets-back-to-wall-toilets' 
or products.alias = 'bathrooms-toilets-bidets' 
or products.alias = 'bathrooms-toilets-macerators' 
or products.alias = 'bathrooms-toilets-close-coupled-toilets' 
or products.alias = 'bathrooms-toilets-toilet-cubicles' 
or products.alias = 'bathrooms-toilets-toilet-furniture-units' 
or products.alias = 'bathrooms-toilets-toilet-accessories-and-fixings' 
or products.alias = 'bathrooms-toilets-toilet-and-basin-combination-units' 
or products.alias = 'bathrooms-toilets-raised-cistern-toilets' 
or products.alias = 'bathrooms-toilets-toilet-cisterns' 
or products.alias = 'bathrooms-toilets-high-and-low-level-toilets'
or products.alias = 'bathrooms-toilets-rimless-toilets' 
or products.alias = 'bathrooms-toilets-toilet-seats-and-fittings' 
or products.alias = 'bathrooms-toilets-toilet-units'
or products.alias = 'bathrooms-toilets-wall-hung-toilets'
group by products.ean
order by min(price_difference) desc
limit 100;






-- complete price history
select *
from product_price_snapshot pps 
where ean = '8014140410478'
order by updated_at asc;

