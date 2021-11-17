TYPE=VIEW
query=select `a`.`kode_trans` AS `kode_trans`,`a`.`tran_date` AS `tran_date`,`a`.`faktur` AS `faktur`,`a`.`id_supplier` AS `id_supplier`,`b`.`nama` AS `nama`,`a`.`total` AS `total`,`a`.`flag` AS `flag`,`a`.`id` AS `id`,`a`.`terbayar` AS `terbayar`,`a`.`sisa` AS `sisa` from (`db_retail`.`tbl_hutang` `a` join `db_retail`.`tbl_supplier` `b` on((`b`.`id` = `a`.`id_supplier`)))
md5=39a729aed158ab4c826cfd8dcdda49d9
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2020-04-19 14:37:11
create-version=1
source=SELECT\na.kode_trans AS kode_trans,\na.tran_date AS tran_date,\na.faktur AS faktur,\na.id_supplier AS id_supplier,\nb.nama AS nama,\na.total AS total,\na.flag AS flag,\na.id AS id,\na.terbayar AS terbayar,\na.sisa AS sisa\nFROM\n(tbl_hutang AS a\nJOIN tbl_supplier AS b ON ((b.id = a.id_supplier)))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `a`.`kode_trans` AS `kode_trans`,`a`.`tran_date` AS `tran_date`,`a`.`faktur` AS `faktur`,`a`.`id_supplier` AS `id_supplier`,`b`.`nama` AS `nama`,`a`.`total` AS `total`,`a`.`flag` AS `flag`,`a`.`id` AS `id`,`a`.`terbayar` AS `terbayar`,`a`.`sisa` AS `sisa` from (`db_retail`.`tbl_hutang` `a` join `db_retail`.`tbl_supplier` `b` on((`b`.`id` = `a`.`id_supplier`)))
