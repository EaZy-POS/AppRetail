TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `insertbayarhutang` AFTER INSERT ON `tbl_bayar_hutang` FOR EACH ROW BEGIN\nUPDATE tbl_hutang SET terbayar=terbayar+new.total, sisa=sisa-new.total WHERE id=new.id_hutang;\nEND'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
