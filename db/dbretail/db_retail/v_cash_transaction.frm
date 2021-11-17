TYPE=VIEW
query=select `a`.`id` AS `id`,`a`.`tran_date` AS `tran_date`,`a`.`type` AS `type`,`a`.`total` AS `total`,`a`.`ket` AS `ket`,`b`.`nama_karyawan` AS `input_by` from (`db_retail`.`tbl_cash_transaction` `a` join `db_retail`.`tbl_karyawan` `b` on((`b`.`kode_karyawan` = `a`.`input_by`)))
md5=678b3c5584443e2f141db23ca7910927
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2020-03-25 14:22:04
create-version=1
source=SELECT a.id,a.tran_date,a.type,a.total,a.ket as ket,b.nama_karyawan as input_by \nFROM `tbl_cash_transaction` a \nINNER JOIN tbl_karyawan b ON b.kode_karyawan =a.input_by
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `a`.`id` AS `id`,`a`.`tran_date` AS `tran_date`,`a`.`type` AS `type`,`a`.`total` AS `total`,`a`.`ket` AS `ket`,`b`.`nama_karyawan` AS `input_by` from (`db_retail`.`tbl_cash_transaction` `a` join `db_retail`.`tbl_karyawan` `b` on((`b`.`kode_karyawan` = `a`.`input_by`)))
