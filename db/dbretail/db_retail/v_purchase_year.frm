TYPE=VIEW
query=select `db_retail`.`tbl_purchase`.`tran_date` AS `tran_date`,month(`db_retail`.`tbl_purchase`.`tran_date`) AS `bln`,sum(`db_retail`.`tbl_purchase`.`total`) AS `total` from `db_retail`.`tbl_purchase` where (`db_retail`.`tbl_purchase`.`flag` = 1) group by month(`db_retail`.`tbl_purchase`.`tran_date`),year(`db_retail`.`tbl_purchase`.`tran_date`)
md5=a4a4d5198e72d3ea174cf0387b5a7b39
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2020-03-22 15:28:03
create-version=1
source=select `tbl_purchase`.`tran_date` AS `tran_date`,month(`tbl_purchase`.`tran_date`) AS `bln`,sum(`tbl_purchase`.`total`) AS `total` from `tbl_purchase` WHERE flag=1 group by month(`tbl_purchase`.`tran_date`),year(`tbl_purchase`.`tran_date`)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `db_retail`.`tbl_purchase`.`tran_date` AS `tran_date`,month(`db_retail`.`tbl_purchase`.`tran_date`) AS `bln`,sum(`db_retail`.`tbl_purchase`.`total`) AS `total` from `db_retail`.`tbl_purchase` where (`db_retail`.`tbl_purchase`.`flag` = 1) group by month(`db_retail`.`tbl_purchase`.`tran_date`),year(`db_retail`.`tbl_purchase`.`tran_date`)
