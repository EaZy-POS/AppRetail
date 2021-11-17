TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `afterinsertstockout` AFTER INSERT ON `tbl_stock_out_detail` FOR EACH ROW BEGIN\nDECLARE count integer;\n\nSET @count:=(SELECT COUNT(kode_item) FROM tbl_item_stock WHERE kode_item=new.kode_item);\nIF(@count=0) THEN\n	INSERT INTO tbl_item_stock VALUES (new.kode_item,0);\nEND IF;\nUPDATE tbl_item_stock set stock=stock-new.qty WHERE kode_item=new.kode_item;\n\nSET @count:=(SELECT COUNT(kode_item) FROM tbl_mutasi_stock WHERE kode_item=new.kode_item AND tipe_mutasi=\'STOCK OUT\' AND tran_date=CURDATE());\n		IF(@count=0) THEN\n			INSERT INTO tbl_mutasi_stock VALUES (UUID(),CURDATE(),new.kode_item,\'STOCK OUT\',new.qty);\n		ELSE\n			UPDATE tbl_mutasi_stock SET qty=qty+new.qty WHERE tran_date=CURDATE() AND kode_item=new.kode_item AND tipe_mutasi=\'STOCK OUT\'; \n		END IF;\nEND'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
