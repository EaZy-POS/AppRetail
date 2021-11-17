TYPE=VIEW
query=select `db_retail`.`tbl_mutasi_stock`.`id` AS `id`,`db_retail`.`tbl_mutasi_stock`.`tran_date` AS `tran_date`,`db_retail`.`tbl_mutasi_stock`.`kode_item` AS `kode_item`,`db_retail`.`tbl_mutasi_stock`.`qty` AS `qty`,`db_retail`.`tbl_mutasi_stock`.`tipe_mutasi` AS `tipe_mutasi` from `db_retail`.`tbl_mutasi_stock` where (`db_retail`.`tbl_mutasi_stock`.`tipe_mutasi` = \'STOCK OUT\') order by `db_retail`.`tbl_mutasi_stock`.`tran_date`
md5=1c2f56b2126ed9822346d151f9ba5766
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2020-04-05 16:06:29
create-version=1
source=select `tbl_mutasi_stock`.`id` AS `id`,`tbl_mutasi_stock`.`tran_date` AS `tran_date`,`tbl_mutasi_stock`.`kode_item` AS `kode_item`,`tbl_mutasi_stock`.`qty` AS `qty`,`tbl_mutasi_stock`.`tipe_mutasi` AS `tipe_mutasi` from `tbl_mutasi_stock` where (`tbl_mutasi_stock`.`tipe_mutasi` = \'STOCK OUT\') order by `tbl_mutasi_stock`.`tran_date`
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `db_retail`.`tbl_mutasi_stock`.`id` AS `id`,`db_retail`.`tbl_mutasi_stock`.`tran_date` AS `tran_date`,`db_retail`.`tbl_mutasi_stock`.`kode_item` AS `kode_item`,`db_retail`.`tbl_mutasi_stock`.`qty` AS `qty`,`db_retail`.`tbl_mutasi_stock`.`tipe_mutasi` AS `tipe_mutasi` from `db_retail`.`tbl_mutasi_stock` where (`db_retail`.`tbl_mutasi_stock`.`tipe_mutasi` = \'STOCK OUT\') order by `db_retail`.`tbl_mutasi_stock`.`tran_date`
