TYPE=VIEW
query=select `db_retail`.`tbl_sale_detail`.`kode_item` AS `kode`,`db_retail`.`tbl_item`.`item_name` AS `nama`,sum(`db_retail`.`tbl_sale_detail`.`qty`) AS `total` from ((`db_retail`.`tbl_sale_detail` join `db_retail`.`tbl_item` on((`db_retail`.`tbl_item`.`item_code` = `db_retail`.`tbl_sale_detail`.`kode_item`))) join `db_retail`.`tbl_sale` on((`db_retail`.`tbl_sale`.`kode_trans` = `db_retail`.`tbl_sale_detail`.`kode_trans`))) where ((month(`db_retail`.`tbl_sale`.`tran_date`) = month(curdate())) and (year(`db_retail`.`tbl_sale`.`tran_date`) = year(curdate()))) group by `db_retail`.`tbl_sale_detail`.`kode_item` order by sum(`db_retail`.`tbl_sale_detail`.`qty`) desc limit 10
md5=a30c3798bd49db0bc3ccd1f6f2716762
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2020-03-22 13:55:26
create-version=1
source=select `tbl_sale_detail`.`kode_item` AS `kode`,`tbl_item`.`item_name` AS `nama`,sum(`tbl_sale_detail`.`qty`) AS `total` from ((`tbl_sale_detail` join `tbl_item` on((`tbl_item`.`item_code` = `tbl_sale_detail`.`kode_item`))) join `tbl_sale` on((`tbl_sale`.`kode_trans` = `tbl_sale_detail`.`kode_trans`))) where ((month(`tbl_sale`.`tran_date`) = month(curdate())) and (year(`tbl_sale`.`tran_date`) = year(curdate()))) group by `tbl_sale_detail`.`kode_item` order by sum(`tbl_sale_detail`.`qty`) desc limit 10
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `db_retail`.`tbl_sale_detail`.`kode_item` AS `kode`,`db_retail`.`tbl_item`.`item_name` AS `nama`,sum(`db_retail`.`tbl_sale_detail`.`qty`) AS `total` from ((`db_retail`.`tbl_sale_detail` join `db_retail`.`tbl_item` on((`db_retail`.`tbl_item`.`item_code` = `db_retail`.`tbl_sale_detail`.`kode_item`))) join `db_retail`.`tbl_sale` on((`db_retail`.`tbl_sale`.`kode_trans` = `db_retail`.`tbl_sale_detail`.`kode_trans`))) where ((month(`db_retail`.`tbl_sale`.`tran_date`) = month(curdate())) and (year(`db_retail`.`tbl_sale`.`tran_date`) = year(curdate()))) group by `db_retail`.`tbl_sale_detail`.`kode_item` order by sum(`db_retail`.`tbl_sale_detail`.`qty`) desc limit 10
