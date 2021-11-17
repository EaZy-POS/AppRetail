TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `updatedetailstockopname` AFTER UPDATE ON `tbl_stock_opname` FOR EACH ROW BEGIN\nIF(new.flag>0) THEN\n	UPDATE tbl_stock_opname_detail SET flag=new.flag WHERE trans_id=old.trans_id AND opname>0 AND flag!=3;\n	DELETE FROM tbl_stock_opname_detail WHERE flag=0;\nEND IF;\nEND'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
