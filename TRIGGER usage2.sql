CREATE OR REPLACE FUNCTION ma_update_total_price_on_ma_orders()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE ma_orders
    SET total_price = (
        SELECT SUM(price * count)
        FROM ma_order_items
        WHERE order_id = NEW.order_id
    )
    WHERE id = NEW.order_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_total_price_trigger
AFTER INSERT OR UPDATE OR DELETE ON ma_order_items
FOR EACH ROW
EXECUTE FUNCTION ma_update_total_price_on_ma_orders();
