TYPE=VIEW
query=select `a`.`tran_date` AS `TANGGAL`,`a`.`kode_item` AS `KODE_ITEM`,`e`.`sku` AS `SKU`,`e`.`barcode` AS `BARCODE`,`e`.`item_name` AS `NAMA_ITEM`,`f`.`descrip` AS `SAT`,`g`.`id` AS `ID_KATEGORI`,`g`.`kategori` AS `KATEGORI`,`h`.`id` AS `ID_SUPPLIER`,`h`.`nama` AS `SUPPLIER`,`a`.`qty` AS `STOCK_AWAL`,`c`.`qty` AS `PEMBELIAN`,`d`.`qty` AS `PENJUALAN`,`i`.`qty` AS `STOCK_OUT`,`j`.`qty` AS `STOCK_OPNAME`,`b`.`qty` AS `STOCK_AKHIR` from (((((((((`db_retail`.`v_mutasi_stock_awal` `a` join `db_retail`.`v_mutasi_stock_akhir` `b` on(((`b`.`kode_item` = `a`.`kode_item`) and (`b`.`tran_date` = `a`.`tran_date`)))) join `db_retail`.`v_mutasi_stock_purchase` `c` on(((`c`.`kode_item` = `a`.`kode_item`) and (`c`.`tran_date` = `a`.`tran_date`)))) join `db_retail`.`v_mutasi_stock_sale` `d` on(((`d`.`kode_item` = `a`.`kode_item`) and (`d`.`tran_date` = `a`.`tran_date`)))) join `db_retail`.`tbl_item` `e` on((`e`.`item_code` = `a`.`kode_item`))) join `db_retail`.`tbl_satuan` `f` on((`f`.`id` = `e`.`sat`))) join `db_retail`.`tbl_kategori` `g` on((`g`.`id` = `e`.`id_kategori`))) join `db_retail`.`tbl_supplier` `h` on((`h`.`id` = `e`.`id_supplier`))) join `db_retail`.`v_mutasi_stock_out` `i` on(((`i`.`tran_date` = `a`.`tran_date`) and (`i`.`kode_item` = `a`.`kode_item`)))) join `db_retail`.`v_mutasi_stock_opname` `j` on(((`j`.`tran_date` = `a`.`tran_date`) and (`j`.`kode_item` = `a`.`kode_item`)))) order by `a`.`tran_date`
md5=4ce2c0e19d0794ca4f97044901d3f2b5
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2020-04-06 06:32:48
create-version=1
source=SELECT
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `a`.`tran_date` AS `TANGGAL`,`a`.`kode_item` AS `KODE_ITEM`,`e`.`sku` AS `SKU`,`e`.`barcode` AS `BARCODE`,`e`.`item_name` AS `NAMA_ITEM`,`f`.`descrip` AS `SAT`,`g`.`id` AS `ID_KATEGORI`,`g`.`kategori` AS `KATEGORI`,`h`.`id` AS `ID_SUPPLIER`,`h`.`nama` AS `SUPPLIER`,`a`.`qty` AS `STOCK_AWAL`,`c`.`qty` AS `PEMBELIAN`,`d`.`qty` AS `PENJUALAN`,`i`.`qty` AS `STOCK_OUT`,`j`.`qty` AS `STOCK_OPNAME`,`b`.`qty` AS `STOCK_AKHIR` from (((((((((`db_retail`.`v_mutasi_stock_awal` `a` join `db_retail`.`v_mutasi_stock_akhir` `b` on(((`b`.`kode_item` = `a`.`kode_item`) and (`b`.`tran_date` = `a`.`tran_date`)))) join `db_retail`.`v_mutasi_stock_purchase` `c` on(((`c`.`kode_item` = `a`.`kode_item`) and (`c`.`tran_date` = `a`.`tran_date`)))) join `db_retail`.`v_mutasi_stock_sale` `d` on(((`d`.`kode_item` = `a`.`kode_item`) and (`d`.`tran_date` = `a`.`tran_date`)))) join `db_retail`.`tbl_item` `e` on((`e`.`item_code` = `a`.`kode_item`))) join `db_retail`.`tbl_satuan` `f` on((`f`.`id` = `e`.`sat`))) join `db_retail`.`tbl_kategori` `g` on((`g`.`id` = `e`.`id_kategori`))) join `db_retail`.`tbl_supplier` `h` on((`h`.`id` = `e`.`id_supplier`))) join `db_retail`.`v_mutasi_stock_out` `i` on(((`i`.`tran_date` = `a`.`tran_date`) and (`i`.`kode_item` = `a`.`kode_item`)))) join `db_retail`.`v_mutasi_stock_opname` `j` on(((`j`.`tran_date` = `a`.`tran_date`) and (`j`.`kode_item` = `a`.`kode_item`)))) order by `a`.`tran_date`