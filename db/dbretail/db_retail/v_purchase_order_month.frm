TYPE=VIEW
query=select `db_retail`.`tbl_purchase_order`.`tran_date` AS `tran_date`,dayofmonth(`db_retail`.`tbl_purchase_order`.`tran_date`) AS `tgl`,sum(`db_retail`.`tbl_purchase_order`.`total`) AS `total` from `db_retail`.`tbl_purchase_order` where (`db_retail`.`tbl_purchase_order`.`flag` = 1) group by `db_retail`.`tbl_purchase_order`.`tran_date`
md5=4e9c10a796aded4831bd456f252dd0e1
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2020-03-22 15:47:42
create-version=1
source=SELECT tran_date, DAY(tran_date) as tgl, SUM(total) as total FROM tbl_purchase_order WHERE flag=1 GROUP BY tran_date
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `db_retail`.`tbl_purchase_order`.`tran_date` AS `tran_date`,dayofmonth(`db_retail`.`tbl_purchase_order`.`tran_date`) AS `tgl`,sum(`db_retail`.`tbl_purchase_order`.`total`) AS `total` from `db_retail`.`tbl_purchase_order` where (`db_retail`.`tbl_purchase_order`.`flag` = 1) group by `db_retail`.`tbl_purchase_order`.`tran_date`
