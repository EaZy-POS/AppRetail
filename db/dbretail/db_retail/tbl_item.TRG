TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `insertitemstock` AFTER INSERT ON `tbl_item` FOR EACH ROW BEGIN\nINSERT INTO tbl_item_stock VALUES (new.item_code,0);\nEND'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
