-- Tạo database
CREATE DATABASE QLGIATLA;
USE QLGIATLA;

CREATE TABLE KHACHHANG (
    MaKH CHAR(5) PRIMARY KEY,         -- Mã khách hàng
    TenKH NVARCHAR(100) NOT NULL,    -- Tên khách hàng
    DiaChi NVARCHAR(255),            -- Địa chỉ
    DienThoai NVARCHAR(15),          -- Số điện thoại
    LoaiKH NVARCHAR(50)              -- Loại khách hàng
);

-- Chèn dữ liệu vào bảng KHACHHANG
INSERT INTO KHACHHANG (MaKH, TenKH, DiaChi, DienThoai, LoaiKH) VALUES
('KH001', N'Nguyễn Văn Hùng', N'12 Nguyễn Trãi, Thanh Xuân, Hà Nội', '0987654321', N'Khách lẻ'),
('KH002', N'Trần Thị Mai', N'34 Vũ Trọng Phụng, Thanh Xuân, Hà Nội', '0978123456', N'Khách VIP'),
('KH003', N'Phạm Văn Dũng', N'56 Nguyễn Xiển, Thanh Xuân, Hà Nội', '0967234567', N'Khách lẻ'),
('KH004', N'Lê Thị Hòa', N'78 Trường Chinh, Thanh Xuân, Hà Nội', '0956345678', N'Khách thành viên'),
('KH005', N'Hoàng Văn Quang', N'90 Khương Đình, Thanh Xuân, Hà Nội', '0945456789', N'Khách lẻ'),
('KH006', N'Vũ Thị Lan', N'23 Quan Nhân, Thanh Xuân, Hà Nội', '0934567890', N'Khách VIP'),
('KH007', N'Đặng Văn Tùng', N'45 Giáp Nhất, Thanh Xuân, Hà Nội', '0923678901', N'Khách lẻ'),
('KH008', N'Bùi Thị Ngọc', N'67 Lê Trọng Tấn, Thanh Xuân, Hà Nội', '0912789012', N'Khách thành viên'),
('KH009', N'Ngô Văn Bình', N'89 Hoàng Đạo Thúy, Thanh Xuân, Hà Nội', '0901890123', N'Khách lẻ'),
('KH010', N'Tạ Thị Hạnh', N'101 Nguyễn Tuân, Thanh Xuân, Hà Nội', '0891901234', N'Khách VIP'),
('KH011', N'Nguyễn Thị Lan', N'22 Hoàng Văn Thái, Thanh Xuân, Hà Nội', '0881765432', N'Khách lẻ'),
('KH012', N'Phạm Minh Tuấn', N'33 Khuất Duy Tiến, Thanh Xuân, Hà Nội', '0871654321', N'Khách VIP'),
('KH013', N'Hoàng Thị Hoa', N'44 Ngụy Như Kon Tum, Thanh Xuân, Hà Nội', '0861543210', N'Khách lẻ'),
('KH014', N'Lê Văn Cường', N'55 Chính Kinh, Thanh Xuân, Hà Nội', '0851432109', N'Khách thành viên'),
('KH015', N'Trần Thị Thảo', N'66 Tô Vĩnh Diện, Thanh Xuân, Hà Nội', '0841321098', N'Khách lẻ'),
('KH016', N'Bùi Văn Sơn', N'77 Hạ Đình, Thanh Xuân, Hà Nội', '0831210987', N'Khách VIP'),
('KH017', N'Đoàn Thị Thanh', N'88 Kim Giang, Thanh Xuân, Hà Nội', '0821109876', N'Khách lẻ'),
('KH018', N'Nguyễn Văn An', N'99 Phan Đình Giót, Thanh Xuân, Hà Nội', '0811098765', N'Khách thành viên'),
('KH019', N'Trịnh Thị Kim', N'111 Vương Thừa Vũ, Thanh Xuân, Hà Nội', '0801987654', N'Khách lẻ'),
('KH020', N'Tạ Văn Hữu', N'121 Nguyễn Ngọc Nại, Thanh Xuân, Hà Nội', '0791876543', N'Khách VIP');

CREATE TABLE NHANVIEN (
    MaNV CHAR(5) PRIMARY KEY,         -- Mã nhân viên
    TenNV NVARCHAR(100) NOT NULL,     -- Tên nhân viên
    ChucVu NVARCHAR(50),              -- Chức vụ
    Luong DECIMAL(10, 2)              -- Lương
);
-- Chèn dữ liệu vào bảng NHANVIEN
INSERT INTO NHANVIEN (MaNV, TenNV, ChucVu, Luong) VALUES
('NV001', N'Nguyễn Văn A', N'Quản lý', 15000000),
('NV002', N'Trần Thị B', N'Nhân viên giặt', 8000000),
('NV003', N'Lê Văn C', N'Nhân viên ủi', 7500000),
('NV004', N'Hoàng Thị D', N'Nhân viên giao hàng', 7000000),
('NV005', N'Phạm Văn E', N'Nhân viên thu ngân', 8500000),
('NV006', N'Vũ Thị F', N'Nhân viên giặt', 8000000),
('NV007', N'Đặng Văn G', N'Nhân viên ủi', 7500000),
('NV008', N'Bùi Thị H', N'Nhân viên giao hàng', 7000000),
('NV009', N'Ngô Văn I', N'Nhân viên thu ngân', 8500000),
('NV010', N'Tạ Thị J', N'Nhân viên giặt', 8000000),
('NV011', N'Nguyễn Văn K', N'Nhân viên ủi', 7500000),
('NV012', N'Trần Thị L', N'Nhân viên giao hàng', 7000000),
('NV013', N'Lê Văn M', N'Nhân viên thu ngân', 8500000),
('NV014', N'Hoàng Thị N', N'Nhân viên giặt', 8000000),
('NV015', N'Phạm Văn O', N'Nhân viên ủi', 7500000),
('NV016', N'Vũ Thị P', N'Nhân viên giao hàng', 7000000),
('NV017', N'Đặng Văn Q', N'Nhân viên thu ngân', 8500000),
('NV018', N'Bùi Thị R', N'Nhân viên giặt', 8000000),
('NV019', N'Ngô Văn S', N'Nhân viên ủi', 7500000),
('NV020', N'Tạ Thị T', N'Nhân viên giao hàng', 7000000);

CREATE TABLE LOAIDICHVU (
    MaLoaiDV CHAR(5) PRIMARY KEY,  -- Mã loại dịch vụ
    TenLoai NVARCHAR(100) NOT NULL  -- Tên loại dịch vụ
);

-- Thêm dữ liệu vào bảng LOAIDICHVU
INSERT INTO LOAIDICHVU (MaLoaiDV, TenLoai) VALUES
('LDV01', N'Giặt khô'),
('LDV02', N'Giặt hấp'),
('LDV03', N'Giặt nước'),
('LDV04', N'Giặt chăn ga'),
('LDV05', N'Giặt đồ len'),
('LDV06', N'Giặt đồ dạ'),
('LDV07', N'Giặt rèm cửa'),
('LDV08', N'Giặt thảm'),
('LDV09', N'Giặt giày'),
('LDV10', N'Giặt đồ cao cấp');

CREATE TABLE DICHVUBOSUNG (
    MaDVBS CHAR(5) PRIMARY KEY,  -- Mã dịch vụ bổ sung
    TenDVBS NVARCHAR(100) NOT NULL,  -- Tên dịch vụ bổ sung
    MoTa NVARCHAR(255),  -- Mô tả dịch vụ
    PhiDVBS DECIMAL(10,2) CHECK (PhiDVBS >= 0)  -- Phí dịch vụ, đảm bảo không âm
);

-- Chèn dữ liệu vào bảng DICHVUBOSUNG
INSERT INTO DICHVUBOSUNG (MaDVBS, TenDVBS, MoTa, PhiDVBS) VALUES
('DVBS1', N'Giao hàng tận nơi', N'Giao quần áo sau khi giặt đến tận nhà khách hàng', 30000),
('DVBS2', N'Ủi hơi nước', N'Là/ủi quần áo bằng hơi nước để giữ form đẹp hơn', 20000);

CREATE TABLE DONHANG (
    MaDH CHAR(10) PRIMARY KEY,  -- Mã đơn hàng
    MaKH CHAR(5) NOT NULL,  -- Mã khách hàng
    NgayDat DATE NOT NULL,  -- Ngày đặt hàng
    NgayGiao DATE,  -- Ngày giao hàng (có thể NULL nếu chưa giao)
    TrangThai NVARCHAR(50) NOT NULL,  -- Trạng thái đơn hàng

    CONSTRAINT FK_DONHANG_KHACHHANG FOREIGN KEY (MaKH) REFERENCES KHACHHANG(MaKH)
);

-- Chèn dữ liệu vào bảng DONHANG
INSERT INTO DONHANG (MaDH, MaKH, NgayDat, NgayGiao, TrangThai) VALUES
('DH001', 'KH001', '2024-02-01', '2024-02-03', N'Hoàn thành'),
('DH002', 'KH002', '2024-02-02', NULL, N'Chờ xử lý'),
('DH003', 'KH003', '2024-02-03', NULL, N'Đang giặt'),
('DH004', 'KH004', '2024-02-04', '2024-02-06', N'Đã giao'),
('DH005', 'KH005', '2024-02-05', NULL, N'Chờ xử lý'),
('DH006', 'KH006', '2024-02-06', '2024-02-08', N'Hoàn thành'),
('DH007', 'KH007', '2024-02-07', NULL, N'Đang giặt'),
('DH008', 'KH008', '2024-02-08', '2024-02-10', N'Đã giao'),
('DH009', 'KH009', '2024-02-09', NULL, N'Chờ xử lý'),
('DH010', 'KH010', '2024-02-10', NULL, N'Đang giặt'),
('DH011', 'KH001', '2024-02-11', '2024-02-13', N'Hoàn thành'),
('DH012', 'KH002', '2024-02-12', NULL, N'Chờ xử lý'),
('DH013', 'KH003', '2024-02-13', '2024-02-15', N'Đã giao'),
('DH014', 'KH004', '2024-02-14', NULL, N'Đang giặt'),
('DH015', 'KH005', '2024-02-15', '2024-02-17', N'Hoàn thành'),
('DH016', 'KH006', '2024-02-16', NULL, N'Chờ xử lý'),
('DH017', 'KH007', '2024-02-17', '2024-02-19', N'Đã giao'),
('DH018', 'KH008', '2024-02-18', NULL, N'Đang giặt'),
('DH019', 'KH009', '2024-02-19', NULL, N'Chờ xử lý'),
('DH020', 'KH010', '2024-02-20', '2024-02-22', N'Hoàn thành'),
('DH021', 'KH001', '2024-02-21', NULL, N'Chờ xử lý'),
('DH022', 'KH002', '2024-02-22', '2024-02-24', N'Đã giao'),
('DH023', 'KH003', '2024-02-23', NULL, N'Đang giặt'),
('DH024', 'KH004', '2024-02-24', '2024-02-26', N'Hoàn thành'),
('DH025', 'KH005', '2024-02-25', NULL, N'Chờ xử lý'),
('DH026', 'KH006', '2024-02-26', '2024-02-28', N'Đã giao'),
('DH027', 'KH007', '2024-02-27', NULL, N'Đang giặt'),
('DH028', 'KH008', '2024-02-28', '2024-03-02', N'Hoàn thành'),
('DH029', 'KH009', '2024-02-29', NULL, N'Chờ xử lý'),
('DH030', 'KH010', '2024-03-01', NULL, N'Đang giặt');

CREATE TABLE THANHTOAN (
    MaTT CHAR(10) PRIMARY KEY,  -- Mã thanh toán
    MaDH CHAR(10) NOT NULL,  -- Mã đơn hàng
    NgayTT DATE NOT NULL,  -- Ngày thanh toán
    SoTien DECIMAL(18,2) CHECK (SoTien >= 0) NOT NULL,  -- Số tiền thanh toán, đảm bảo không âm
    HinhThucTT NVARCHAR(50) NOT NULL,  -- Hình thức thanh toán

    CONSTRAINT FK_THANHTOAN_DONHANG FOREIGN KEY (MaDH) REFERENCES DONHANG(MaDH)
);

INSERT INTO THANHTOAN (MaTT, MaDH, NgayTT, SoTien, HinhThucTT) VALUES
('TT001', 'DH001', '2024-01-05', 100000, N'Tiền mặt'),
('TT002', 'DH002', '2024-01-06', 50000, N'Chuyển khoản'),
('TT003', 'DH003', '2024-01-07', 120000, N'Tiền mặt'),
('TT004', 'DH004', '2024-01-08', 50000, N'Tiền mặt'),
('TT005', 'DH005', '2024-01-09', 100000, N'Chuyển khoản'),
('TT006', 'DH006', '2024-01-10', 70000, N'Tiền mặt'),
('TT007', 'DH007', '2024-01-11', 80000, N'Tiền mặt'),
('TT008', 'DH008', '2024-01-12', 150000, N'Chuyển khoản'),
('TT009', 'DH009', '2024-01-13', 60000, N'Tiền mặt'),
('TT010', 'DH010', '2024-01-14', 100000, N'Chuyển khoản'),
('TT011', 'DH011', '2024-01-15', 90000, N'Tiền mặt'),
('TT012', 'DH012', '2024-01-16', 110000, N'Chuyển khoản'),
('TT013', 'DH013', '2024-01-17', 130000, N'Tiền mặt'),
('TT014', 'DH014', '2024-01-18', 140000, N'Chuyển khoản'),
('TT015', 'DH015', '2024-01-19', 125000, N'Tiền mặt'),
('TT016', 'DH016', '2024-01-20', 95000, N'Chuyển khoản'),
('TT017', 'DH017', '2024-01-21', 105000, N'Tiền mặt'),
('TT018', 'DH018', '2024-01-22', 115000, N'Chuyển khoản'),
('TT019', 'DH019', '2024-01-23', 98000, N'Tiền mặt'),
('TT020', 'DH020', '2024-01-24', 102000, N'Chuyển khoản'),
('TT021', 'DH021', '2024-01-25', 107000, N'Tiền mặt'),
('TT022', 'DH022', '2024-01-26', 99000, N'Chuyển khoản'),
('TT023', 'DH023', '2024-01-27', 111000, N'Tiền mặt'),
('TT024', 'DH024', '2024-01-28', 121000, N'Chuyển khoản'),
('TT025', 'DH025', '2024-01-29', 132000, N'Tiền mặt'),
('TT026', 'DH026', '2024-01-30', 97000, N'Chuyển khoản'),
('TT027', 'DH027', '2024-01-31', 126000, N'Tiền mặt'),
('TT028', 'DH028', '2024-02-01', 89000, N'Chuyển khoản'),
('TT029', 'DH029', '2024-02-02', 113000, N'Tiền mặt'),
('TT030', 'DH030', '2024-02-03', 108000, N'Chuyển khoản');



INSERT INTO DONHANG_DICHVUBOSUNG (MaDH, MaDVBS, SoLuong, ThanhTien) VALUES
('DH001', 'DVBS1', 1, 20000),
('DH002', 'DVBS2', 2, 40000),
('DH003', 'DVBS1', 1, 20000),
('DH004', 'DVBS2', 1, 20000),
('DH005', 'DVBS1', 2, 40000),
('DH006', 'DVBS2', 1, 20000),
('DH007', 'DVBS1', 1, 20000),
('DH008', 'DVBS2', 2, 40000),
('DH009', 'DVBS1', 2, 40000),
('DH010', 'DVBS2', 1, 20000),
('DH011', 'DVBS1', 1, 20000),
('DH012', 'DVBS2', 2, 40000),
('DH013', 'DVBS1', 1, 20000),
('DH014', 'DVBS2', 1, 20000),
('DH015', 'DVBS1', 2, 40000),
('DH016', 'DVBS2', 1, 20000),
('DH017', 'DVBS1', 1, 20000),
('DH018', 'DVBS2', 2, 40000),
('DH019', 'DVBS1', 2, 40000),
('DH020', 'DVBS2', 1, 20000),
('DH021', 'DVBS1', 1, 20000),
('DH022', 'DVBS2', 2, 40000),
('DH023', 'DVBS1', 1, 20000),
('DH024', 'DVBS2', 1, 20000),
('DH025', 'DVBS1', 2, 40000),
('DH026', 'DVBS2', 1, 20000),
('DH027', 'DVBS1', 1, 20000),
('DH028', 'DVBS2', 2, 40000),
('DH029', 'DVBS1', 2, 40000),
('DH030', 'DVBS2', 1, 20000);

SELECT * FROM KHACHHANG;
SELECT * FROM NHANVIEN;
SELECT * FROM LOAIDICHVU;
SELECT * FROM DICHVUBOSUNG;
SELECT * FROM DONHANG;
SELECT * FROM THANHTOAN;
SELECT * FROM DONHANG_DICHVUBOSUNG;


--VIEW
-- 1. View hiển thị thông tin đơn hàng và tổng chi phí (bao gồm dịch vụ bổ sung)
CREATE VIEW View_DonHang_TongChiPhi AS
SELECT 
    DH.MaDH, 
    DH.MaKH, 
    DH.NgayDat, 
    DH.NgayGiao, 
    DH.TrangThai, 
    (SUM(TT.SoTien) + ISNULL(SUM(DHDVBS.ThanhTien), 0)) AS TongChiPhi
FROM 
    DONHANG DH
LEFT JOIN 
    THANHTOAN TT ON DH.MaDH = TT.MaDH
LEFT JOIN 
    DONHANG_DICHVUBOSUNG DHDVBS ON DH.MaDH = DHDVBS.MaDH
GROUP BY 
    DH.MaDH, DH.MaKH, DH.NgayDat, DH.NgayGiao, DH.TrangThai;

-- 2. View hiển thị thông tin khách hàng và tổng số tiền họ đã chi tiêu
CREATE VIEW View_KhachHang_TongChiTieu AS
SELECT 
    KH.MaKH, 
    KH.TenKH, 
    KH.LoaiKH, 
    SUM(TT.SoTien) AS TongChiTieu
FROM 
    KHACHHANG KH
JOIN 
    DONHANG DH ON KH.MaKH = DH.MaKH
JOIN 
    THANHTOAN TT ON DH.MaDH = TT.MaDH
GROUP BY 
    KH.MaKH, KH.TenKH, KH.LoaiKH;

-- 3. View hiển thị thông tin đơn hàng chưa hoàn thành
CREATE VIEW View_DonHang_ChuaHoanThanh AS
SELECT 
    DH.MaDH, 
    DH.MaKH, 
    DH.NgayDat, 
    DH.NgayGiao, 
    DH.TrangThai
FROM 
    DONHANG DH
WHERE 
    DH.TrangThai NOT IN (N'Hoàn thành', N'Đã giao');

-- 4. View hiển thị thông tin dịch vụ bổ sung được sử dụng nhiều nhất
CREATE VIEW View_DichVuBoSung_Popular AS
SELECT 
    DVBS.MaDVBS, 
    DVBS.TenDVBS, 
    COUNT(DHDVBS.MaDH) AS SoLuongSuDung
FROM 
    DICHVUBOSUNG DVBS
JOIN 
    DONHANG_DICHVUBOSUNG DHDVBS ON DVBS.MaDVBS = DHDVBS.MaDVBS
GROUP BY 
    DVBS.MaDVBS, DVBS.TenDVBS;

-- 5. View hiển thị thông tin đơn hàng và chi tiết dịch vụ bổ sung
CREATE VIEW View_DonHang_ChiTietDichVuBoSung AS
SELECT 
    DH.MaDH, 
    DH.MaKH, 
    DVBS.TenDVBS, 
    DHDVBS.SoLuong, 
    DHDVBS.ThanhTien
FROM 
    DONHANG DH
JOIN 
    DONHANG_DICHVUBOSUNG DHDVBS ON DH.MaDH = DHDVBS.MaDH
JOIN 
    DICHVUBOSUNG DVBS ON DHDVBS.MaDVBS = DVBS.MaDVBS;

-- 6. View hiển thị thông tin khách hàng và số lần sử dụng dịch vụ
CREATE VIEW View_KhachHang_SoLanSuDungDichVu AS
SELECT 
    KH.MaKH, 
    KH.TenKH, 
    COUNT(DH.MaDH) AS SoLanSuDung
FROM 
    KHACHHANG KH
JOIN 
    DONHANG DH ON KH.MaKH = DH.MaKH
GROUP BY 
    KH.MaKH, KH.TenKH;

-- 7. View hiển thị thông tin đơn hàng và thời gian xử lý
CREATE VIEW View_DonHang_ThoiGianXuLy AS
SELECT 
    DH.MaDH, 
    DH.MaKH, 
    DH.NgayDat, 
    DH.NgayGiao, 
    DATEDIFF(DAY, DH.NgayDat, DH.NgayGiao) AS ThoiGianXuLy
FROM 
    DONHANG DH
WHERE 
    DH.NgayGiao IS NOT NULL;

-- 8. View hiển thị thông tin đơn hàng và hình thức thanh toán
CREATE VIEW View_DonHang_HinhThucThanhToan AS
SELECT 
    DH.MaDH, 
    DH.MaKH, 
    TT.HinhThucTT, 
    TT.SoTien
FROM 
    DONHANG DH
JOIN 
    THANHTOAN TT ON DH.MaDH = TT.MaDH;

-- 9. View hiển thị thông tin khách hàng VIP và tổng số tiền họ đã chi tiêu
CREATE VIEW View_KhachHangVIP_TongChiTieu AS
SELECT 
    KH.MaKH, 
    KH.TenKH, 
    KH.LoaiKH, 
    SUM(TT.SoTien) AS TongChiTieu
FROM 
    KHACHHANG KH
JOIN 
    DONHANG DH ON KH.MaKH = DH.MaKH
JOIN 
    THANHTOAN TT ON DH.MaDH = TT.MaDH
WHERE 
    KH.LoaiKH = N'Khách VIP'
GROUP BY 
    KH.MaKH, KH.TenKH, KH.LoaiKH;

-- 10. View hiển thị thông tin đơn hàng và tổng thời gian xử lý trung bình
CREATE VIEW View_DonHang_ThoiGianXuLyTrungBinh AS
SELECT 
    AVG(DATEDIFF(DAY, DH.NgayDat, DH.NgayGiao)) AS ThoiGianXuLyTrungBinh
FROM 
    DONHANG DH
WHERE 
    DH.NgayGiao IS NOT NULL;


SELECT * FROM View_DonHang_TongChiPhi;
SELECT * FROM View_KhachHang_TongChiTieu;
SELECT * FROM View_DonHang_ChuaHoanThanh;
SELECT * FROM View_DichVuBoSung_Popular;
SELECT * FROM View_DonHang_ChiTietDichVuBoSung;
SELECT * FROM View_KhachHang_SoLanSuDungDichVu;
SELECT * FROM View_DonHang_ThoiGianXuLy;
SELECT * FROM View_DonHang_HinhThucThanhToan;
SELECT * FROM View_KhachHangVIP_TongChiTieu;
SELECT * FROM View_DonHang_ThoiGianXuLyTrungBinh;

--PROCEDURE
-- 1. Procedure thêm khách hàng mới
CREATE PROCEDURE sp_ThemKhachHang
    @MaKH CHAR(5),
    @TenKH NVARCHAR(100),
    @DiaChi NVARCHAR(255),
    @DienThoai NVARCHAR(15),
    @LoaiKH NVARCHAR(50)
AS
BEGIN
    INSERT INTO KHACHHANG (MaKH, TenKH, DiaChi, DienThoai, LoaiKH)
    VALUES (@MaKH, @TenKH, @DiaChi, @DienThoai, @LoaiKH);
END;
GO

-- 2. Procedure cập nhật thông tin khách hàng
CREATE PROCEDURE sp_CapNhatKhachHang
    @MaKH CHAR(5),
    @TenKH NVARCHAR(100),
    @DiaChi NVARCHAR(255),
    @DienThoai NVARCHAR(15),
    @LoaiKH NVARCHAR(50)
AS
BEGIN
    UPDATE KHACHHANG
    SET TenKH = @TenKH,
        DiaChi = @DiaChi,
        DienThoai = @DienThoai,
        LoaiKH = @LoaiKH
    WHERE MaKH = @MaKH;
END;
GO

-- 3. Procedure xóa khách hàng
CREATE PROCEDURE sp_XoaKhachHang
    @MaKH CHAR(5)
AS
BEGIN
    DELETE FROM KHACHHANG
    WHERE MaKH = @MaKH;
END;
GO

-- 4. Procedure thêm đơn hàng mới
CREATE PROCEDURE sp_ThemDonHang
    @MaDH CHAR(10),
    @MaKH CHAR(5),
    @NgayDat DATE,
    @NgayGiao DATE,
    @TrangThai NVARCHAR(50)
AS
BEGIN
    INSERT INTO DONHANG (MaDH, MaKH, NgayDat, NgayGiao, TrangThai)
    VALUES (@MaDH, @MaKH, @NgayDat, @NgayGiao, @TrangThai);
END;
GO

-- 5. Procedure cập nhật trạng thái đơn hàng
CREATE PROCEDURE sp_CapNhatTrangThaiDonHang
    @MaDH CHAR(10),
    @TrangThai NVARCHAR(50)
AS
BEGIN
    UPDATE DONHANG
    SET TrangThai = @TrangThai
    WHERE MaDH = @MaDH;
END;
GO

-- 6. Procedure thêm dịch vụ bổ sung vào đơn hàng
CREATE PROCEDURE sp_ThemDichVuBoSung
    @MaDH CHAR(10),
    @MaDVBS CHAR(5),
    @SoLuong INT,
    @ThanhTien DECIMAL(18,2)
AS
BEGIN
    INSERT INTO DONHANG_DICHVUBOSUNG (MaDH, MaDVBS, SoLuong, ThanhTien)
    VALUES (@MaDH, @MaDVBS, @SoLuong, @ThanhTien);
END;
GO

-- 7. Procedure tính tổng chi phí của đơn hàng
CREATE PROCEDURE sp_TinhTongChiPhiDonHang
    @MaDH CHAR(10)
AS
BEGIN
    SELECT 
        DH.MaDH,
        (SUM(TT.SoTien) + ISNULL(SUM(DHDVBS.ThanhTien), 0)) AS TongChiPhi
    FROM 
        DONHANG DH
    LEFT JOIN 
        THANHTOAN TT ON DH.MaDH = TT.MaDH
    LEFT JOIN 
        DONHANG_DICHVUBOSUNG DHDVBS ON DH.MaDH = DHDVBS.MaDH
    WHERE 
        DH.MaDH = @MaDH
    GROUP BY 
        DH.MaDH;
END;
GO

-- 8. Procedure lấy danh sách đơn hàng chưa hoàn thành
CREATE PROCEDURE sp_LayDonHangChuaHoanThanh
AS
BEGIN
    SELECT 
        MaDH, 
        MaKH, 
        NgayDat, 
        NgayGiao, 
        TrangThai
    FROM 
        DONHANG
    WHERE 
        TrangThai NOT IN (N'Hoàn thành', N'Đã giao');
END;
GO

-- 9. Procedure lấy thông tin khách hàng VIP
CREATE PROCEDURE sp_LayKhachHangVIP
AS
BEGIN
    SELECT 
        MaKH, 
        TenKH, 
        DiaChi, 
        DienThoai, 
        LoaiKH
    FROM 
        KHACHHANG
    WHERE 
        LoaiKH = N'Khách VIP';
END;
GO

-- 10. Procedure tính thời gian xử lý trung bình của đơn hàng
CREATE PROCEDURE sp_TinhThoiGianXuLyTrungBinh
AS
BEGIN
    SELECT 
        AVG(DATEDIFF(DAY, NgayDat, NgayGiao)) AS ThoiGianXuLyTrungBinh
    FROM 
        DONHANG
    WHERE 
        NgayGiao IS NOT NULL;
END;
GO

-- 1. Gọi sp_ThemKhachHang
EXEC sp_ThemKhachHang 
    @MaKH = 'KH021', 
    @TenKH = N'Nguyễn Văn An', 
    @DiaChi = N'123 ABC, Hà Nội', 
    @DienThoai = '0987654321', 
    @LoaiKH = N'Khách lẻ';

-- 2. Gọi sp_CapNhatKhachHang
EXEC sp_CapNhatKhachHang 
    @MaKH = 'KH001', 
    @TenKH = N'Nguyễn Văn Hùng Cập Nhật', 
    @DiaChi = N'12 Nguyễn Trãi, Thanh Xuân, Hà Nội', 
    @DienThoai = '0987654321', 
    @LoaiKH = N'Khách VIP';

-- 3. Gọi sp_XoaKhachHang
EXEC sp_XoaKhachHang 
    @MaKH = 'KH021';

-- 4. Gọi sp_ThemDonHang
EXEC sp_ThemDonHang 
    @MaDH = 'DH032', 
    @MaKH = 'KH001', 
    @NgayDat = '2024-03-01', 
    @NgayGiao = '2024-03-03', 
    @TrangThai = N'Chờ xử lý';

-- 5. Gọi sp_CapNhatTrangThaiDonHang
EXEC sp_CapNhatTrangThaiDonHang 
    @MaDH = 'DH006', 
    @TrangThai = N'Đã giao';

-- 6. Gọi sp_ThemDichVuBoSung
EXEC sp_ThemDichVuBoSung 
    @MaDH = 'DH032', 
    @MaDVBS = 'DVBS1', 
    @SoLuong = 1, 
    @ThanhTien = 20000;

-- 7. Gọi sp_TinhTongChiPhiDonHang
EXEC sp_TinhTongChiPhiDonHang 
    @MaDH = 'DH001';

-- 8. Gọi sp_LayDonHangChuaHoanThanh
EXEC sp_LayDonHangChuaHoanThanh;

-- 9. Gọi sp_LayKhachHangVIP
EXEC sp_LayKhachHangVIP;

-- 10. Gọi sp_TinhThoiGianXuLyTrungBinh
EXEC sp_TinhThoiGianXuLyTrungBinh;


--TRIGGER
-- 1. Trigger kiểm tra ngày giao hàng không được nhỏ hơn ngày đặt hàng
CREATE TRIGGER trg_CheckNgayGiao
ON DONHANG
FOR INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE NgayGiao < NgayDat)
    BEGIN
        RAISERROR('Ngày giao hàng không được nhỏ hơn ngày đặt hàng.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO

-- 2. Trigger tự động cập nhật trạng thái đơn hàng khi ngày giao được thiết lập
CREATE TRIGGER trg_CapNhatTrangThai
ON DONHANG
FOR UPDATE
AS
BEGIN
    IF UPDATE(NgayGiao)
    BEGIN
        UPDATE DONHANG
        SET TrangThai = N'Đã giao'
        WHERE MaDH IN (SELECT MaDH FROM inserted WHERE NgayGiao IS NOT NULL);
    END
END;
GO

-- 3. Trigger kiểm tra số lượng dịch vụ bổ sung phải lớn hơn 0
CREATE TRIGGER trg_CheckSoLuongDichVu
ON DONHANG_DICHVUBOSUNG
FOR INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE SoLuong <= 0)
    BEGIN
        RAISERROR('Số lượng dịch vụ bổ sung phải lớn hơn 0.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO

-- 4. Trigger tự động tính thành tiền khi thêm hoặc cập nhật dịch vụ bổ sung
CREATE TRIGGER trg_TinhThanhTien
ON DONHANG_DICHVUBOSUNG
FOR INSERT, UPDATE
AS
BEGIN
    UPDATE DHDVBS
    SET ThanhTien = DVBS.PhiDVBS * I.SoLuong
    FROM DONHANG_DICHVUBOSUNG DHDVBS
    INNER JOIN inserted I ON DHDVBS.MaDH = I.MaDH AND DHDVBS.MaDVBS = I.MaDVBS
    INNER JOIN DICHVUBOSUNG DVBS ON I.MaDVBS = DVBS.MaDVBS;
END;
GO

-- 5. Trigger kiểm tra loại khách hàng phải hợp lệ
CREATE TRIGGER trg_CheckLoaiKhachHang
ON KHACHHANG
FOR INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE LoaiKH NOT IN (N'Khách lẻ', N'Khách VIP', N'Khách thành viên'))
    BEGIN
        RAISERROR('Loại khách hàng không hợp lệ.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO

-- 6. Trigger tự động ghi log khi thêm đơn hàng mới
CREATE TABLE LogDonHang (
    LogID INT IDENTITY PRIMARY KEY,
    MaDH CHAR(10),
    ThaoTac NVARCHAR(50),
    ThoiGian DATETIME DEFAULT GETDATE()
);

CREATE TRIGGER trg_LogThemDonHang
ON DONHANG
FOR INSERT
AS
BEGIN
    INSERT INTO LogDonHang (MaDH, ThaoTac)
    SELECT MaDH, N'Thêm đơn hàng mới'
    FROM inserted;
END;
GO

-- 7. Trigger tự động ghi log khi cập nhật đơn hàng
CREATE TRIGGER trg_LogCapNhatDonHang
ON DONHANG
FOR UPDATE
AS
BEGIN
    INSERT INTO LogDonHang (MaDH, ThaoTac)
    SELECT MaDH, N'Cập nhật đơn hàng'
    FROM inserted;
END;
GO

-- 8. Trigger kiểm tra số điện thoại khách hàng phải có độ dài hợp lệ
CREATE TRIGGER trg_CheckDienThoai
ON KHACHHANG
FOR INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE LEN(DienThoai) < 10 OR LEN(DienThoai) > 15)
    BEGIN
        RAISERROR('Số điện thoại phải có độ dài từ 10 đến 15 ký tự.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO

-- 9. Trigger tự động cập nhật tổng chi tiêu của khách hàng khi thanh toán
CREATE TRIGGER trg_CapNhatTongChiTieu
ON THANHTOAN
FOR INSERT
AS
BEGIN
    -- Tính tổng chi tiêu của khách hàng từ bảng THANHTOAN
    SELECT 
        KH.MaKH, 
        KH.TenKH, 
        SUM(TT.SoTien) AS TongChiTieu
    FROM 
        KHACHHANG KH
    INNER JOIN 
        DONHANG DH ON KH.MaKH = DH.MaKH
    INNER JOIN 
        THANHTOAN TT ON DH.MaDH = TT.MaDH
    WHERE 
        KH.MaKH IN (SELECT DISTINCT DH.MaKH FROM inserted I INNER JOIN DONHANG DH ON I.MaDH = DH.MaDH)
    GROUP BY 
        KH.MaKH, KH.TenKH;
END;
GO

-- 10. Trigger kiểm tra phí dịch vụ bổ sung không được âm
CREATE TRIGGER trg_CheckPhiDichVu
ON DICHVUBOSUNG
FOR INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE PhiDVBS < 0)
    BEGIN
        RAISERROR('Phí dịch vụ bổ sung không được âm.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO

-- Gọi các trigger bằng cách thực hiện các thao tác trên bảng
-- 1. Kích hoạt trg_CheckNgayGiao
INSERT INTO DONHANG (MaDH, MaKH, NgayDat, NgayGiao, TrangThai)
VALUES ('DH033', 'KH001', '2024-03-01', '2024-02-28', N'Chờ xử lý'); -- Sẽ báo lỗi

-- 2. Kích hoạt trg_CapNhatTrangThai
UPDATE DONHANG
SET NgayGiao = '2024-03-03'
WHERE MaDH = 'DH001'; -- Trạng thái sẽ được cập nhật thành 'Đã giao'

-- 3. Kích hoạt trg_CheckSoLuongDichVu
INSERT INTO DONHANG_DICHVUBOSUNG (MaDH, MaDVBS, SoLuong, ThanhTien)
VALUES ('DH033', 'DVBS3', 0, 0); -- Sẽ báo lỗi

-- 4. Kích hoạt trg_TinhThanhTien
INSERT INTO DONHANG_DICHVUBOSUNG (MaDH, MaDVBS, SoLuong, ThanhTien)
VALUES ('DH002', 'DVBS2', 2, 0); -- Thành tiền sẽ được tính tự động

-- 5. Kích hoạt trg_CheckLoaiKhachHang
INSERT INTO KHACHHANG (MaKH, TenKH, DiaChi, DienThoai, LoaiKH)
VALUES ('KH022', N'Nguyễn Văn B', N'456 XYZ, Hà Nội', '0987654321', N'Khách thường'); -- Sẽ báo lỗi

-- 6. Kích hoạt trg_LogThemDonHang
INSERT INTO DONHANG (MaDH, MaKH, NgayDat, NgayGiao, TrangThai)
VALUES ('DH034', 'KH002', '2024-03-01', '2024-03-03', N'Chờ xử lý'); -- Ghi log vào bảng LogDonHang

-- 7. Kích hoạt trg_LogCapNhatDonHang
UPDATE DONHANG
SET TrangThai = N'Đang giặt'
WHERE MaDH = 'DH002'; -- Ghi log vào bảng LogDonHang

-- 8. Kích hoạt trg_CheckDienThoai
INSERT INTO KHACHHANG (MaKH, TenKH, DiaChi, DienThoai, LoaiKH)
VALUES ('KH023', N'Nguyễn Văn C', N'789 ABC, Hà Nội', '123', N'Khách lẻ'); -- Sẽ báo lỗi

-- 9. Kích hoạt trg_CapNhatTongChiTieu
INSERT INTO THANHTOAN (MaTT, MaDH, NgayTT, SoTien, HinhThucTT)
VALUES ('TT031', 'DH001', '2024-03-01', 100000, N'Tiền mặt'); -- Cập nhật tổng chi tiêu của khách hàng

-- 10. Kích hoạt trg_CheckPhiDichVu
INSERT INTO DICHVUBOSUNG (MaDVBS, TenDVBS, MoTa, PhiDVBS)
VALUES ('DVBS3', N'Giao hàng nhanh', N'Giao hàng trong vòng 2 giờ', -10000); -- Sẽ báo lỗi

--PHÂN QUYỀN

-- Tạo tài khoản đăng nhập
CREATE LOGIN QuanLi WITH PASSWORD = 'QuanLy@123';
CREATE LOGIN Nhanvien1 WITH PASSWORD = 'NhanVien@123';
CREATE LOGIN Khachhang1 WITH PASSWORD = 'KhachHang@123';
GO

-- Tạo user trong cơ sở dữ liệu
CREATE USER QuanLi FOR LOGIN QuanLi;
CREATE USER Nhanvien1 FOR LOGIN Nhanvien1;
CREATE USER Khachhang1 FOR LOGIN Khachhang1;
GO

-- Phân quyền
-- Quản lý có toàn quyền trên cơ sở dữ liệu
GRANT CONTROL ON DATABASE::ThoitrangTreEm TO QuanLi;

-- Nhân viên chỉ có quyền truy vấn, thêm, sửa đơn hàng
GRANT SELECT, INSERT, UPDATE ON tblDonHang TO Nhanvien1;
GRANT SELECT, INSERT, UPDATE ON tblChiTietDonHang TO Nhanvien1;

-- Khách hàng chỉ có quyền xem và thêm đơn hàng
GRANT SELECT, INSERT ON tblDonHang TO Khachhang1;
GRANT SELECT, INSERT ON tblChiTietDonHang TO Khachhang1;

-- Cấm xóa dữ liệu
DENY DELETE ON tblDonHang TO Nhanvien1;
DENY DELETE ON tblChiTietDonHang TO Nhanvien1;
DENY DELETE ON tblDonHang TO Khachhang1;
DENY DELETE ON tblChiTietDonHang TO Khachhang1;