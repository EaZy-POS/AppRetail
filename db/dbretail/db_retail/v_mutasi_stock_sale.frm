TYPE=VIEW
query=select `db_retail`.`tbl_mutasi_stock`.`id` AS `id`,`db_retail`.`tbl_mutasi_stock`.`tran_date` AS `tran_date`,`db_retail`.`tbl_mutasi_stock`.`kode_item` AS `kode_item`,`db_retail`.`tbl_mutasi_stock`.`qty` AS `qty`,`db_retail`.`tbl_mutasi_stock`.`tipe_mutasi` AS `tipe_mutasi` from `db_retail`.`tbl_mutasi_stock` where (`db_retail`.`tbl_mutasi_stock`.`tipe_mutasi` = \'SALE\') order by `db_retail`.`tbl_mutasi_stock`.`tran_date`
md5=c32420aba788f561d26acb6947ca30f1
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2020-03-29 14:41:27
create-version=1
source=SELECT\ntbl_mutasi_stock.id AS id,\ntbl_mutasi_stock.tran_date AS tran_date,\ntbl_mutasi_stock.kode_item AS kode_item,\ntbl_mutasi_stock.qty AS qty,\ntbl_mutasi_stock.tipe_mutasi\nFROM\ntbl_mutasi_stock\nWHERE\n(tbl_mutasi_stock.tipe_mutasi = \'SALE\')\nORDER BY\ntran_date ASC
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `db_retail`.`tbl_mutasi_stock`.`id` AS `id`,`db_retail`.`tbl_mutasi_stock`.`tran_date` AS `tran_date`,`db_retail`.`tbl_mutasi_stock`.`kode_item` AS `kode_item`,`db_retail`.`tbl_mutasi_stock`.`qty` AS `qty`,`db_retail`.`tbl_mutasi_stock`.`tipe_mutasi` AS `tipe_mutasi` from `db_retail`.`tbl_mutasi_stock` where (`db_retail`.`tbl_mutasi_stock`.`tipe_mutasi` = \'SALE\') order by `db_retail`.`tbl_mutasi_stock`.`tran_date`
