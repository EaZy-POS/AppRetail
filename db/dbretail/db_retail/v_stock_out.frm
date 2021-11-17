TYPE=VIEW
query=select `a`.`id_trans` AS `id_trans`,`a`.`c_dt` AS `tran_dt`,`b`.`nama_karyawan` AS `input_by`,`a`.`ttl_item` AS `ttl_item`,`a`.`ttl_qty` AS `ttl_qty`,`a`.`ket` AS `ket` from (`db_retail`.`tbl_stock_out` `a` join `db_retail`.`tbl_karyawan` `b` on((`a`.`input_by` = `b`.`kode_karyawan`)))
md5=e05753fc755ceb5c6686a468ecaa8a48
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2020-04-07 05:09:30
create-version=1
source=select `a`.`id_trans` AS `id_trans`,`a`.`c_dt` AS `tran_dt`,`b`.`nama_karyawan` AS `input_by`,`a`.`ttl_item` AS `ttl_item`,`a`.`ttl_qty` AS `ttl_qty`,`a`.`ket` AS `ket` from (`tbl_stock_out` `a` join `tbl_karyawan` `b` on((`a`.`input_by` = `b`.`kode_karyawan`)))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `a`.`id_trans` AS `id_trans`,`a`.`c_dt` AS `tran_dt`,`b`.`nama_karyawan` AS `input_by`,`a`.`ttl_item` AS `ttl_item`,`a`.`ttl_qty` AS `ttl_qty`,`a`.`ket` AS `ket` from (`db_retail`.`tbl_stock_out` `a` join `db_retail`.`tbl_karyawan` `b` on((`a`.`input_by` = `b`.`kode_karyawan`)))
