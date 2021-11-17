TYPE=VIEW
query=select `db_retail`.`tbl_purchase`.`tran_date` AS `tran_date`,dayofmonth(`db_retail`.`tbl_purchase`.`tran_date`) AS `tgl`,sum(`db_retail`.`tbl_purchase`.`total`) AS `total` from `db_retail`.`tbl_purchase` where (`db_retail`.`tbl_purchase`.`flag` = 1) group by `db_retail`.`tbl_purchase`.`tran_date`
md5=9cea83b09ee166c260d9c98d10a6c34a
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2020-03-22 15:48:37
create-version=1
source=SELECT tran_date, DAY(tran_date) as tgl, SUM(total) as total FROM tbl_purchase WHERE flag=1 GROUP BY tran_date
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `db_retail`.`tbl_purchase`.`tran_date` AS `tran_date`,dayofmonth(`db_retail`.`tbl_purchase`.`tran_date`) AS `tgl`,sum(`db_retail`.`tbl_purchase`.`total`) AS `total` from `db_retail`.`tbl_purchase` where (`db_retail`.`tbl_purchase`.`flag` = 1) group by `db_retail`.`tbl_purchase`.`tran_date`
