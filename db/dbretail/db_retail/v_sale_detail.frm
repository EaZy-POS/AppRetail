TYPE=VIEW
query=select `a`.`kode_item` AS `KODE`,`c`.`item_name` AS `NAMA`,`a`.`qty` AS `QTY`,`a`.`harga` AS `HARGA`,`a`.`total` AS `TOTAL`,`b`.`descrip` AS `SAT`,`a`.`disc` AS `DISC`,`a`.`kode_trans` AS `KODETRANS` from ((`db_retail`.`tbl_sale_detail` `a` join `db_retail`.`tbl_item` `c` on((`c`.`item_code` = `a`.`kode_item`))) join `db_retail`.`tbl_satuan` `b` on((`c`.`sat` = `b`.`id`)))
md5=2e2e29a9c59b09b3187ff5cb7ce2cb4f
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2020-04-21 15:18:13
create-version=1
source=SELECT
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `a`.`kode_item` AS `KODE`,`c`.`item_name` AS `NAMA`,`a`.`qty` AS `QTY`,`a`.`harga` AS `HARGA`,`a`.`total` AS `TOTAL`,`b`.`descrip` AS `SAT`,`a`.`disc` AS `DISC`,`a`.`kode_trans` AS `KODETRANS` from ((`db_retail`.`tbl_sale_detail` `a` join `db_retail`.`tbl_item` `c` on((`c`.`item_code` = `a`.`kode_item`))) join `db_retail`.`tbl_satuan` `b` on((`c`.`sat` = `b`.`id`)))