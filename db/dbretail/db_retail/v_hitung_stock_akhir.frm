TYPE=VIEW
query=select `a`.`kode_item` AS `kode`,`a`.`tran_date` AS `tgl`,`a`.`qty` AS `awal`,`b`.`qty` AS `purchase`,`c`.`qty` AS `sale`,`d`.`qty` AS `out`,`e`.`qty` AS `opname` from ((((`db_retail`.`v_mutasi_stock_awal` `a` join `db_retail`.`v_mutasi_stock_purchase` `b` on(((`b`.`kode_item` = `a`.`kode_item`) and (`b`.`tran_date` = `a`.`tran_date`)))) join `db_retail`.`v_mutasi_stock_sale` `c` on(((`c`.`kode_item` = `a`.`kode_item`) and (`c`.`tran_date` = `a`.`tran_date`)))) join `db_retail`.`v_mutasi_stock_out` `d` on(((`d`.`kode_item` = `a`.`kode_item`) and (`d`.`tran_date` = `a`.`tran_date`)))) join `db_retail`.`v_mutasi_stock_opname` `e` on(((`e`.`kode_item` = `a`.`kode_item`) and (`e`.`tran_date` = `a`.`tran_date`))))
md5=9ac0a154d090f96772ee0b474e8e23fa
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2020-04-20 13:41:23
create-version=1
source=SELECT\na.kode_item AS kode,\na.tran_date AS tgl,\na.qty AS awal,\nb.qty AS purchase,\nc.qty AS sale,\nd.qty AS `out`,\ne.qty AS opname\nFROM\n((((v_mutasi_stock_awal AS a\nJOIN v_mutasi_stock_purchase AS b ON (((b.kode_item = a.kode_item) AND (b.tran_date = a.tran_date))))\nJOIN v_mutasi_stock_sale AS c ON (((c.kode_item = a.kode_item) AND (c.tran_date = a.tran_date))))\nJOIN v_mutasi_stock_out AS d ON (((d.kode_item = a.kode_item) AND (d.tran_date = a.tran_date))))\nJOIN v_mutasi_stock_opname AS e ON (((e.kode_item = a.kode_item) AND (e.tran_date = a.tran_date))))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `a`.`kode_item` AS `kode`,`a`.`tran_date` AS `tgl`,`a`.`qty` AS `awal`,`b`.`qty` AS `purchase`,`c`.`qty` AS `sale`,`d`.`qty` AS `out`,`e`.`qty` AS `opname` from ((((`db_retail`.`v_mutasi_stock_awal` `a` join `db_retail`.`v_mutasi_stock_purchase` `b` on(((`b`.`kode_item` = `a`.`kode_item`) and (`b`.`tran_date` = `a`.`tran_date`)))) join `db_retail`.`v_mutasi_stock_sale` `c` on(((`c`.`kode_item` = `a`.`kode_item`) and (`c`.`tran_date` = `a`.`tran_date`)))) join `db_retail`.`v_mutasi_stock_out` `d` on(((`d`.`kode_item` = `a`.`kode_item`) and (`d`.`tran_date` = `a`.`tran_date`)))) join `db_retail`.`v_mutasi_stock_opname` `e` on(((`e`.`kode_item` = `a`.`kode_item`) and (`e`.`tran_date` = `a`.`tran_date`))))
