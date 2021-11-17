TYPE=VIEW
query=select `db_retail`.`tbl_mutasi_stock`.`id` AS `id`,`db_retail`.`tbl_mutasi_stock`.`tran_date` AS `tran_date`,`db_retail`.`tbl_mutasi_stock`.`kode_item` AS `kode_item`,`db_retail`.`tbl_mutasi_stock`.`qty` AS `qty`,`db_retail`.`tbl_mutasi_stock`.`tipe_mutasi` AS `tipe_mutasi` from `db_retail`.`tbl_mutasi_stock` where (`db_retail`.`tbl_mutasi_stock`.`tipe_mutasi` = \'PURCHASE\') order by `db_retail`.`tbl_mutasi_stock`.`tran_date`
md5=2486d375c995462c8322ce8021d07d46
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2020-03-29 14:38:46
create-version=1
source=SELECT id,tran_date,kode_item,qty,tipe_mutasi FROM tbl_mutasi_stock WHERE tipe_mutasi=\'PURCHASE\' ORDER BY tran_date ASC
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `db_retail`.`tbl_mutasi_stock`.`id` AS `id`,`db_retail`.`tbl_mutasi_stock`.`tran_date` AS `tran_date`,`db_retail`.`tbl_mutasi_stock`.`kode_item` AS `kode_item`,`db_retail`.`tbl_mutasi_stock`.`qty` AS `qty`,`db_retail`.`tbl_mutasi_stock`.`tipe_mutasi` AS `tipe_mutasi` from `db_retail`.`tbl_mutasi_stock` where (`db_retail`.`tbl_mutasi_stock`.`tipe_mutasi` = \'PURCHASE\') order by `db_retail`.`tbl_mutasi_stock`.`tran_date`
