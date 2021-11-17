TYPE=VIEW
query=select `a`.`kode_item` AS `kode_item`,`b`.`sku` AS `sku`,`b`.`barcode` AS `barcode`,`b`.`item_name` AS `nama_item`,`c`.`descrip` AS `sat`,`b`.`sale_price` AS `harga`,`b`.`id_supplier` AS `id_supplier`,`d`.`nama` AS `supplier`,`b`.`id_kategori` AS `id_kategori`,`e`.`kategori` AS `kategori`,`f`.`sub_kategori` AS `sub_kategori`,`f`.`id` AS `id_sub_kategori`,`a`.`stock` AS `stock` from (((((`db_retail`.`tbl_item` `b` left join `db_retail`.`tbl_item_stock` `a` on((`b`.`item_code` = `a`.`kode_item`))) join `db_retail`.`tbl_satuan` `c` on((`c`.`id` = `b`.`sat`))) join `db_retail`.`tbl_supplier` `d` on((`d`.`id` = `b`.`id_supplier`))) join `db_retail`.`tbl_kategori` `e` on((`e`.`id` = `b`.`id_kategori`))) join `db_retail`.`tbl_sub_kategori` `f` on(((`f`.`id_kategori` = `e`.`id`) and (`b`.`id_sub_kategori` = `f`.`id`))))
md5=97fdf315ad5441c4c6d63bd3cb4f0994
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2020-04-23 09:10:40
create-version=1
source=SELECT\na.kode_item AS kode_item,\nb.sku AS sku,\nb.barcode AS barcode,\nb.item_name AS nama_item,\nc.descrip AS sat,\nb.sale_price AS harga,\nb.id_supplier AS id_supplier,\nd.nama AS supplier,\nb.id_kategori AS id_kategori,\ne.kategori AS kategori,\nf.sub_kategori AS sub_kategori,\nf.id AS id_sub_kategori,\na.stock AS stock\nFROM\n((((tbl_item AS b\nLEFT JOIN tbl_item_stock AS a ON ((b.item_code = a.kode_item)))\nJOIN tbl_satuan AS c ON ((c.id = b.sat)))\nJOIN tbl_supplier AS d ON ((d.id = b.id_supplier)))\nJOIN tbl_kategori AS e ON ((e.id = b.id_kategori)))\nINNER JOIN tbl_sub_kategori AS f ON f.id_kategori = e.id AND b.id_sub_kategori = f.id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `a`.`kode_item` AS `kode_item`,`b`.`sku` AS `sku`,`b`.`barcode` AS `barcode`,`b`.`item_name` AS `nama_item`,`c`.`descrip` AS `sat`,`b`.`sale_price` AS `harga`,`b`.`id_supplier` AS `id_supplier`,`d`.`nama` AS `supplier`,`b`.`id_kategori` AS `id_kategori`,`e`.`kategori` AS `kategori`,`f`.`sub_kategori` AS `sub_kategori`,`f`.`id` AS `id_sub_kategori`,`a`.`stock` AS `stock` from (((((`db_retail`.`tbl_item` `b` left join `db_retail`.`tbl_item_stock` `a` on((`b`.`item_code` = `a`.`kode_item`))) join `db_retail`.`tbl_satuan` `c` on((`c`.`id` = `b`.`sat`))) join `db_retail`.`tbl_supplier` `d` on((`d`.`id` = `b`.`id_supplier`))) join `db_retail`.`tbl_kategori` `e` on((`e`.`id` = `b`.`id_kategori`))) join `db_retail`.`tbl_sub_kategori` `f` on(((`f`.`id_kategori` = `e`.`id`) and (`b`.`id_sub_kategori` = `f`.`id`))))
