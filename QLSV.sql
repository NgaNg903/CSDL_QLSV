create database QLSV
use QLSV

go

--Tạo bảng sinh viên
create table SV 
(
	MaSV nchar(10) primary key,
	Hoten nvarchar(50),
	Nu bit,
	NgaySinh date,
	MaLop nchar(10),
	HocBong nvarchar(50),
	Tinh nvarchar(3)
)

--Tạo bảng lớp
create table Lop
(
	MaLop nchar(10) primary key,
	TenLop nvarchar(50),
	MaKhoa nchar(10)
)

--Tạo bảng Khoa
create table Khoa
(
	MaKhoa nchar(10) primary key,
	TenKhoa nvarchar(50),
	SoCBGD int
)

--Tạo bảng môn học
create table MonHoc
(
	MaMH nchar(10) primary key,
	TenMH nvarchar(50),
	SoTiet int
)

--Tạo bảng kết quả 
create table KetQua
(
	MaSV nchar(10),
	MaMH nchar(10),
	DiemThi float
)

--Tạo khoá ngoại
--Tạo khoá ngoại ở bảng sinh viên
alter table [dbo].[SV] add foreign key (MaLop) references Lop(MaLop)
--Tạo khoá ngoại ở bảng lớp
alter table [dbo].[Lop] add foreign key (MaKhoa) references Khoa(MaKhoa)
--Tạo khoá ngoại ở bảng kết quả
alter table [dbo].[KetQua] add foreign key (MaSV) references SV(MaSV)
alter table [dbo].[KetQua] add foreign key (MaMH) references MonHoc(MaMH)

--Nhập dữ liệu
--Nhập data cho bảng khoa
insert into [dbo].[Khoa] (MaKhoa,TenKhoa,SoCBGD) 
values ('MK001','Khoa toán tin',21) 
insert into [dbo].[Khoa] (MaKhoa,TenKhoa,SoCBGD) 
values ('MK002','Khoa kinh tế',25)
insert into [dbo].[Khoa] (MaKhoa,TenKhoa,SoCBGD) 
values ('MK003','Khoa ngôn ngữ',37)
insert into [dbo].[Khoa] (MaKhoa,TenKhoa,SoCBGD) 
values ('MK004','Khoa thanh nhạc',17)
insert into [dbo].[Khoa] (MaKhoa,TenKhoa,SoCBGD) 
values ('MK005','Khoa mỹ thuật',15)

--Nhập data cho bảng lớp
insert into [dbo].[Lop] (MaLop,TenLop,MaKhoa)
values ('ML001','A101','MK004')
insert into [dbo].[Lop] (MaLop,TenLop,MaKhoa)
values ('ML002','A105','MK003')
insert into [dbo].[Lop] (MaLop,TenLop,MaKhoa)
values ('ML003','B101','MK004')
insert into [dbo].[Lop] (MaLop,TenLop,MaKhoa)
values ('ML004','A221','MK005')
insert into [dbo].[Lop] (MaLop,TenLop,MaKhoa)
values ('ML005','B201','MK003')
insert into [dbo].[Lop] (MaLop,TenLop,MaKhoa)
values ('ML006','A131','MK002')
insert into [dbo].[Lop] (MaLop,TenLop,MaKhoa)
values ('ML007','A133','MK001')
insert into [dbo].[Lop] (MaLop,TenLop,MaKhoa)
values ('ML008','A104','MK004')
insert into [dbo].[Lop] (MaLop,TenLop,MaKhoa)
values ('ML009','B111','MK003')
insert into [dbo].[Lop] (MaLop,TenLop,MaKhoa)
values ('ML010','B121','MK002')

--Nhập data cho bảng sinh viên 
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A100',N'Nguyễn Ngọc Mai',1,'2005-05-12','ML010',N' ',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A101',N'Nguyễn Ngọc Tú',1,'2004-07-22','ML009',N'Học bổng toàn phần',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A102',N'Nguyễn Khắc Hiếu',0,'2003-09-02','ML001',N'Học bổng toàn phần',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A103',N'Lý Mai Đài',0,'2005-11-22','ML001',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A104',N'Nguyễn Ngọc Anh',1,'2004-03-19','ML002',N'',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A105',N'Trần Văn Nam',0,'2002-10-02','ML005',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A106',N'Đặng Việt Linh',0,'2004-05-01','ML004',N'Học bổng thể thao',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A107',N'Nguyễn Tuyết Mai',1,'2002-02-22','ML010',N'',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A108',N'Trần Bích Trà',1,'2004-11-21','ML010',N'Học bổng quốc tế',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A109',N'Trần Văn Tuyên',0,'2002-10-15','ML008',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A110',N'Nguyễn Ánh Tuyết',1,'2005-05-12','ML007',N'Học bổng quốc tế',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A111',N'Mai Cao Trí',0,'2005-04-17','ML006',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A112',N'Lý Mai Anh',0,'2003-09-12','ML005',N'Học bổng thể thao',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A113',N'Mai Trí Toàn',0,'2005-09-22','ML002',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A114',N'Mai Trí Toàn',0,'2005-09-22','ML002',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A115',N'Mai Trí Toàn',0,'2005-09-22','ML002',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A116',N'Mai Trí Toàn',0,'2005-09-22','ML002',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A117',N'Mai Trí Toàn',0,'2005-09-22','ML002',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A118',N'Mai Trí Toàn',0,'2005-09-22','ML002',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A119',N'Mai Trí Toàn',0,'2005-09-22','ML007',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A120',N'Mai Trí Toàn',0,'2005-09-22','ML002',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A121',N'Mai Trí Toàn',0,'2005-09-22','ML003',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A122',N'Mai Trí Toàn',0,'2005-09-22','ML004',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A123',N'Mai Trí Toàn',0,'2005-09-22','ML005',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A124',N'Mai Trí Toàn',0,'2005-09-22','ML006',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A125',N'Mai Trí Toàn',0,'2005-09-22','ML002',N'',N'Nam')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A126',N'Nguyễn Ngọc Mai',1,'2005-05-12','ML010',N' ',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A127',N'Nguyễn Ngọc Mai',1,'2005-05-12','ML010',N' ',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A128',N'Nguyễn Ngọc Mai',1,'2005-05-12','ML010',N' ',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A129',N'Nguyễn Ngọc Mai',1,'2005-05-12','ML010',N' ',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A130',N'Nguyễn Ngọc Mai',1,'2005-05-12','ML003',N' ',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A131',N'Nguyễn Ngọc Mai',1,'2005-05-12','ML004',N' ',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A132',N'Nguyễn Ngọc Mai',1,'2005-05-12','ML005',N' ',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A133',N'Nguyễn Ngọc Mai',1,'2005-05-12','ML006',N' ',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A134',N'Nguyễn Ngọc Mai',1,'2005-05-12','ML007',N' ',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A135',N'Nguyễn Ngọc Mai',1,'2005-05-12','ML008',N' ',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A136',N'Nguyễn Ngọc Mai',1,'2005-05-12','ML009',N' ',N'Nữ')
insert into [dbo].[SV] ([MaSV],[Hoten],[Nu],[NgaySinh],[MaLop],[HocBong],[Tinh]) 
values ('A137',N'Nguyễn Ngọc Mai',1,'2005-05-12','ML010',N' ',N'Nữ')

--Nhập data cho bảng môn học
insert into [dbo].[MonHoc] (MaMH,TenMH,SoTiet)
values ('MH001','CSDL',45)
insert into [dbo].[MonHoc] (MaMH,TenMH,SoTiet)
values ('MH002','Xác suất thống kê',70)
insert into [dbo].[MonHoc] (MaMH,TenMH,SoTiet)
values ('MH003','Hát nhạc',45)
insert into [dbo].[MonHoc] (MaMH,TenMH,SoTiet)
values ('MH004','Python',45)
insert into [dbo].[MonHoc] (MaMH,TenMH,SoTiet)
values ('MH005','Ngôn ngữ Anh',65)
insert into [dbo].[MonHoc] (MaMH,TenMH,SoTiet)
values ('MH006','Kinh tế vi mô',45)

--Nhập data cho bảng kết quả 
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A101','MH001',8.5)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A111','MH001',5)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A103','MH001',10)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A104','MH001',7.5)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A105','MH001',9.5)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A107','MH001',6)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A106','MH001',8)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A107','MH001',9)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A108','MH001',7)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A101','MH002',8.5)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A101','MH003',8.5)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A101','MH004',8.5)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A101','MH005',8.5)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A101','MH006',8.5)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A121','MH004',8.5)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A120','MH001',8.5)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A129','MH002',8.5)
insert into [dbo].[KetQua] (MaSV,MaMH,DiemThi)
values ('A111','MH003',7.5)

--Truy vấn SQL
--Lập danh sách sinh viên gồm: MaSV, HoTen, HocBong
select [MaSV] N'Mã sinh viên' ,[Hoten] N'Họ tên', [HocBong] N'Học bổng'
from [dbo].[SV]

--Lấy danh sách sinh viên có điểm CSDL >=8
select SV.MaSV,SV.Hoten,mh.TenMH,kq.DiemThi
from [dbo].[SV] 
inner join [dbo].[KetQua] kq on SV.MaSV = kq.MaSV 
inner join [dbo].[MonHoc] mh on kq.MaMH = mh.MaMH
where kq.DiemThi >=8 and mh.TenMH = 'CSDL'

--Cho biết sinh viên mỗi lớp
select l.MaLop N'Mã lớp',l.TenLop N'Lớp' , count(sv.MaSV) N'Số học sinh'
from [dbo].[SV] sv inner join [dbo].[Lop] l on sv.MaLop = l.MaLop
group by l.MaLop,l.TenLop

--Lập danh sách những khoa có ít hơn 100 sinh viên
select k.MaKhoa ,k.TenKhoa ,count(sv.MaSV) N'Số học sinh'
from [dbo].[SV] sv inner join [dbo].[Lop] l on sv.MaLop = l.MaLop
inner join [dbo].[Khoa] k on l.MaKhoa = k.MaKhoa
group by k.MaKhoa,k.TenKhoa
having COUNT(sv.MaSV) <100