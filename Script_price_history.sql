select
	*
from
	product_price_snapshot pps
limit 100;

select
	ean,
	max (max) - min (min) as price_difference
from
	product_price_snapshot pps
group by
	ean
having
	max (max) - min (min) <= 100000
order by
	price_difference desc 
;

select
	*
from
	product p
where
	ean = '708747937602';



-- bathroom_showers

select
	*
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
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
order by
	price_difference desc 


-- bathroom_toilets

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
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
group by
	products.ean
order by
	min(price_difference) desc
limit 100;






-- complete price history
select *
from product_price_snapshot pps 
where ean = '5010146718436'
order by updated_at asc;


-- bathrooms_baths

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'bathrooms-baths-walk-in-baths'
	or products.alias = 'bathrooms-baths-single-ended-baths'
	or products.alias = 'bathrooms-baths-freestanding'
	or products.alias = 'bathrooms-baths-whirlpool-baths'
	or products.alias = 'bathrooms-baths-straight-baths'
	or products.alias = 'bathrooms-baths-double-ended-baths'
	or products.alias = 'bathrooms-baths-corner-baths'
group by
	products.ean
order by
	min(price_difference) desc
limit 100;


-- complete price history
select
	*
from
	product_price_snapshot pps
where
	ean = '5055341720013'
order by
	updated_at asc;

-- shower panels

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'bathrooms-shower-enlosures-trays-and-accessories-shower-panels'
group by
	products.ean
order by
	min(price_difference) desc;

-- laminate flooring

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'flooring-and-tiling-flooring-laminate'
group by
	products.ean
order by
	min(price_difference) desc;




-- vinyl flooring

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'flooring-and-tiling-flooring-luxury-vinyl-click-flooring'
group by
	products.ean
order by
	min(price_difference) desc;

-- wall tiles


select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'flooring-and-tiling-tiling-wall-tiles'
group by
	products.ean
order by
	min(price_difference) desc;



-- floor tiles

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'flooring-and-tiling-tiling-floor-tiles' 
group by
	products.ean
order by
	min(price_difference) desc;



-- kitchen taps

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'kitchens-kitchen-taps' 
group by
	products.ean
order by
	min(price_difference) desc;

-- paving

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'landscaping-and-fencing-paving-paving-packs' 
group by
	products.ean
order by
	min(price_difference) desc;


-- loft insulation

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'building-materials-insulation-loft-insulation' 
group by
	products.ean
order by
	min(price_difference) desc;


-- construction insulation


select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'building-materials-insulation-constructional-insulation' 
group by
	products.ean
order by
	min(price_difference) desc;

-- cement


select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'building-materials-cement-cement' 
group by
	products.ean
order by
	min(price_difference) desc;

-- roof tiles

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'building-materials-roofing-roof-tiles-and-slates' 
group by
	products.ean
order by
	min(price_difference) desc;

-- extractor fans

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'bathrooms-extractor-fans' 
group by
	products.ean
order by
	min(price_difference) desc;


-- smart home


select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'electrical-and-ventilation-smart-home' 
group by
	products.ean
order by
	min(price_difference) desc;

-- copper and brassware

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'plumbing-and-heating-plumbing-copper-and-brassware' 
group by
	products.ean
order by
	min(price_difference) desc;



-- guttering and drainage


select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'building-materials-aggregates-stone-and-gravel' 
group by
	products.ean
order by
	min(price_difference) desc;


-- interior paint - satin paint


select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'painting-and-decorating-interior-paint' 
group by
	products.ean
order by
	min(price_difference) desc;

-- woodcare

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'painting-and-decorating-woodcare' 
group by
	products.ean
order by
	min(price_difference) desc;

-- woodworking tools


select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'tools-woodworking-tools' 
group by
	products.ean
order by
	min(price_difference) desc;

-- nail guns

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'tools-power-tools-nail-guns' 
group by
	products.ean
order by
	min(price_difference) desc;


-- planers

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'tools-power-tools-planers' 
group by
	products.ean
order by
	min(price_difference) desc;

-- routers

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'tools-power-tools-drills-drill-drivers' 
group by
	products.ean
order by
	min(price_difference) desc;

-- saws

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'tools-power-tools-saws' 
group by
	products.ean
order by
	min(price_difference) desc;

-- cladding

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'timber-and-joinery-cladding' 
group by
	products.ean
order by
	min(price_difference) desc;


-- sawn timber

select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'timber-and-joinery-sawn-timber' 
group by
	products.ean
order by
	min(price_difference) desc;

-- decorative timber


select
	products.ean,
	min(title),
	min(name),
	max(price_difference) as price_difference
from
	product_price_snapshot pps2
join
(
	select
		*
	from
		product
	join product_category_tree pct on
		product.category_tree_uuid = pct.uuid) as products
on
	pps2.ean = products.ean
join 
(
	select
		ean,
		max (max) - min (min) as price_difference
	from
		product_price_snapshot pps
	group by
		ean
	having
		max (max) - min (min) <= 200000
	order by
		price_difference desc ) as prices
on
	products.ean = prices.ean
where
	1 = 2
	or products.alias = 'timber-and-joinery-timber-boards' 
group by
	products.ean
order by
	min(price_difference) desc;









