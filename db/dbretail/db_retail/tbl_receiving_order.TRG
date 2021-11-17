TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `inserthutangpo` AFTER INSERT ON `tbl_receiving_order` FOR EACH ROW BEGIN\nIF new.type_bayar=\'HUTANG\' THEN\nINSERT INTO tbl_hutang (id,kode_trans,faktur,id_supplier,total,c_dt,sid,tran_date,sisa) \nSELECT UUID(),ponumber,faktur,id_supplier,total,new.c_dt,sid,new.tran_date,total FROM tbl_purchase_order WHERE ponumber=new.ponumber;\nEND IF;\nEND'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
