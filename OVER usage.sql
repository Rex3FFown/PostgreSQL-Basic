SELECT SUM(ma_order_items.price * ma_order_items.count) OVER (PARTITION BY ma_orders.id) AS toplam_fiyat
FROM ma_order_items
         INNER JOIN ma_orders on ma_order_items.order_id = ma_orders.id;
