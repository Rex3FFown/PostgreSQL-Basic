CREATE TRIGGER ma_testtriger
AFTER INSERT
ON ma_trigger_deneme
FOR EACH ROW
EXECUTE PROCEDURE ma_test();
