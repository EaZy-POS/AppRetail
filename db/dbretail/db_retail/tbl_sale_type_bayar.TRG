TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `insertpiutangsale` AFTER INSERT ON `tbl_sale_type_bayar` FOR EACH ROW BEGIN\nIF new.type=\'PIUTANG\' THEN\n	INSERT INTO tbl_piutang (id,faktur,tran_date,id_pelanggan,total,c_dt) \n	SELECT UUID(),kode_trans,tran_date,id_pelanggan,new.total,c_dt FROM tbl_sale WHERE kode_trans=new.kode_trans;\nEND IF;	\nEND'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
