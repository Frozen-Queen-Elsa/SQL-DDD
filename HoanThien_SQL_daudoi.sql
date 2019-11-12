-- Ngay 2

--open csdl db_DDD
USE db_DDD 
GO	

--Truy van du lieu bang sinh vien
SELECT * FROM tbSInhVien
GO

--Thêm 1 số sinh viên vô database
INSERT	dbo.tbSinhVien
(
    sv_id,
    sv_name,
    namsinh,
    gioitinh,
    email
)
VALUES
(   'sv1001',   -- sv_id - varchar(10)
    N'Phương Huyen',  -- sv_name - nvarchar(30)
    1986,    -- namsinh - int
    NULL, -- gioitinh - bit
    'huyenbaby@gmail.com'    -- email - varchar(50)
)
GO
    
INSERT dbo.tbSinhVien
(
	sv_id,
	sv_name,
	namsinh,
	gioitinh,
	email
)
VALUES
(   'sv1002',   -- sv_id - varchar(10)
	N'Kim Thơ',  -- sv_name - nvarchar(30)
	2006,    -- namsinh - int
	NULL, -- gioitinh - bit
	'thochi@hotmail.com'    -- email - varchar(50)
	),
	(   'sv1003',   -- sv_id - varchar(10)
	N'Quốc Bảo',  -- sv_name - nvarchar(30)
	2000,    -- namsinh - int
	0, -- gioitinh - bit
	'baobao@hotmail.com'    -- email - varchar(50)
	),
	(   'sv1004',   -- sv_id - varchar(10)
	N'Anh Đức',  -- sv_name - nvarchar(30)
	2000,    -- namsinh - int
	1, -- gioitinh - bit
	'anhduc@gmail.com'    -- email - varchar(50)
	),
	(   'sv1005',   -- sv_id - varchar(10)
	N'Trúc Quỳnh',  -- sv_name - nvarchar(30)
	2006,    -- namsinh - int
	0, -- gioitinh - bit
	'quynh@gmail.com'    -- email - varchar(50)
	),
	(   'sv1006',   -- sv_id - varchar(10)
	N'Thiên Kim',  -- sv_name - nvarchar(30)
	2000,    -- namsinh - int
	0, -- gioitinh - bit
	'thienkim@gmail.com'    -- email - varchar(50)
	),
	(   'sv1007',   -- sv_id - varchar(10)
	N'Thanh Ân',  -- sv_name - nvarchar(30)
	1990,    -- namsinh - int
	1, -- gioitinh - bit
	'an@gmail.com'    -- email - varchar(50)
	),
	(   'sv1008',   -- sv_id - varchar(10)
	N'Thái Bình',  -- sv_name - nvarchar(30)
	2001,    -- namsinh - int
	1, -- gioitinh - bit
	'thaibinh@gmail.com'    -- email - varchar(50)
	),
	(   'sv1009',   -- sv_id - varchar(10)
	N'Minh Thư',  -- sv_name - nvarchar(30)
	2001,    -- namsinh - int
	0, -- gioitinh - bit
	'thuem@gmail.com'    -- email - varchar(50)
	),
	(   'sv1010',   -- sv_id - varchar(10)
	N'Trần Hòa',  -- sv_name - nvarchar(30)
	2008,    -- namsinh - int
	1, -- gioitinh - bit
	'hoa@gmail.com'    -- email - varchar(50)
	),
	(   'sv1011',   -- sv_id - varchar(10)
	N'Hoang Anh',  -- sv_name - nvarchar(30)
	1990,    -- namsinh - int
	1, -- gioitinh - bit
	'hoanganh@gmail.com'    -- email - varchar(50)
	),
	(   'sv1012',   -- sv_id - varchar(10)
	N'Đình Huy',  -- sv_name - nvarchar(30)
	1999,    -- namsinh - int
	1, -- gioitinh - bit
	'huy@gmail.com'    -- email - varchar(50)
)
go

--Thêm dữ liệu vọ bảng môn học
INSERT dbo.tbMonHoc
(
    mh_id,
    ten_mh,
    sotiet,
    hocphi
)
VALUES
(   'LBEP',  -- mh_id - varchar(5)
    N'Logic Buiding Elementary Programming', -- ten_mh - nvarchar(50)
    38,   -- sotiet - tinyint
    200    -- hocphi - int
),
(   'BNGW',  -- mh_id - varchar(5)
    N'Buiding Next Generation Website', -- ten_mh - nvarchar(50)
    40,   -- sotiet - tinyint
    250    -- hocphi - int
),
(   'BSJ',  -- mh_id - varchar(5)
    N'Boostrap Jquery', -- ten_mh - nvarchar(50)
    16,   -- sotiet - tinyint
    100    -- hocphi - int
),
(   'P1',  -- mh_id - varchar(5)
    N'eProject', -- ten_mh - nvarchar(50)
    24,   -- sotiet - tinyint
    250    -- hocphi - int
),
(   'DDD',  -- mh_id - varchar(5)
    N'Database Design and Development', -- ten_mh - nvarchar(50)
    12,   -- sotiet - tinyint
    150    -- hocphi - int
),
(   'DM',  -- mh_id - varchar(5)
    N'Database Management', -- ten_mh - nvarchar(50)
    40,   -- sotiet - tinyint
    350    -- hocphi - int
)
GO


--Truy vấn bảng môn học
select * from tbMonHoc
go

--Truy vấn bảng sinh viên đăng ký môn học 
SELECT * FROM dbo.SV_MH
GO

--Thêm cơ sở dữ liệu cho sinh viên dk môn học
INSERT	dbo.SV_MH
(
    sv_id,
    mh_id
)
VALUES
(   'sv0112', -- sv_id - varchar(10)
    'LBEP'  -- mh_id - varchar(5)
),
(   'sv0112', -- sv_id - varchar(10)
    'BNGW'  -- mh_id - varchar(5)
),
(   'sv0112', -- sv_id - varchar(10)
    'BSJ'  -- mh_id - varchar(5)
),
(   'sv0112', -- sv_id - varchar(10)
    'P1'  -- mh_id - varchar(5)
),
(   'sv0112', -- sv_id - varchar(10)
    'DDD'  -- mh_id - varchar(5)
)
go
	


--Nhập thêm danh sách sinh viên đăng ký môn học
INSERT	dbo.SV_MH
(
    sv_id,
    mh_id
)
VALUES
(   'sv1005', -- sv_id - varchar(10)
    'LBEP'  -- mh_id - varchar(5)
),
(   'sv1005', -- sv_id - varchar(10)
    'BSJ'  -- mh_id - varchar(5)
),
(   'sv1005', -- sv_id - varchar(10)
    'DDD'  -- mh_id - varchar(5)
)
GO

INSERT	dbo.SV_MH
(
    sv_id,
    mh_id
)
VALUES
(   'sv1000', -- sv_id - varchar(10)
    'LBEP'  -- mh_id - varchar(5)
),
(   'sv1000', -- sv_id - varchar(10)
    'BSJ'  -- mh_id - varchar(5)
)
,
(   'sv1000', -- sv_id - varchar(10)
    'P1'  -- mh_id - varchar(5)
),
(   'sv1000', -- sv_id - varchar(10)
    'DDD'  -- mh_id - varchar(5)
)
GO


INSERT	dbo.SV_MH
(
    sv_id,
    mh_id
)
VALUES
(   'sv1010', -- sv_id - varchar(10)
    'LBEP'  -- mh_id - varchar(5)
),
(   'sv1010', -- sv_id - varchar(10)
    'BSJ'  -- mh_id - varchar(5)
),
(   'sv1010', -- sv_id - varchar(10)
    'P1'  -- mh_id - varchar(5)
)
GO

--Truy vấn toàn bộ danh sách sinh viên
SELECT * FROM dbo.tbSinhVien
go

--Truy vấn (Tìm) thông tin của sinh viên [điều kiện có tên là Huy]
SELECT * FROM dbo.tbSinhVien WHERE tbSinhVien.sv_name LIKE '%huy'
GO

--Truy vấn (Liệt kê) danh sách sinh viên nam 
SELECT * FROM dbo.tbSinhVien WHERE tbSinhVien.gioitinh=1 OR tbSinhVien.gioitinh IS Null
GO

--Truy vấn (In ra) danh sách sinh vien [ Điều kiện : sinh năm 2000]
SELECT * FROM dbo.tbSinhVien WHERE tbSinhVien.namsinh=2000
GO

--Truy vấn (Tìm) các môn học [dk có học phí >200]
SELECT * FROM	dbo.tbMonHoc WHERE tbMonHoc.hocphi>=200
GO


SELECT * FROM	dbo.SV_MH
GO

--Đếm số sinh viên nam , nữ [Group theo giới tính]
SELECT tbSinhVien.gioitinh,COUNT(*) AS N'Tổng số SV' FROM dbo.tbSinhVien
GROUP BY tbSinhVien.gioitinh
GO

--Đếm số sinh viên nam  [Group theo giới tính]
SELECT tbSinhVien.gioitinh,COUNT(*) AS N'Tổng số SV' FROM dbo.tbSinhVien
WHERE gioitinh=1
GROUP BY tbSinhVien.gioitinh
GO

--Đếm số môn học mà 1 sinh viên đăng ký
SELECT SV_MH.sv_id,COUNT(*) AS N'Tổng số môn học đăng ký' FROM dbo.SV_MH
GROUP BY SV_MH.sv_id
GO

--Liệt kê những sinh viên đăng ký 4 môn học
SELECT SV_MH.sv_id,COUNT(*) AS N'Tổng số môn học đăng ký' FROM dbo.SV_MH
GROUP BY SV_MH.sv_id
HAVING COUNT(*)=4
GO

--Liệt kê những sinh viên đăng ký 4 môn học và sắp xếp theo mã số sinh viên tăng dần 
SELECT SV_MH.sv_id,COUNT(*) AS N'Tổng số môn học đăng ký' FROM dbo.SV_MH
GROUP BY SV_MH.sv_id
HAVING COUNT(*)=4
ORDER BY SV_MH.sv_id
GO

--Liệt kê những sinh viên đăng ký 4 môn học và sắp xếp theo mã số sinh viên giảm dần
SELECT SV_MH.sv_id,COUNT(*) AS N'Tổng số môn học đăng ký' FROM dbo.SV_MH
GROUP BY SV_MH.sv_id
HAVING COUNT(*)=4
ORDER BY SV_MH.sv_id DESC
GO

--Liệt kê danh sách sinh viên theo thứ năm sinh
SELECT * FROM dbo.tbSinhVien
ORDER BY tbSinhVien.gioitinh,tbSinhVien.namsinh
GO



--Truy vấn danh sách sinh viên đăng ký môn học
SELECT* FROM dbo.SV_MH
GO

-- Truy vấn danh sách sinh viên đăng ký môn học bao gồm các cột : MSSV, Tên SV, Mã Môn Học
SELECT a.sv_id, a.sv_name,b.mh_id 
FROM dbo.tbSinhVien a,dbo.SV_MH b
WHERE a.sv_id=b.sv_id;
GO

-- Truy vấn danh sách sinh viên đăng ký môn học bao gồm các cột : MSSV, Tên SV, Mã Môn Học , Tên Môn Học
SELECT a.sv_id, a.sv_name,b.mh_id ,b.ten_mh
FROM dbo.tbSinhVien a ,dbo.tbMonHoc b , dbo.SV_MH c 
WHERE a.sv_id=c.sv_id AND b.mh_id=c.mh_id;
GO

-- Liệt kê những môn học bạn Tâm đã đăng ký 
SELECT a.*,b.ten_mh
FROM dbo.SV_MH a , dbo.tbMonHoc b
WHERE (a.mh_id=b.mh_id) AND (a.sv_id='sv0112')
GO


-- Liệt kê những sinh viên chưa đăng ký [Right Join]
SELECT b.*,a.mh_id
FROM dbo.SV_MH a Right JOIN dbo.tbSinhVien b ON a.sv_id=b.sv_id
WHERE a.sv_id IS NULL
GO

--Thêm 1 môn học mới
INSERT dbo.tbMonHoc
(
    mh_id,
    ten_mh,
    sotiet,
    hocphi
)
VALUES
(   'Kpop',  -- mh_id - varchar(5)
    N'Korea Pop', -- ten_mh - nvarchar(50)
    50,   -- sotiet - tinyint
    400    -- hocphi - int
)
GO

-- Liệt kê những môn học chưa được đăng ký [Left Join]
SELECT b.*,a.sv_id
FROM dbo.tbMonHoc b LEFT JOIN  dbo.SV_MH a ON a.mh_id=b.mh_id
WHERE a.mh_id IS NULL
GO

--Liệt kê những môn học mà bạn Trúc Quỳnh chưa đăng ký [sub query]
--1, Danh sách môn học Trúc Quỳnh đã đăng ký
SELECT *
FROM dbo.SV_MH
WHERE sv_id='sv1005'
--2. Danh sách tất cả các môn học
SELECT *
FROM dbo.tbMonHoc
--3. Danh sách môn học không tồn tại trong kết quả 1
SELECT *
FROM dbo.tbMonHoc a
WHERE a.mh_id NOT in(SELECT b.mh_id
					FROM dbo.SV_MH b
					WHERE b.sv_id='sv1005')
go
