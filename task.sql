USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN warehouse_id INT
)
BEGIN
    SELECT p.Name AS ProductName, pi.WarehouseAmount AS Amount
    FROM Warehouses w
    LEFT JOIN ProductInventory pi ON w.ID = pi.WarehouseID
    LEFT JOIN Products p ON pi.ProductID = p.ID
    WHERE w.ID = warehouse_id;
END //
DELIMITER ;
