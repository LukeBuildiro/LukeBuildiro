-- average category increase

SELECT max(avg) / min(avg) ratio, alias
FROM (SELECT avg(avg) avg, category_tree_uuid, date_trunc('MONTH', product.updated_at) date
FROM product_price_snapshot
               JOIN product ON product_price_snapshot.product_uuid = product.uuid
      GROUP BY category_tree_uuid, date_trunc('MONTH', product.updated_at)) l -- primerna cena v kategoriach, za mesiac
         join product_category_tree ON category_tree_uuid = product_category_tree.uuid
GROUP BY alias
ORDER BY ratio DESC
LIMIT 100;


