create database db_DDD;
go

-- Mo csdl db_DDD de lam viec
use db_DDD;
go

-- tao bảng sinh viên
create table tbSinhVien
(
	sv_id varchar(10) not null,
	sv_name nvarchar(30) not null,
	namsinh int,
	gioitinh bit,
	email varchar(50)
	primary key (sv_id)
);
go

-- tao bang mon hoc
create table tbMonHoc
(
	mh_id varchar(5) not null primary key,
	ten_mh nvarchar(50) not null ,
	sotiet tinyint,
	hocphi int
);
go

--tao bang sinh viên đăng ký môn học
create table SV_MH(
	sv_id varchar(10) not null,
	mh_id varchar(5) not null,
	primary key (sv_id,mh_id) ,
	foreign key (sv_id) references tbSinhVien,
	foreign key (mh_id) references tbMonHoc,
); 
go

 --thêm dữ liệu vô bảng sinh viên
 insert tbSinhVien(sv_id,sv_name) 
			values('sv0112',N'Minh Tâm');
go

insert tbSinhVien values('sv1000',N'Seohyun',1991,0,'seohyunm@gmail.com');
go

--Truy vấn / Truy xuất / Xem dữ liệu 3 cột trong bảng  sinh vien
select sv_id,sv_name,email
from tbSinhVien;
go

--Truy vấn tất cả các cột dữ liệu của bảng Sinh viên
select *
from tbSinhVien;
go
