TYPE=VIEW
query=select `a`.`id` AS `id`,`a`.`faktur` AS `faktur`,`a`.`tran_date` AS `tran_date`,`a`.`id_pelanggan` AS `id_pelanggan`,`c`.`nama_pelanggan` AS `pelanggan`,`a`.`total` AS `total`,`a`.`flag` AS `flag` from ((`db_retail`.`tbl_piutang` `a` join `db_retail`.`tbl_sale` `b` on((`b`.`kode_trans` = `a`.`faktur`))) join `db_retail`.`tbl_pelanggan` `c` on((`c`.`id_pelanggan` = `a`.`id_pelanggan`)))
md5=ed91284601c656527697a4d6a56232c9
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2020-03-24 16:04:13
create-version=1
source=SELECT a.id,a.faktur,a.tran_date,a.id_pelanggan,c.nama_pelanggan as pelanggan,a.total,a.flag \nFROM tbl_piutang a \nINNER JOIN tbl_sale b ON b.kode_trans=a.faktur\nINNER JOIN tbl_pelanggan c ON c.id_pelanggan=a.id_pelanggan
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `a`.`id` AS `id`,`a`.`faktur` AS `faktur`,`a`.`tran_date` AS `tran_date`,`a`.`id_pelanggan` AS `id_pelanggan`,`c`.`nama_pelanggan` AS `pelanggan`,`a`.`total` AS `total`,`a`.`flag` AS `flag` from ((`db_retail`.`tbl_piutang` `a` join `db_retail`.`tbl_sale` `b` on((`b`.`kode_trans` = `a`.`faktur`))) join `db_retail`.`tbl_pelanggan` `c` on((`c`.`id_pelanggan` = `a`.`id_pelanggan`)))
