USE ShopDB; 

DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN warehouse_id INT
)
BEGIN
    SELECT p.Name AS ProductName, pi.WarehouseAmount AS Amount
    FROM ProductInventory pi
    LEFT JOIN Products p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = warehouse_id;
END //
DELIMITER ;
