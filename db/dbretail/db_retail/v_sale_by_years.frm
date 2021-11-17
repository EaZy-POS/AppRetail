TYPE=VIEW
query=select `db_retail`.`tbl_sale`.`tran_date` AS `tran_date`,month(`db_retail`.`tbl_sale`.`tran_date`) AS `bln`,sum(`db_retail`.`tbl_sale`.`grand_total`) AS `total` from `db_retail`.`tbl_sale` group by year(`db_retail`.`tbl_sale`.`tran_date`),month(`db_retail`.`tbl_sale`.`tran_date`)
md5=0786bd1db82b68d746aa64c92e4a968a
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2020-03-22 12:42:06
create-version=1
source=SELECT\ntbl_sale.tran_date AS tran_date,\nmonth(`tbl_sale`.`tran_date`) AS bln,\nSum(tbl_sale.grand_total) AS total\nFROM\ntbl_sale\nGROUP BY\nyear(`tbl_sale`.`tran_date`),\nmonth(`tbl_sale`.`tran_date`)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `db_retail`.`tbl_sale`.`tran_date` AS `tran_date`,month(`db_retail`.`tbl_sale`.`tran_date`) AS `bln`,sum(`db_retail`.`tbl_sale`.`grand_total`) AS `total` from `db_retail`.`tbl_sale` group by year(`db_retail`.`tbl_sale`.`tran_date`),month(`db_retail`.`tbl_sale`.`tran_date`)
