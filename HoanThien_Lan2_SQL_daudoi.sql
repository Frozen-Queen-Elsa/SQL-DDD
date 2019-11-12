USE db_DDD
GO

SELECT* from tbGiaoVien
go

-- Tạo bảng Điểm Thi
CREATE	TABLE tbDiem
(
	thi_id VARCHAR(10) NOT NULL ,
	sv_id VARCHAR(10) NOT NULL,
	mh_id VARCHAR(5) NOT NULL,
	diem INT,
	primary key (thi_id),
    foreign key (sv_id,mh_id) references dbo.SV_MH	
)
GO

-- Tạo danh sách Giáo Viên
CREATE TABLE tbGiaoVien
(
	gv_id VARCHAR(10) NOT NULL,
	gv_name NVARCHAR(30) NOT NULL,
	email VARCHAR(50)	
	PRIMARY KEY (gv_id)
)
GO	

-- Thêm dữ liệu Giáo Viên
INSERT dbo.tbGiaoVien
(
    gv_id,
    gv_name,
    email
)
VALUES
(   'gv0123',  -- gv_id - varchar(10)
    N'Mộng Thúy', -- gv_name - nvarchar(30)
    'mrsthuy@gmail.com'   -- email - varchar(50)
)
GO	


-- Thêm dữ liệu Giáo Viên 
INSERT	dbo.tbGiaoVien
(
    gv_id,
    gv_name,
    email
)
VALUES
(   'gv1000',  -- gv_id - varchar(10)
    N'Mỹ Tâm', -- gv_name - nvarchar(30)
    'mytam@gmail.com'   -- email - varchar(50)
),
(   'gv1001',  -- gv_id - varchar(10)
    N'Hồng Nhung', -- gv_name - nvarchar(30)
    'hongnhung@gmail.com'   -- email - varchar(50)
)
,
(   'gv1002',  -- gv_id - varchar(10)
    N'Đan Trường', -- gv_name - nvarchar(30)
    'dantruong@gmail.com'   -- email - varchar(50)
),
(   'gv1003',  -- gv_id - varchar(10)
    N'Hoài Linh', -- gv_name - nvarchar(30)
    'hoailinh@gmail.com'   -- email - varchar(50)
),
(   'gv1004',  -- gv_id - varchar(10)
    N'Hương Tràm', -- gv_name - nvarchar(30)
    'huongtram@gmail.com'   -- email - varchar(50)
),
(   'gv1005',  -- gv_id - varchar(10)
    N'Trường Giang', -- gv_name - nvarchar(30)
    'truonggiang@gmail.com'   -- email - varchar(50)
),
(   'gv1006',  -- gv_id - varchar(10)
    N'Cẩm Ly', -- gv_name - nvarchar(30)
    'camly@gmail.com'   -- email - varchar(50)
),
(   'gv1007',  -- gv_id - varchar(10)
    N'Hari Won', -- gv_name - nvarchar(30)
    'hariwon@gmail.com'   -- email - varchar(50)
),
(   'gv1008',  -- gv_id - varchar(10)
    N'Thủy Tiên', -- gv_name - nvarchar(30)
    'thuytien@gmail.com'   -- email - varchar(50)
),
(   'gv1009',  -- gv_id - varchar(10)
    N'Sơn Tùng', -- gv_name - nvarchar(30)
    'sontung@gmail.com'   -- email - varchar(50)
),
(   'gv1010',  -- gv_id - varchar(10)
    N'Phương Thanh', -- gv_name - nvarchar(30)
    'phuongthanh@gmail.com'   -- email - varchar(50)
),
(   'gv1011',  -- gv_id - varchar(10)
    N'Seohyun', -- gv_name - nvarchar(30)
    'seohyun@gmail.com'   -- email - varchar(50)
)
,
(   'gv1012',  -- gv_id - varchar(10)
    N'Taeyeon', -- gv_name - nvarchar(30)
    'taeyeon@gmail.com'   -- email - varchar(50)
),
(   'gv1013',  -- gv_id - varchar(10)
    N'Yoona', -- gv_name - nvarchar(30)
    'yoona@gmail.com'   -- email - varchar(50)
),
(   'gv1014',  -- gv_id - varchar(10)
    N'Tiffany', -- gv_name - nvarchar(30)
    'tiffany@gmail.com'   -- email - varchar(50)
),
(   'gv1015',  -- gv_id - varchar(10)
    N'Jessica', -- gv_name - nvarchar(30)
    'jessica@gmail.com'   -- email - varchar(50)
),
(   'gv1016',  -- gv_id - varchar(10)
    N'Sunny', -- gv_name - nvarchar(30)
    'sunny@gmail.com'   -- email - varchar(50)
),
(   'gv1017',  -- gv_id - varchar(10)
    N'Hyoyeon', -- gv_name - nvarchar(30)
    'hyoyeon@gmail.com'   -- email - varchar(50)
),
(   'gv1018',  -- gv_id - varchar(10)
    N'Yuri', -- gv_name - nvarchar(30)
    'yuri@gmail.com'   -- email - varchar(50)
),
(   'gv1019',  -- gv_id - varchar(10)
    N'Sooyoung', -- gv_name - nvarchar(30)
    'sooyoung@gmail.com'   -- email - varchar(50)
)
GO

--Tạo bảng GV-MH
CREATE TABLE GV_MH
(
	gv_id varchar(10) not null,
	mh_id varchar(5) not null,
	primary key (gv_id,mh_id) ,
	foreign key (gv_id) references dbo.tbGiaoVien,
	foreign key (mh_id) references dbo.tbMonHoc
)
GO	

SELECT * FROM dbo.SV_MH
go
--Thêm dữ liệu bảng Điểm
INSERT dbo.tbDiem
(
    thi_id,
    sv_id,
    mh_id,
    diem
)
VALUES
(   'thi0001', -- thi_id - varchar(10)
    'sv0112', -- sv_id - varchar(10)
    'BNGW', -- mh_id - varchar(5)
    100   -- diem - int
),
(   'thi0002', -- thi_id - varchar(10)
    'sv0112', -- sv_id - varchar(10)
    'BSJ', -- mh_id - varchar(5)
    95   -- diem - int
),
(   'thi0003', -- thi_id - varchar(10)
    'sv0112', -- sv_id - varchar(10)
    'P1', -- mh_id - varchar(5)
    98   -- diem - int
),
(   'thi0004', -- thi_id - varchar(10)
    'sv0112', -- sv_id - varchar(10)
    'LBEP', -- mh_id - varchar(5)
    100   -- diem - int
)
GO	

SELECT * FROM dbo.tbDiem
go