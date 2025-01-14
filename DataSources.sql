go
create database QLPhongMach
go
use QLPhongMach
go
--use BCHQT
--drop database QLPhongMach
create table BENHNHAN
(
	MaBenhNhan int primary key identity(1,1),
	TenBenhNhan nvarchar(50),
	GioiTinh nvarchar(4),
	NgaySinh smalldatetime,
	NgayKham smalldatetime,
	DiaChi nvarchar(100)
)
go
create table PHIEUKHAMBENH
(
	MaPhieuKham int primary key identity(1,1),
	MaBenhNhan int,
	MaLoaiBenh int,
	TrieuChung nvarchar(100)
)
go
create table CT_PHIEUKHAMBENH
(
	MaLoaiThuoc int ,
	MaPhieuKham int ,
	MaLoaiDonVi int,
	SoLuong int,
	MaCachDung int
	primary key (MaLoaiThuoc, MaPhieuKham)
)
go

create table THUOC
(
	MaLoaiThuoc int primary key identity(1,1),
	TenLoaiThuoc nvarchar(50), 
	DongiaThuoc money, 
	SolanDung int
)
go
create table BENH
(
	MaLoaiBenh int primary key identity(1,1),
	TenLoaiBenh nvarchar(50)
)
go
create table DONVI
(
	MaLoaiDonVi int primary key identity(1,1),
	TenLoaiDonVi nvarchar(20)
)
go
create table THAMSO
(
	ten nvarchar(50),
	dactrung int
)
go
insert THAMSO(ten,dactrung) values (N'Số bệnh nhân tối đa',15)
insert THAMSO(ten,dactrung) values (N'Tiền khám',30000)
go
create table CACHDUNG
(
	MaCachDung int primary key identity,
	TenCachDung nvarchar(100)
)
go
create table HOADON
(
	MaHoaDon int primary key identity,
	MaBenhNhan int,
	NgayKham smalldatetime,
	TongTien money
)
go
create table CTHD
(
	MaHoaDon int,
	MaLoaiThuoc int,
	SoLuong int,
	ThanhTien money
	primary key(MaHoaDon,MaLoaiThuoc)
)
go
create table THONGTIN
(
	MaThongTIn int primary key identity,
	ChiTietThongTin nvarchar(1000)
)
go

Alter table PHIEUKHAMBENH add constraint FK0_PKB foreign key (MaBenhNhan) references BENHNHAN(MaBenhNhan)
Alter table PHIEUKHAMBENH add constraint FK1_PKB foreign key (MaLoaiBenh) references BENH(MaLoaiBenh)
Alter table CT_PHIEUKHAMBENH add constraint FK0_CTPKB foreign key (MaLoaiThuoc) references THUOC(MaLoaiThuoc)
Alter table CT_PHIEUKHAMBENH add constraint FK2_CTPKB foreign key (MaCachDung) references CACHDUNG(MaCachDung)
Alter table CT_PHIEUKHAMBENH add constraint FK1_CTPKB foreign key (MaLoaiDonVi) references DONVI(MaLoaiDonVi)
Alter table CT_PHIEUKHAMBENH add constraint FK3_CTPKB foreign key (MaPhieuKham) references PHIEUKHAMBENH(MaPhieuKham)
Alter table HOADON add constraint FK0_HD foreign key(MaBenhNhan) references BENHNHAN(MaBenhNhan)
Alter table CTHD add constraint FK0_CTHD foreign key (MaHoaDon) references HOADON(MaHoaDon)
Alter table CTHD add constraint FK1_CTHD foreign key (MaLoaithuoc) references THUOC(MaLoaiThuoc)
alter table THUOC add SoLuong int
alter table THUOC drop column SoLanDung
set dateformat DMY
insert into BENHNHAN(TenBenhNhan,GioiTinh,NgayKham,NgaySinh,DiaChi) values (N'Trần Văn A', N'Nam','1/2/2019','1/2/1998',N'Thành phố Hồ Chí Minh')
go
--THUOC
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Fentanyl (citrat)',30000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Halothan',20000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Ketamin (hydroclorid)',10000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Bupivacain hydroclorid',15000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Lidocain hydroclorid',13000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Lidocain hydroclorid',14000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Ephedrin hydroclorid',21000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Diclofenac',17000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Ibuprofen',30000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Meloxicam',20000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Paracetamol',15000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Piroxicam',9000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Morphin sulfat',12000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Cyclizin',13000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Dexamethason',10000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Diazepam',8000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Docusat natri',25000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Lactulose ',12000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Midazolam',13000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Alimemazin',12000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Clorpheniramin maleat',15000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Dexamethason',21000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Methylprednisolon',11000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Prednisolon',14000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Loratadin',13000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Promethazin hydroclorid',10000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Atropin sulfat ',20000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Deferoxamin mesylat',9000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Dimercaprol',15000,500)
insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values (N'Methionin',16000,500)
go
--BENH
--delete THUOC
insert into BENH(TenLoaiBenh) values (N'Ngạt mũi và sổ mũi')
insert into BENH(TenLoaiBenh) values (N'Viêm mũi dị ứng')
insert into BENH(TenLoaiBenh) values (N'Viêm phế quản mạn tính')
insert into BENH(TenLoaiBenh) values (N'Viêm xoang cấp và mạn tính')
insert into BENH(TenLoaiBenh) values (N'Viêm phổi')
go
--DONVI
insert into DONVI(TenLoaiDonVi) values (N'Viên')
insert into DONVI(TenLoaiDonVi) values (N'Chai')
go
--CACHDUNG
insert into CACHDUNG(TenCachDung) values(N'Uống')
insert into CACHDUNG(TenCachDung) values(N'Tiêm')
insert into CACHDUNG(TenCachDung) values(N'Tiêm Truyền')
insert into CACHDUNG(TenCachDung) values(N'Dùng ngoài')
go
--tao trigger
--Load danh sach benh nhan
create proc LoadBenhNhan
as
begin
	select * from BENHNHAN
end
go
--Thêm 1 bệnh nhân
create proc ThemBenhNhan
@TenBenhNhan nvarchar(50),
@GioiTinh nvarchar(4),
@NgaySinh smalldatetime,
@DiaChi nvarchar(100),
@NgayKham smalldatetime 
AS
BEGIN
	insert into BENHNHAN(TenBenhNhan,GioiTinh,NgayKham,NgaySinh,DiaChi) values(@TenBenhNhan, @GioiTinh, @NgayKham, @NgaySinh, @DiaChi)
END
go
--Thay doi thong tin benh nhan
create proc SuaBenhNhan
@TenBenhNhan nvarchar(50),
@GioiTinh nvarchar(4),
@NgaySinh smalldatetime,
@DiaChi nvarchar(100),
@NgayKham smalldatetime,
@MaBenhNhan int
as
begin
	update BENHNHAN set TenBenhNhan = @TenBenhNhan, GioiTinh = @GioiTinh, NgayKham = @NgayKham, NgaySinh = @NgaySinh, DiaChi = @DiaChi
	where MaBenhNhan = @MaBenhNhan
	update HOADON set NgayKham = @NgayKham
	where MaBenhNhan =@MaBenhNhan
end
go
--Xoa mot benh nhan
create proc XoaMotBenhNhan
@MaBenhNhan int
as
begin
	delete BENHNHAN where MaBenhNhan = @MaBenhNhan
	delete HOADON where MaBenhNhan = @MaBenhNhan
end
go
--THUOC
--load danh sách thuốc
create proc LoadThuoc
as
begin
	select * from THUOC
end
go
--Thêm 1 loại thuốc
create proc ThemThuoc
@TenThuoc nvarchar(50),
@DonGia money,
@SoLuong int 
AS
BEGIN
	insert into THUOC(TenLoaiThuoc,DongiaThuoc,SoLuong) values(@TenThuoc,@DonGia,@SoLuong)
END
go
delete PHIEUKHAMBENH
go
--Thay đổi thông tin thuốc
create proc SuaThuoc
@TenThuoc nvarchar(50),
@DonGia money,
@SoLuong int,
@MaThuoc int
as
begin
	update HOADON set TongTien = TongTien - (select ThanhTien*SoLuong from CTHD where HOADON.MaHoaDon = CTHD.MaHoaDon and MaLoaiThuoc = @MaThuoc)
	where MaHoaDon in(select MaHoaDon 
					  from CTHD
					  where MaLoaiThuoc = @MaThuoc)
	update THUOC set TenLoaiThuoc = @TenThuoc, DongiaThuoc = @DonGia, SoLuong = @SoLuong
	where MaLoaiThuoc = @MaThuoc
	update CTHD set ThanhTien = @DonGia
	where MaLoaiThuoc = @MaThuoc
	update HOADON set TongTien = TongTien + (select ThanhTien*SoLuong from CTHD where HOADON.MaHoaDon = CTHD.MaHoaDon and MaLoaiThuoc = @MaThuoc)
	where MaHoaDon in(select MaHoaDon 
					  from CTHD
					  where MaLoaiThuoc = @MaThuoc)
end
go
--Xoa mot loai thuoc
create proc XoaThuoc
@MaThuoc int
as
begin
	delete THUOC where MaLoaiThuoc = @MaThuoc
end
go
--So luong thuoc hien co
create proc SoThuocHienCo
@SoLuong int output
as
begin
	set @SoLuong = (select Count(TenLoaiThuoc) from THUOC) 
end
go
--BENH
--load danh sách benh
create proc LoadBenh
as
begin
	select * from BENH
end
go
--Thêm 1 loại benh
create proc ThemBenh
@TenBenh nvarchar(50)
AS
BEGIN
	insert into BENH(TenLoaiBenh) values(@TenBenh)
END
go
--Thay đổi thông tin benh
create proc SuaBenh
@TenBenh nvarchar(50),
@MaBenh int
as
begin
	update BENH set TenLoaiBenh = @TenBenh
	where MaLoaiBenh = @MaBenh
end
go
--Xoa mot loai benh
create proc XoaBenh
@MaBenh int
as
begin
	delete BENH where MaLoaiBenh = @MaBenh
end
go
--So luong benh hien co
create proc SoBenhHienCo
@SoLuong int output
as
begin
	set @SoLuong = (select Count(TenLoaiBenh) from BENH) 
end
go
--DONVI
--load danh sách don vi
create proc LoadDonVi
as
begin
	select * from DONVI
end
go
--Thêm 1 loại don vi
create proc ThemDonVi
@TenDonVi nvarchar(50)
AS
BEGIN
	insert into DONVI(TenLoaiDonVi) values(@TenDonVi)
END
go
--Thay đổi thông tin don vi
create proc SuaDonVi
@TenDonVi nvarchar(50),
@MaDonVi int
as
begin
	update DONVI set TenLoaiDonVi = @TenDonVi
	where MaLoaiDonVi = @MaDonVi
end
go
--Xoa mot loai don vi
create proc XoaDonVi
@MaDonVi int
as
begin
	delete DONVI where MaLoaiDonVi = @MaDonVi
end
go
--So luong don vi hien co
create proc SoDonViHienCo
@SoLuong int output
as
begin
	set @SoLuong = (select Count(TenLoaiDonVi) from DONVI) 
end
go
--CACHDUNG
--load danh sách cach dung
create proc LoadCachDung
as
begin
	select * from CACHDUNG
end
go
--Thêm 1 loại cach dung
create proc ThemCachDung
@TenCachDung nvarchar(50)
AS
BEGIN
	insert into CACHDUNG(TenCachDung) values(@TenCachDung)
END
go
--Thay đổi thông tin cach dung
create proc SuaCachDung
@TenCachDung nvarchar(50),
@MaCD int
as
begin
	update CACHDUNG set TenCachDung = @TenCachDung
	where MaCachDung = @MaCD
end
go
--Xoa mot loai cach dung
create proc XoaCachDung
@MaCD int
as
begin
	delete CACHDUNG where MaCachDung = @MaCD
end
go
--So luong cach dung hien co
create proc SoCachDungHienCo
@SoLuong int output
as
begin
	set @SoLuong = (select Count(TenCachDung) from CACHDUNG) 
end
go
--PHIEUKHAMBENH va CT_PHIEUKHAMBENH
--load danh sach benh nhan cho kham
create proc LoadChoKham
as
begin
	select MaBenhNhan,TenBenhNhan from BENHNHAN 
	where MaBenhNhan not in(select MaBenhNhan from PHIEUKHAMBENH)
end
go
--load danh sach benh nhan da kham
create proc LoadDaKham
as
begin
	select BENHNHAN.MaBenhNhan,TenBenhNhan, MaPhieuKham, MaLoaiBenh from PHIEUKHAMBENH, BENHNHAN 
	where PHIEUKHAMBENH.MaBenhNhan = BENHNHAN.MaBenhNhan
end
go
--Hien thong tin benh nhan
create proc HienThongTin
@MaBenhNhan int
as
begin
	select NgaySinh, DiaChi
	from BENHNHAN
	where MaBenhNhan = @MaBenhNhan
end
go
--Them mot phieu kham benh
create proc ThemPhieuKhamBenh
@MaBenhNhan int,
@MaBenh int,
@TrieuChung nvarchar(50)
as
begin
	insert into PHIEUKHAMBENH(MaBenhNhan,MaLoaiBenh,TrieuChung) values (@MaBenhNhan,@MaBenh,@TrieuChung)
end
go
--Them mot chi tiet phaieu kham benh
create proc  ThemCTPhieuKhambenh
@MaPhieuKham int,
@MaThuoc int,
@MaDonVi int,
@SoLuong int,
@MaCachDung int
as
begin
	insert into CT_PHIEUKHAMBENH values(@MaThuoc,@MaPhieuKham,@MaDonVi,@SoLuong,@MaCachDung)
	update THUOC set SoLuong = SoLuong - @SoLuong 
	where MaLoaiThuoc = @MaThuoc 
end
go
--Kiem tra so luong cua loai thuoc hien tai
create proc KiemTraThuoc
@SoLuong int,
@TenThuoc nvarchar(50),
@KetQua int output
as
begin
	if not exists(select * from THUOC where TenLoaiThuoc = @TenThuoc and SoLuong >= @SoLuong)
	begin
		set @KetQua = 1
	end
	else
		begin
			set @KetQua = 0
		end
end
go
--Load thoong tin phieu kham benh va chi tiet phieu kahm benh
create proc LoadThongTin
@MaPhieuKham int
as
begin
	select TenLoaiBenh,TrieuChung,TenLoaiThuoc,TenLoaiDonVi,TenCachDung,CTPK.SoLuong
	from PHIEUKHAMBENH PKB, CT_PHIEUKHAMBENH CTPK, THUOC TH, DONVI DV,BENH BE,CACHDUNG CD
	where PKB.MaPhieuKham = CTPK.MaPhieuKham
	and PKB.MaLoaiBenh = BE.MaLoaiBenh
	and CTPK.MaLoaiThuoc = TH.MaLoaiThuoc
	and CTPK.MaCachDung = CD.MaCachDung
	and CTPK.MaLoaiDonVi = DV.MaLoaiDonVi
	and PKB.MaPhieuKham = @MaPhieuKham 
end
go
--HAM PHU
--Cài đặt lại số bệnh nhân tối đa và tiền khám
create proc CaiDat
@SoToiDa int,
@TienKham money
as
begin
	update THAMSO set dactrung = @SoToiDa
	where ten = N'Số bệnh nhân tối đa'
	update THAMSO set dactrung = @TienKham
	where ten = N'Tiền khám'
end
go
--lay gia tri so benh nhan toi da
create proc BenhNhanToiDa
@KetQua int output
as
begin
	select @KetQua = dactrung from THAMSO
	where ten = N'Số bệnh nhân tối đa'
end
go
--Lay gia tri tien kham
create proc SoTienKham
@KetQua money output
as
begin
	select @KetQua = dactrung from THAMSO
	where ten = N'Tiền khám'
end
go
--Tim ma thuoc
create proc FMaThuoc
@TenThuoc nvarchar(50),
@KetQua money output
as
begin
	select @KetQua = MaLoaiThuoc from THUOC where TenLoaiThuoc = @TenThuoc
end
go
--Tim ma don vi
create proc FMaDonVi
@TenDonVi nvarchar(50),
@KetQua int output
as
begin
	select @KetQua = MaLoaiDonVi from DONVI where TenLoaiDonVi = @TenDonVi
end
go
--Tim ma benh
create proc FMaBenh
@TenBenh nvarchar(50),
@KetQua int output
as
begin
	select @KetQua = MaLoaiBenh from BENH where TenLoaiBenh = @TenBenh
end
go
--Tim ma cach dung
create proc FMaCachDung
@TenCachDung nvarchar(50),
@KetQua int output
as
begin
	select @KetQua = MaCachDung from CACHDUNG where TenCachDung = @TenCachDung
end
go
--Tim ma phieu kham
create proc FMaPhieuKham
@MaBenhNhan int,
@MaBenh int,
@KetQua int output
as
begin
 select @KetQua = MaPhieuKham from PHIEUKHAMBENH where MaBenhNhan = @MaBenhNhan and MaLoaiBenh = @MaBenh
end
go
--TIMKIEM
--Tim theo ten
create proc TimTen
@TenBenhNhan nvarchar(50)
as
begin
	select TenBenhNhan, NgayKham, TenLoaiBenh, TrieuChung
	from BENHNHAN BN, PHIEUKHAMBENH PKB, BENH BE
	where BN.MaBenhNhan = PKB.MaBenhNhan
	and PKB.MaLoaiBenh = BE.MaLoaiBenh
	and TenBenhNhan like ('%' + @TenBenhNhan + '%')
end
go
--tim ngay
create proc TimNgay
@NgayKham smalldatetime
as
begin
	select TenBenhNhan, NgayKham, TenLoaiBenh, TrieuChung
	from BENHNHAN BN, PHIEUKHAMBENH PKB, BENH BE
	where BN.MaBenhNhan = PKB.MaBenhNhan
	and PKB.MaLoaiBenh = BE.MaLoaiBenh
	and NgayKham = @NgayKham
end
go
--HOADON va CTHD
--Xuat hoa don
create proc TaoHoaDon
@MaBenhNhan int
as
begin
		insert into HOADON(MaBenhNhan,NgayKham,TongTien) values (@MaBenhNhan,(select NgayKham from BENHNHAN where MaBenhNhan = @MaBenhNhan),(select sum(CTPK.SoLuong * DongiaThuoc)																																			 from PHIEUKHAMBENH PKB, CT_PHIEUKHAMBENH CTPK, THUOC TH
																																		     where PKB.MaPhieuKham = CTPK.MaPhieuKham
																																			 and CTPK.MaLoaiThuoc = TH.MaLoaiThuoc
																																			 and PKB.MaBenhNhan = @MaBenhNhan
																																			 group by MaBenhNhan))
		--update HOADON set NgayKham = (select NgayKham from BENHNHAN where MaBenhNhan = @MaBenhNhan), TongTien = (select sum(CTPK.SoLuong * DongiaThuoc)
																																			 --from PHIEUKHAMBENH PKB, CT_PHIEUKHAMBENH CTPK, THUOC TH
																																		     --where PKB.MaPhieuKham = CTPK.MaPhieuKham
																																			 --and CTPK.MaLoaiThuoc = TH.MaLoaiThuoc
																																			 --and PKB.MaBenhNhan = @MaBenhNhan
																																			 --group by MaBenhNhan)
		--where MaBenhNhan = @MaBenhNha
end
go
--Them chi tiet hoa don
create proc TaoCTHoaDon
@MaBenhNhan int
as
begin

		insert into CTHD(MaHoaDon,MaLoaiThuoc,SoLuong,ThanhTien)
		select MaHoaDon ,TH.MaLoaiThuoc, CTPK.SoLuong,DongiaThuoc  
		from PHIEUKHAMBENH PKB, CT_PHIEUKHAMBENH CTPK, THUOC TH ,HOADON
		where PKB.MaPhieuKham = CTPK.MaPhieuKham
		and CTPK.MaLoaiThuoc = TH.MaLoaiThuoc
		and HOADON.MaBenhNhan = PKB.MaBenhNhan
		and PKB.MaBenhNhan = @MaBenhNhan
end
go
--Load hoa don
create proc XuatHoaDon
@MaBenhNhan int
as
begin
	select MaHoaDon,NgayKham,TongTien from HOADON
	where MaBenhNhan = @MaBenhNhan
end
go
--Load chi tiet hoa don
create proc XuatCTHoaDon
@MaHoaDon int
as
begin
	select TenLoaiThuoc, CTHD.SoLuong, THUOC.DongiaThuoc
	from CTHD , THUOC
	where CTHD.MaLoaiThuoc = THUOC.MaLoaiThuoc
	and CTHD.MaHoaDon = @MaHoaDon
end
go
--BAOCAO
--Chọn các tháng 
create proc ChonThang
as
begin
	select cast(datepart(mm,HOADON.NgayKham) as varchar)+'/'+cast(datepart(yyyy,NgayKham) as varchar) as MonthYear
	into Temp
	from HOADON
	select * from Temp
	where MonthYear <> (cast(datepart(mm,GETDATE()) as varchar)+'/'+cast(datepart(yyyy,GETDATE()) as varchar))
	group by MonthYear
	order by MonthYear desc
	drop table temp
end
go

--lap chi tiet bao cao ngay
create proc ChiTietBaoCao
@NgayDauThang smalldatetime,
@NgayCuoiThang smalldatetime
as
begin
	select NgayKham, count(MaBenhNhan), SUM(TongTien) 
	from HOADON
	where DATEDIFF(month,@NgayDauThang,NgayKham) >=0 and DATEDIFF(month,@NgayCuoiThang,NgayKham) <= 0
	group by NgayKham
end
go
--chi tiet bao cao theo thuoc
create proc ChiTietThuoc
@NgayDauThang smalldatetime,
@NgayCuoiThang smalldatetime
as
begin
	select TenLoaiThuoc , DongiaThuoc, Sum(CTHD.SoLuong), count(CTHD.MaHoaDon)
	from CTHD , THUOC, HOADON
	where CTHD.MaLoaiThuoc = THUOC.MaLoaiThuoc
	and CTHD.MaHoaDon = HOADON.MaHoaDon
	and DATEDIFF(month,@NgayDauThang,NgayKham) >=0 and DATEDIFF(month,@NgayCuoiThang,NgayKham) <= 0
	group by CTHD.MaLoaiThuoc,TenLoaiThuoc,DongiaThuoc
end  
go
--DANGNHAP
create table DANGNHAP
(
	MaLoai int,
	TenDangNhap nvarchar(50) COLLATE SQL_Latin1_General_CP1_CS_AS,
	MatKhau nvarchar(50) COLLATE SQL_Latin1_General_CP1_CS_AS,
	primary key(TenDangNhap)
)
go
insert into DANGNHAP values (1,'admin','21232f297a57a5a743894a0e4a801fc3')
insert into DANGNHAP values (2,'bacsi','0a879c18e00317611a8bc494e4a306a4')
insert into DANGNHAP values (3,'nhanvien','2a2fa4fe2fa737f129ef2d127b861b7e')
go
--Dang nhap tai khoan
create proc DangNhapTaiKhoan
@TaiKhoan nvarchar(50),
@MK nvarchar(50),
@KetQua int output
as
begin
	if exists (select * from DANGNHAP where TenDangNhap = @TaiKhoan and MatKhau = @MK COLLATE SQL_Latin1_General_CP1_CS_AS)
		begin
			select @KetQua = MaLoai from DANGNHAP where TenDangNhap = @TaiKhoan
			return 
		end
		else
			begin
				set @KetQua = 0
			end
end
go
--them tai khoan
create proc ThemTaiKhoan
@LoaiDangNhap int,
@TenDangNhap nvarchar(50),
@Pass nvarchar(50)
as
begin
	insert into DANGNHAP values (@LoaiDangNhap, @TenDangNhap , @Pass)
end
go
--Xoa tai khoan
create proc XoaTaiKhoan
@TenTaiKhoan nvarchar(50)
as
begin
	delete from DANGNHAP where TenDangNhap = @TenTaiKhoan COLLATE SQL_Latin1_General_CP1_CS_AS
end
go
--Cap nhat mat khau va loai tai khoan
create proc CapNhatTaiKhoan
@LoaiTaiKhoan int,
@TenDangNhap nvarchar(50),
@Pass nvarchar(50)
as
begin
	update DANGNHAP set MaLoai = @LoaiTaiKhoan, MatKhau = @Pass where TenDangNhap = @TenDangNhap COLLATE SQL_Latin1_General_CP1_CS_AS  
end
go
--Load danh sach tai khoan
create proc LoadTaiKhoan
as
begin
	select * from DANGNHAP
end
go
--chi cap nhat loai dang nhap
create proc CapNhatLoai
@LoaiTaiKhoan int,
@TenDangNhap nvarchar(50)
as
begin
	update DANGNHAP set MaLoai = @LoaiTaiKhoan where TenDangNhap = @TenDangNhap COLLATE SQL_Latin1_General_CP1_CS_AS  
end
go
--chi cap nhat mat khau
create proc CapNhatMatKhau
@Pass nvarchar(50),
@TenDangNhap nvarchar(50)
as
begin
	update DANGNHAP set MatKhau = @Pass where TenDangNhap = @TenDangNhap COLLATE SQL_Latin1_General_CP1_CS_AS  
end
go
--THONGTIN
--Them thong tin
create proc ThemThongTin
@ThongTin nvarchar(1000)
as
begin
	insert into THONGTIN(ChiTietThongTin) values (@ThongTin)
end
go
--Load thong tin
create proc LoadInfo
as
begin
	select * from THONGTIN
end
select * from BENHNHAN
go
--
--
--
--
--
