TYPE=VIEW
query=select `db_retail`.`tbl_purchase_order`.`tran_date` AS `tran_date`,month(`db_retail`.`tbl_purchase_order`.`tran_date`) AS `bln`,sum(`db_retail`.`tbl_purchase_order`.`total`) AS `total` from `db_retail`.`tbl_purchase_order` where (`db_retail`.`tbl_purchase_order`.`flag` = 1) group by month(`db_retail`.`tbl_purchase_order`.`tran_date`),year(`db_retail`.`tbl_purchase_order`.`tran_date`)
md5=fd94b2d815811a97b6d8cc58d1837947
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2020-03-22 15:33:27
create-version=1
source=select `tbl_purchase_order`.`tran_date` AS `tran_date`,month(`tbl_purchase_order`.`tran_date`) AS `bln`,sum(`tbl_purchase_order`.`total`) AS `total` from `tbl_purchase_order` where flag=1 group by month(`tbl_purchase_order`.`tran_date`),year(`tbl_purchase_order`.`tran_date`)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `db_retail`.`tbl_purchase_order`.`tran_date` AS `tran_date`,month(`db_retail`.`tbl_purchase_order`.`tran_date`) AS `bln`,sum(`db_retail`.`tbl_purchase_order`.`total`) AS `total` from `db_retail`.`tbl_purchase_order` where (`db_retail`.`tbl_purchase_order`.`flag` = 1) group by month(`db_retail`.`tbl_purchase_order`.`tran_date`),year(`db_retail`.`tbl_purchase_order`.`tran_date`)
