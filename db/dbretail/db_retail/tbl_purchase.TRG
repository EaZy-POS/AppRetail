TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `inserthutangpurchase` AFTER INSERT ON `tbl_purchase` FOR EACH ROW BEGIN\nIF new.type_bayar=\'HUTANG\' THEN\nINSERT INTO tbl_hutang (id,kode_trans,faktur,id_supplier,total,c_dt,sid,tran_date,sisa) VALUES\n(UUID(),new.refnum,new.faktur,new.id_supplier,new.total,new.c_dt,new.sid,new.tran_date,new.total);\nEND IF;\nEND'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
