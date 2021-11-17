TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `updatehutangpo` AFTER UPDATE ON `tbl_purchase_order` FOR EACH ROW BEGIN\nUPDATE tbl_hutang SET faktur=new.faktur WHERE kode_trans=old.ponumber;\nEND'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
