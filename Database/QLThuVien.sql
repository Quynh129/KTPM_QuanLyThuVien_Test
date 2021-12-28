
--drop database QLThuVien
create database QLThuVien
go
use QLThuVien
go

-----
--drop table DOCGIA
create table DOCGIA
(
	MaDocGia nchar(10),
	TenDangNhap nchar(30),
	HoTen nchar(30),
	GioiTinh nchar(5),
	NamSinh date,
	DiaChi nchar(100),
	PRIMARY KEY (MaDocGia),
)
--drop table SACH
create table SACH
(
	MaSach nchar(10),
	TenSach nchar(50),
	TacGia nchar(30),
	TheLoai nchar(30),
	NhaXuatBan nchar(50),
	GiaSach int,
	SoLuong int,
	TinhTrang nchar(10),
	PRIMARY KEY (MaSach),
)
--drop table PHIEUMUON
create table PHIEUMUON
(
	MaPhieu nchar(10),
	MaDocGia nchar(10),
	MaSach nchar(10),
	NgayMuon datetime,
	NgayPhaiTra datetime, --yy/mm/dd
	PRIMARY KEY (MaPhieu),
)
--drop table PHIEUTRA
create table PHIEUTRA
(
	MaPhieu nchar(10),
	MaDocGia nchar(10),
	MaSach nchar(10),
	NgayTra datetime,
	PRIMARY KEY (MaPhieu),
)

create table ACCOUNT
(
	MaDocGia nchar(10) PRIMARY KEY,
	TenDangNhap nchar(30),
	MatKhau nchar(30),
	Quyen int,
)


alter table PHIEUMUON add
	constraint FK_PHIEUMUON_DOCGIA foreign key (MaDocGia) references DOCGIA (MaDocGia),
	constraint FK_PHIEUMUON_SACH foreign key (MaSach) references SACH (MaSach)

alter table PHIEUTRA add
	constraint FK_PHIEUTRA_DOCGIA foreign key (MaDocGia) references DOCGIA (MaDocGia),
	constraint FK_PHIEUTRA_SACH foreign key (MaSach) references SACH (MaSach)

ALTER TABLE dbo.DOCGIA ADD
	CONSTRAINT FK_DOCGIA_ACCOUNT FOREIGN KEY (MaDocGia) REFERENCES dbo.ACCOUNT(MaDocGia)


insert into ACCOUNT values ('0','admin', '123', 0)
insert into ACCOUNT values ('1','CaoHoangPhuong', '123456', 1)
insert into ACCOUNT values ('2','HuaLeNhuQuynh', '123456', 1)
insert into ACCOUNT values ('3','NguyenThiNhuQuynh', '123456', 1)
insert into ACCOUNT values ('4','CHP', '123456', 1)
insert into ACCOUNT values ('5','HLNQ', '123456', 1)
insert into ACCOUNT values ('6','NTNQ', '123456', 1)
insert into ACCOUNT values ('7','Pis', '123456', 1)
insert into ACCOUNT values ('8','ChipChip', '123456', 1)
insert into ACCOUNT values ('9','Chika', '123456', 1)
insert into ACCOUNT values ('10','EmGaiXuNau', '123456', 1)
----
insert into DOCGIA values ('1','CaoHoangPhuong',N'Cao Hoàng Phượng',N'Nữ','2001-03-17',N'173 Quận 6 TP.HCM')
insert into DOCGIA values ('2','HuaLeNhuQuynh',N'Hứa Lê Như Quỳnh',N'Nữ','2001-11-29',N'2911 Quận Bình Thạnh TP.HCM')
insert into DOCGIA values ('3','NguyenThiNhuQuynh',N'Nguyễn Thị Như Quỳnh',N'Nữ','2001-03-13',N'133 Mai Văn Khải ')
insert into DOCGIA values ('4','CHP',N'Cao Phượng',N'Nữ','2000-01-01',N'TP.HCM')
insert into DOCGIA values ('5','HLNQ',N'Hứa Quỳnh',N'Nữ','2006-01-01',N'Điện Biên Phủ')
insert into DOCGIA values ('6','NTNQ',N'Nguyễn Quỳnh',N'Nữ','2004-01-01',N'Lê Văn Chí')
insert into DOCGIA values ('7','Pis',N'Như Như',N'Nữ','2002-01-01',N'20 Lý Thái Tổ')
insert into DOCGIA values ('8','ChipChip',N'Quỳnh Quỳnh',N'Nam','2003-01-01',N'Điện Biên Phủ')
insert into DOCGIA values ('9','Chika',N'Dân Bình Định',N'Nữ','1999-11-20',N'371 Nguyễn Kiệm')
insert into DOCGIA values ('10','EmGaiXuNau',N'Con Nhà Võ',N'Nam','1980-01-01',N'Phạm Văn Đồng')

----
insert into SACH values ('1', N'Cơ Sở Lập Trình', N'Nguyễn Tiến Đạt', N'Lập trình', 'HCMCOU', 1500, 3, N'Còn')
insert into SACH values ('2', N'Nhập Môn Tin Học', N'Lê Ngọc Hiếu', N'Lập trình', 'HCMCOU', 1500, 10, N'Còn')
insert into SACH values ('3', N'Kỹ Thuật Lập Trình', N'Nguyễn Tiến Đạt', N'Lập trình', 'HCMCOU', 3000, 5, N'Còn')
insert into SACH values ('4', N'Cấu Trúc Dữ Liệu và Giải Thuật', N'Võ Thị Hồng Tuyết', N'Lập trình', 'HCMCOU', 4000, 0, N'Còn')
insert into SACH values ('5', N'Cơ Sở Dữ Liệu', N'Nguyễn Thị Phương Trang', N'Lập trình', 'HCMCOU', 1500, 3, N'Còn')
insert into SACH values ('6', N'Hệ Điều Hành', N'Nguyễn Thị Mai Trang', N'Lập trình', 'HCMCOU', 1500, 10, N'Còn')
insert into SACH values ('7', N'Mạng Máy Tính', N'Nguyễn Thị Mai Trang', N'Lập trình', 'HCMCOU', 3000, 5, N'Còn')
insert into SACH values ('8', N'Lập Trình Giao Diện', N'Nguyễn Thị Phương Trang', N'Lập trình', 'HCMCOU', 4000, 0, N'Còn')
insert into SACH values ('9', N'Phân Tích Thiết Kế Hệ Thống', N'Nguyễn Thị Phương Trang', N'Lập trình', 'HCMCOU', 4000, 0, N'Hết')
insert into SACH values ('10', N'Lập Trình Cơ Sở Dữ Liệu', N'Lê Ngọc Hiếu', N'Lập trình', 'HCMCOU', 4000, 0, N'Hết')
insert into SACH values ('11', N'Kiểm Thử Phần Mềm', N'Nguyễn Thị Phương Trang', N'Lập trình', 'HCMCOU', 4000, 0, N'Hết')
insert into SACH values ('12', N'Đại Số Tuyến Tính', N'Vũ Văn Hưng', N'Toán cao cấp', 'HCMCOU', 1500, 3, N'Còn')
insert into SACH values ('13', N'Kinh Tế Học Đại Cương', N'Quan Minh Quốc Bình', N'Kinh tế', 'HCMCOU', 1500, 10, N'Còn')
insert into SACH values ('14', N'Giải Tích', N'Hà Mình Tuấn', N'Toán cao cấp', 'HCMCOU', 3000, 5, N'Còn')
insert into SACH values ('15', N'Quản Trị Học', N'Nguyễn Thị Thủy', N'Quản trị', 'HCMCOU', 4000, 0, N'Còn')
insert into SACH values ('16', N'Nguyên Lý Kế Toán', N'Hồ Thị Bích Nhơn', N'Kế toán', 'HCMCOU', 1500, 3, N'Còn')
insert into SACH values ('17', N'Xác Suất Và Thống Kê', N'Võ Thanh Hải', N'Toán cao cấp', 'HCMCOU', 1500, 10, N'Còn')
insert into SACH values ('18', N'Toán Tin Học', N'Lê Hồng Thái', N'Lập trình', 'HCMCOU', 3000, 5, N'Còn')
insert into SACH values ('19', N'Kinh Tế Lượng 1', N'Nguyễn Văn Dư', N'Kinh tế', 'HCMCOU', 4000, 0, N'Hết')
insert into SACH values ('20', N'Quản Trị Dự Án', N'Hoàng Đinh Thảo Vy', N'Quản trị', 'HCMCOU', 4000, 0, N'Hết')
insert into SACH values ('21', N'Quản Trị Tài Chính', N'Nguyễn Thị Phương', N'Quản trị', 'HCMCOU', 4000, 0, N'Hết')
---
insert into PHIEUMUON values ('1','1','4','2018-01-01', '2018-02-01')
insert into PHIEUMUON values ('2','2','1','2018-02-01', '2018-03-01')
insert into PHIEUMUON values ('3','3','2','2018-03-17', '2018-04-17')
insert into PHIEUMUON values ('4','1','3','2019-01-01', '2019-02-01')
insert into PHIEUMUON values ('5','4','1','2019-02-01', '2019-03-01')
insert into PHIEUMUON values ('6','5','5','2020-03-13', '2020-04-13')
insert into PHIEUMUON values ('7','5','21','2020-11-29', '2020-12-29')
insert into PHIEUMUON values ('8','6','8','2021-02-01', '2021-03-01')
insert into PHIEUMUON values ('9','2','12','2021-03-01', '2021-04-01')
insert into PHIEUMUON values ('10','7','14','2021-05-01', '2021-06-01')
insert into PHIEUMUON values ('11','8','13','2021-07-01', '2021-08-01')
insert into PHIEUMUON values ('12','9','20','2021-09-01', '2021-10-01')
insert into PHIEUMUON values ('13','10','17','2021-11-20', '2021-12-24')
---
insert into PHIEUTRA values ('1','1','4','2018-01-29')
insert into PHIEUTRA values ('2','2','1','2018-02-15')
insert into PHIEUTRA values ('3','3','2','2018-03-19')
insert into PHIEUTRA values ('4','1','3','2019-02-10')
insert into PHIEUTRA values ('5','4','1','2019-02-21')
insert into PHIEUTRA values ('6','5','5','2020-04-08')
insert into PHIEUTRA values ('7','5','21','2020-12-24')
insert into PHIEUTRA values ('8','6','8','2021-03-14')
insert into PHIEUTRA values ('9','2','12','2021-06-01')
insert into PHIEUTRA values ('10','7','14','2021-05-17')
insert into PHIEUTRA values ('11','8','13','2021-07-15')
insert into PHIEUTRA values ('12','9','20','2021-09-07')
insert into PHIEUTRA values ('13','10','17','2021-12-25')

---


select DOCGIA.HoTen from ACCOUNT, DOCGIA where ACCOUNT.MaDocGia = DOCGIA.MaDocGia