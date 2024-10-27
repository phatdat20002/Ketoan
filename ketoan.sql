-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2024 lúc 04:04 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ketoan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tchungtughiso`
--

CREATE TABLE `tchungtughiso` (
  `cMaChungTu` varchar(20) NOT NULL,
  `cLoaiChungTu` varchar(2) DEFAULT NULL,
  `cSoChungTu` varchar(6) DEFAULT NULL,
  `dNgayChungTu` datetime DEFAULT NULL,
  `cHoTen` varchar(30) DEFAULT NULL,
  `cMaKhachHangNo` varchar(10) DEFAULT NULL,
  `cTenKhachHangNo` varchar(100) DEFAULT NULL,
  `cMaSoThueNo` varchar(20) DEFAULT NULL,
  `cMaKhachHangCo` varchar(10) DEFAULT NULL,
  `cTenKhachHangCo` varchar(100) DEFAULT NULL,
  `cMaSoThueCo` varchar(20) DEFAULT NULL,
  `cDienGiai` varchar(100) DEFAULT NULL,
  `cBieuThue` varchar(2) DEFAULT NULL,
  `cSoSeRi` varchar(10) DEFAULT NULL,
  `cSoHoaDon` varchar(10) DEFAULT NULL,
  `dNgayHoaDon` datetime DEFAULT NULL,
  `nThueSuat` float DEFAULT NULL,
  `nThueGTGT` float DEFAULT NULL,
  `cMatHang` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tchungtughiso`
--

INSERT INTO `tchungtughiso` (`cMaChungTu`, `cLoaiChungTu`, `cSoChungTu`, `dNgayChungTu`, `cHoTen`, `cMaKhachHangNo`, `cTenKhachHangNo`, `cMaSoThueNo`, `cMaKhachHangCo`, `cTenKhachHangCo`, `cMaSoThueCo`, `cDienGiai`, `cBieuThue`, `cSoSeRi`, `cSoHoaDon`, `dNgayHoaDon`, `nThueSuat`, `nThueGTGT`, `cMatHang`) VALUES
('GS-001/01-21/01/02', 'GS', '001/01', '2002-01-21 00:00:00', NULL, NULL, NULL, NULL, '0034', 'Cty XNK VT Thiết Bị Ngành IN', '0301465129', 'Mua kính soi tram của Printexim', '03', 'AA/YY', '022664', '2002-01-21 00:00:00', 0.1, NULL, 'Kính soi tram'),
('GS-001/02-04/02/02', 'GS', '001/02', '2002-02-04 00:00:00', NULL, '0072', 'Cty TNHH Dược Phẩm Aâu Mỹ/Anh Triết', '0302020845', NULL, NULL, NULL, 'Bán 2985 thùng carton cho Aâu Mỹ', '02', 'AA/YY', '077744', '2002-02-04 00:00:00', 0.1, NULL, 'Thùng carton'),
('GS-001/03-15/03/02', 'GS', '001/03', '2002-03-15 00:00:00', NULL, '0015', 'Cty TNHH Vina Chang Tai', '3700228069', NULL, NULL, NULL, 'Bán Cty Vina ChangTai bao nilon', '02', 'AA/YY', '055556', '2002-03-15 00:00:00', 0.1, NULL, 'Bao ny long'),
('GS-001/04-22/04/08', 'GS', '001/04', '2008-04-22 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL),
('GS-002/01-25/01/02', 'GS', '002/01', '2002-01-25 00:00:00', NULL, '0015', 'Cty TNHH Vina Chang Tai', '3700228069', NULL, NULL, NULL, 'Vina ChangTai - 100kg bao nilon (HĐ085628)', '02', 'AA/YY', '031315', '2002-01-25 00:00:00', 0.1, NULL, 'Bao ny lông'),
('GS-002/02-20/02/02', 'GS', '002/02', '2002-02-20 00:00:00', NULL, '0015', 'Cty TNHH Vina Chang Tai', '3700228069', NULL, NULL, NULL, 'Bán Vina ChangTai 94kg bao nilon', '02', 'AA/YY', '036365', '2002-02-20 00:00:00', 0.1, NULL, 'Bao ny lông'),
('GS-002/04-17/04/02', 'GS', '002/04', '2002-04-17 00:00:00', NULL, '0015', 'Cty TNHH Vina Chang Tai', '3700228069', NULL, NULL, NULL, 'Vina ChangTai - mua bao ni lon', '02', 'AA/YY', '087879', '2002-04-17 00:00:00', 0.1, NULL, 'Bao ny lông'),
('GS-002/04-22/04/08', 'GS', '002/04', '2008-04-22 00:00:00', NULL, '0007', 'Cty TNHH SX-TM Mỹ Hảo', '0301416932', '0003', 'Cty TNHH An Nam Sáng', '0302396598', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL),
('GS-003/01-25/01/02', 'GS', '003/01', '2002-01-25 00:00:00', NULL, '0011', 'Cty TNHH Uni President Việt Nam', '3700306630', NULL, NULL, NULL, 'Xuất phim cho Cty Uni President', '02', 'AA/YY', '054658', '2002-01-25 00:00:00', 0.1, NULL, 'Phim'),
('GS-003/02-28/02/02', 'GS', '003/02', '2002-02-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trích nộp BHXH tháng 2/02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('GS-003/04-27/04/02', 'GS', '003/04', '2002-04-27 00:00:00', NULL, '0076', 'Cty SX&XNK Bình Dương', '3700148166', NULL, NULL, NULL, 'XNK BD - điều chỉnh hóa đơn', '02', 'AA/YY', '088774', '2002-04-27 00:00:00', 0.1, NULL, 'Điều chỉnh hóa đơn'),
('GS-004/01-26/01/02', 'GS', '004/01', '2002-01-26 00:00:00', NULL, '0015', 'Cty TNHH Vina Chang Tai', '3700228069', NULL, NULL, NULL, 'Vina ChangTai - 100kg bao nilon (HĐ085630)', '02', 'AA/YY', '085630', '2002-01-26 00:00:00', 0.1, NULL, 'Bao ny lông'),
('GS-004/02-28/02/02', 'GS', '004/02', '2002-02-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trích nộp BHYT tháng 2/02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('GS-004/04-29/04/02', 'GS', '004/04', '2002-04-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chi phí tiền lương T4/02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('GS-005/01-29/01/02', 'GS', '005/01', '2002-01-29 00:00:00', NULL, '0023', 'Cty Dược và Vật tư y tế Bình Dương', '3700150045', NULL, NULL, NULL, 'Y tế BD - 1000 thùng carton (HĐ 085633)', '02', 'AA/YY', '085633', '2002-01-29 00:00:00', 0.1, NULL, 'Thùng carton'),
('GS-005/02-28/02/02', 'GS', '005/02', '2002-02-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Thuế môn bài phải nộp năm 2002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('GS-005/03-19/03/02', 'GS', '005/03', '2002-03-19 00:00:00', NULL, '0088', 'Cty TNHH Hài Mỹ', '3700305228', NULL, NULL, NULL, 'Bán giấy duplex cho Hài Mỹ', '02', 'AA/YY', '058587', '2002-03-19 00:00:00', 0.1, NULL, 'Giấy Duplex'),
('GS-005/04-29/04/02', 'GS', '005/04', '2002-04-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trích nộp BHXH tháng 4/02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('GS-006/01-30/01/02', 'GS', '006/01', '2002-01-30 00:00:00', NULL, '0018', 'Cty Cổ Phần Rượu Quốc Tế', '3700330979', NULL, NULL, NULL, 'Rượu ngoại - bàn giao cho đối tác', '02', 'AA/YY', '087665', '2002-01-30 00:00:00', 0.1, NULL, 'Rượu ngoại'),
('GS-006/02-28/02/02', 'GS', '006/02', '2002-02-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trích nộp BHYT tháng 2/02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('GS-006/03-25/03/02', 'GS', '006/03', '2002-03-25 00:00:00', NULL, '0018', 'Cty Cổ Phần Rượu Quốc Tế', '3700330979', NULL, NULL, NULL, 'Rượu - thanh lý hàng tồn kho', '02', 'AA/YY', '087888', '2002-03-25 00:00:00', 0.1, NULL, 'Rượu ngoại'),
('GS-006/04-29/04/02', 'GS', '006/04', '2002-04-29 00:00:00', NULL, '0018', 'Cty Cổ Phần Rượu Quốc Tế', '3700330979', NULL, NULL, NULL, 'Rượu - điều chỉnh giá bán', '02', 'AA/YY', '087877', '2002-04-29 00:00:00', 0.1, NULL, 'Rượu ngoại'),
('GS-007/01-30/01/02', 'GS', '007/01', '2002-01-30 00:00:00', NULL, '0078', 'Cty TNHH Thương Mại Quốc Tế', '3700307798', NULL, NULL, NULL, 'Xuất hàng cho Cty Thương Mại Quốc Tế', '02', 'AA/YY', '085639', '2002-01-30 00:00:00', 0.1, NULL, 'Hàng hóa'),
('GS-007/02-28/02/02', 'GS', '007/02', '2002-02-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trích nộp BHXH tháng 2/02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('GS-007/04-29/04/02', 'GS', '007/04', '2002-04-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chi phí tiền lương T4/02', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tchungtughisochitiet`
--

CREATE TABLE `tchungtughisochitiet` (
  `cMaChungTu` varchar(20) NOT NULL,
  `nMaSo` int(11) NOT NULL,
  `cDienGiaiChiTiet` varchar(50) DEFAULT NULL,
  `nSoTien` float DEFAULT NULL,
  `cTaiKhoanNo` varchar(10) DEFAULT NULL,
  `cTaiKhoanCo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tchungtughisochitiet`
--

INSERT INTO `tchungtughisochitiet` (`cMaChungTu`, `nMaSo`, `cDienGiaiChiTiet`, `nSoTien`, `cTaiKhoanNo`, `cTaiKhoanCo`) VALUES
('GS-001/01-21/01/02', 8, 'Mua kính soi tram của Printexim', 280000, '642', '331'),
('GS-001/01-21/01/02', 9, 'Thuế GTGT được khấu trừ', 28000, '1331', '331'),
('GS-001/02-04/02/02', 19, 'Bán 2985 thùng carton cho Aâu Mỹ', 13110100, '131', '511'),
('GS-001/02-04/02/02', 20, 'Bán 2985 thùng carton cho Aâu Mỹ', 1311010, '131', '3331'),
('GS-001/02-25/02/02', 23, 'Bán Vina ChangTai 50kg bao nilon', 1350000, '131', '511'),
('GS-001/02-25/02/02', 24, 'Bán Vina ChangTai 50kg bao nilon', 135000, '131', '3331'),
('GS-002/02-20/02/02', 21, 'Bán Vina ChangTai 94kg bao nilon', 2264460, '131', '511'),
('GS-002/02-20/02/02', 22, 'Bán Vina ChangTai 94kg bao nilon', 226446, '131', '3331'),
('GS-003/01-25/01/02', 6, 'Xuất phim cho Cty Uni President', 250000, '131', '511'),
('GS-003/01-25/01/02', 7, 'Xuất phim cho Cty Uni President', 25000, '131', '3331'),
('GS-006/01-30/01/02', 1, 'Rượu QT - thùng Goldking (HĐ 85638)', 256000, '131', '3331'),
('GS-007/01-30/01/02', 17, 'Xuất bán Vina ChangTai trục đồng in bonbon', 1600000, '131', '511'),
('GS-007/01-30/01/02', 18, 'Xuất bán Vina ChangTai trục đồng in bonbon', 160000, '131', '3331'),
('GS-008/01-31/01/02', 10, 'BHXH tháng 1/02 CNV phải nộp', 433650, '334', '3383'),
('GS-008/01-31/01/02', 11, 'BHXH tháng 1/02 Cty phải nộp cho CN', 644490, '642', '3383'),
('GS-008/01-31/01/02', 12, 'BHXH tháng 1/02 Cty phải nộp cho NV PX', 118440, '642', '3383'),
('GS-008/01-31/01/02', 13, 'BHXH tháng 1/02 Cty phải nộp cho NV VP', 538020, '642', '3383'),
('GS-008/02-28/02/02', 2, 'Đưa quỹ phúc lợi vào chi phí tiền lương.', 12000000, '642', '334'),
('GS-008/02-28/02/02', 25, 'Bán Vina ChangTai 94kg bao nilon', 2000000, '131', '511'),
('GS-008/02-28/02/02', 26, 'Bán Vina ChangTai 94kg bao nilon', 200000, '131', '3331'),
('GS-009/01-31/01/02', 14, 'BHYT CNV phải nộp tháng 1/02', 86730, '334', '3384'),
('GS-009/01-31/01/02', 15, 'BHYT Cty phải nộp tháng 1/02 (NV PX)', 15792, '642', '3384'),
('GS-009/01-31/01/02', 16, 'BHYT Cty phải nộp tháng 1/02 (NV VP)', 71736, '642', '3384'),
('GS-010/01-31/01/02', 3, 'Lương NV tháng 1/02 phải trả', 34680000, '642', '334'),
('GS-010/01-31/01/02', 4, 'Lương NV tháng 1/02 phải trả', 4060000, '642', '334'),
('GS-010/01-31/01/02', 5, 'Lương NV văn phòng tháng 1/02', 14410000, '642', '334');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tchungtuketchuyen`
--

CREATE TABLE `tchungtuketchuyen` (
  `cMaChungTu` varchar(20) NOT NULL,
  `cLoaiChungTu` varchar(2) DEFAULT NULL,
  `cSoChungTu` varchar(10) DEFAULT NULL,
  `dNgayChungTu` datetime DEFAULT NULL,
  `cDienGiai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tchungtuketchuyen`
--

INSERT INTO `tchungtuketchuyen` (`cMaChungTu`, `cLoaiChungTu`, `cSoChungTu`, `dNgayChungTu`, `cDienGiai`) VALUES
('KC-K04-01/02', 'KC', NULL, '2002-01-31 00:00:00', 'Kết chuyển hàng trả lại'),
('KC-K04-02/02', 'KC', NULL, '2002-02-28 00:00:00', 'Kết chuyển hàng trả lại'),
('KC-K04-03/02', 'KC', NULL, '2002-03-31 00:00:00', 'Kết chuyển hàng trả lại'),
('KC-K04-04/02', 'KC', NULL, '2002-04-30 00:00:00', 'Kết chuyển hàng trả lại'),
('KC-K04-05/02', 'KC', NULL, '2002-05-31 00:00:00', 'Kết chuyển hàng trả lại'),
('KC-K05-01/02', 'KC', NULL, '2002-01-31 00:00:00', 'Kết chuyển chiết khấu hàng bán'),
('KC-K05-02/02', 'KC', NULL, '2002-02-28 00:00:00', 'Kết chuyển chiết khấu hàng bán'),
('KC-K05-03/02', 'KC', NULL, '2002-03-31 00:00:00', 'Kết chuyển chiết khấu hàng bán'),
('KC-K05-04/02', 'KC', NULL, '2002-04-30 00:00:00', 'Kết chuyển chiết khấu hàng bán'),
('KC-K05-05/02', 'KC', NULL, '2002-05-31 00:00:00', 'Kết chuyển chiết khấu hàng bán'),
('KC-K06-01/02', 'KC', NULL, '2002-01-31 00:00:00', 'Kết chuyển giảm doanh thu do giảm giá hàng.'),
('KC-K06-02/02', 'KC', NULL, '2002-02-28 00:00:00', 'Kết chuyển giảm doanh thu do giảm giá hàng.'),
('KC-K06-03/02', 'KC', NULL, '2002-03-31 00:00:00', 'Kết chuyển giảm doanh thu do giảm giá hàng.'),
('KC-K06-04/02', 'KC', NULL, '2002-04-30 00:00:00', 'Kết chuyển giảm doanh thu do giảm giá hàng.'),
('KC-K06-05/02', 'KC', NULL, '2002-05-31 00:00:00', 'Kết chuyển giảm doanh thu do giảm giá hàng.'),
('KC-K07-01/02', 'KC', NULL, '2002-01-31 00:00:00', 'Xác định doanh thu thuần'),
('KC-K07-02/02', 'KC', NULL, '2002-02-28 00:00:00', 'Xác định doanh thu thuần'),
('KC-K07-03/02', 'KC', NULL, '2002-03-31 00:00:00', 'Xác định doanh thu thuần'),
('KC-K07-04/02', 'KC', NULL, '2002-04-30 00:00:00', 'Xác định doanh thu thuần'),
('KC-K07-05/02', 'KC', NULL, '2002-05-31 00:00:00', 'Xác định doanh thu thuần'),
('KC-K08-01/02', 'KC', NULL, '2002-01-31 00:00:00', 'Kết chuyển thu nhập tài chính'),
('KC-K08-02/02', 'KC', NULL, '2002-02-28 00:00:00', 'Kết chuyển thu nhập tài chính'),
('KC-K08-03/02', 'KC', NULL, '2002-03-31 00:00:00', 'Kết chuyển thu nhập tài chính'),
('KC-K08-04/02', 'KC', NULL, '2002-04-30 00:00:00', 'Kết chuyển thu nhập tài chính'),
('KC-K09-05/02', 'KC', NULL, '2002-05-31 00:00:00', 'Kết chuyển thu nhập bất thường'),
('KC-K10-01/02', 'KC', NULL, '2002-01-31 00:00:00', 'Kết chuyển giá thành sản phẩm'),
('KC-K10-02/02', 'KC', NULL, '2002-02-28 00:00:00', 'Kết chuyển giá thành sản phẩm'),
('KC-K10-03/02', 'KC', NULL, '2002-03-31 00:00:00', 'Kết chuyển giá thành sản phẩm'),
('KC-K10-04/02', 'KC', NULL, '2002-04-30 00:00:00', 'Kết chuyển giá thành sản phẩm'),
('KC-K10-05/02', 'KC', NULL, '2002-05-31 00:00:00', 'Kết chuyển giá thành sản phẩm'),
('KC-K11-01/02', 'KC', NULL, '2002-01-31 00:00:00', 'Kết chuyển chi phí bán hàng'),
('KC-K11-02/02', 'KC', NULL, '2002-02-28 00:00:00', 'Kết chuyển chi phí bán hàng'),
('KC-K11-03/02', 'KC', NULL, '2002-03-31 00:00:00', 'Kết chuyển chi phí bán hàng'),
('KC-K11-04/02', 'KC', NULL, '2002-04-30 00:00:00', 'Kết chuyển chi phí bán hàng'),
('KC-K11-05/02', 'KC', NULL, '2002-05-31 00:00:00', 'Kết chuyển chi phí bán hàng'),
('KC-K12-01/02', 'KC', NULL, '2002-01-31 00:00:00', 'KQKD: Kết chuyển chi phí quản lý.'),
('KC-K12-02/02', 'KC', NULL, '2002-02-28 00:00:00', 'KQKD: Kết chuyển chi phí quản lý.'),
('KC-K12-03/02', 'KC', NULL, '2002-03-31 00:00:00', 'KQKD: Kết chuyển chi phí quản lý.'),
('KC-K12-04/02', 'KC', NULL, '2002-04-30 00:00:00', 'KQKD: Kết chuyển chi phí quản lý.'),
('KC-K12-05/02', 'KC', NULL, '2002-05-31 00:00:00', 'KQKD: Kết chuyển chi phí quản lý.'),
('KC-K13-01/02', 'KC', NULL, '2002-01-31 00:00:00', 'Kết chuyển chi phí hoạt động tài chính'),
('KC-K13-02/02', 'KC', NULL, '2002-02-28 00:00:00', 'Kết chuyển chi phí hoạt động tài chính'),
('KC-K13-03/02', 'KC', NULL, '2002-03-31 00:00:00', 'Kết chuyển chi phí hoạt động tài chính'),
('KC-K13-04/02', 'KC', NULL, '2002-04-30 00:00:00', 'Kết chuyển chi phí hoạt động tài chính'),
('KC-K13-05/02', 'KC', NULL, '2002-05-31 00:00:00', 'Kết chuyển chi phí hoạt động tài chính'),
('KC-K14-05/02', 'KC', NULL, '2002-05-31 00:00:00', 'Kết chuyển chi phí bất thường'),
('KC-K15-01/02', 'KC', NULL, '2002-01-31 00:00:00', 'Kết quả kinh doanh'),
('KC-K15-02/02', 'KC', NULL, '2002-02-28 00:00:00', 'Kết quả kinh doanh'),
('KC-K15-03/02', 'KC', NULL, '2002-03-31 00:00:00', 'Kết quả kinh doanh'),
('KC-K15-04/02', 'KC', NULL, '2002-04-30 00:00:00', 'Kết quả kinh doanh'),
('KC-K15-05/02', 'KC', NULL, '2002-05-31 00:00:00', 'Kết quả kinh doanh'),
('KC-K16-01/02', 'KC', NULL, '2002-01-31 00:00:00', 'Kết chuyển thu nhập và chi phí bất thường'),
('KC-K16-02/02', 'KC', NULL, '2002-02-28 00:00:00', 'Kết chuyển thu nhập và chi phí bất thường'),
('KC-K16-03/02', 'KC', NULL, '2002-03-31 00:00:00', 'Kết chuyển thu nhập và chi phí bất thường'),
('KC-K16-04/02', 'KC', NULL, '2002-04-30 00:00:00', 'Kết chuyển thu nhập và chi phí bất thường'),
('KC-K16-05/02', 'KC', NULL, '2002-05-31 00:00:00', 'Kết chuyển thu nhập và chi phí bất thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tchungtuketchuyenchitiet`
--

CREATE TABLE `tchungtuketchuyenchitiet` (
  `cMaChungTu` varchar(20) NOT NULL,
  `cDienGiaiChiTiet` varchar(100) DEFAULT NULL,
  `cTaiKhoanNo` varchar(10) DEFAULT NULL,
  `cTaiKhoanCo` varchar(10) DEFAULT NULL,
  `nSoTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tchungtuketchuyenchitiet`
--

INSERT INTO `tchungtuketchuyenchitiet` (`cMaChungTu`, `cDienGiaiChiTiet`, `cTaiKhoanNo`, `cTaiKhoanCo`, `nSoTien`) VALUES
('KC-K04-01/02', 'Kết chuyển 531 vô 511', '531', '511', 80000),
('KC-K05-04/02', 'Kết chuyển 521 vô 511, chiết khấu hàng bán.', '511', '521', 330000),
('KC-K07-01/02', 'KQKD: Xác định doanh thu thuần', '511', '911', 555561000),
('KC-K07-02/02', 'KQKD: Xác định doanh thu thuần', '511', '911', 454698000),
('KC-K07-03/02', 'KQKD: Xác định doanh thu thuần', '511', '911', 1191890000),
('KC-K07-04/02', 'KQKD: Xác định doanh thu thuần', '511', '911', 4633450),
('KC-K08-01/02', 'KQKD: Kết chuyển thu nhập tài chính', '711', '911', 47200),
('KC-K08-02/02', 'KQKD: Kết chuyển thu nhập tài chính', '711', '911', 29358),
('KC-K08-03/02', 'KQKD: Kết chuyển thu nhập tài chính', '711', '911', 39226),
('KC-K08-04/02', 'KQKD: Kết chuyển thu nhập tài chính', '711', '911', 80183),
('KC-K10-01/02', 'KQKD: Kết chuyển giá vốn hàng bán.', '911', '632', 293691000),
('KC-K10-02/02', 'KQKD: Kết chuyển giá vốn hàng bán.', '911', '632', 244071000),
('KC-K10-03/02', 'KQKD: Kết chuyển giá vốn hàng bán.', '911', '632', 655598000),
('KC-K11-01/02', 'Kết chuyển chi phí bán hàng', '911', '641', 30000000),
('KC-K11-02/02', 'Kết chuyển chi phí bán hàng', '911', '641', 20000000),
('KC-K11-03/02', 'Kết chuyển chi phí bán hàng', '911', '641', 42000000),
('KC-K11-04/02', 'Kết chuyển chi phí bán hàng', '911', '641', 5000000),
('KC-K12-01/02', 'Kết chuyển chi phí quản lý', '911', '642', 70850600),
('KC-K12-02/02', 'Kết chuyển chi phí quản lý', '911', '642', 78318400),
('KC-K12-03/02', 'Kết chuyển chi phí quản lý', '911', '642', 83629800),
('KC-K12-04/02', 'Kết chuyển chi phí quản lý', '911', '642', 77726700),
('KC-K13-01/02', 'Kết chuyển chi phí hoạt động tài chính', '911', '811', 2000000),
('KC-K13-02/02', 'Kết chuyển chi phí hoạt động tài chính', '911', '811', 6670000),
('KC-K13-03/02', 'Kết chuyển chi phí hoạt động tài chính', '911', '811', 6440000),
('KC-K13-04/02', 'Kết chuyển chi phí hoạt động tài chính', '911', '811', 3565000),
('KC-K15-01/02', 'Kết chuyển lãi lỗ.', '911', '4212', 159067000),
('KC-K15-02/02', 'Kết chuyển lãi lỗ.', '911', '4212', 105668000),
('KC-K15-03/02', 'Kết chuyển lãi lỗ.', '911', '4212', 404262000),
('KC-K15-04/02', 'Kết chuyển lãi lỗ.', '4212', '911', 81578000),
('KC-K15-05/02', 'KQKD: Kết chuyển lãi lỗ.', '4212', '911', NULL),
('KC-K16-01/02', 'Kết chuyển thuế VAT được khấu trừ', '3331', '1331', 55548100),
('KC-K16-02/02', 'Kết chuyển thuế VAT được khấu trừ', '3331', '1331', 45469800),
('KC-K16-03/02', 'Kết chuyển thuế VAT được khấu trừ', '3331', '1331', 70338900),
('KC-K16-04/02', 'Kết chuyển thuế VAT được khấu trừ', '3331', '1331', 496345),
('KC-K16-05/02', 'Kết chuyển thuế VAT được khấu trừ', '3331', '1331', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tchungtunganhang`
--

CREATE TABLE `tchungtunganhang` (
  `cMaChungTu` varchar(20) NOT NULL,
  `cLoaiChungTu` varchar(2) DEFAULT NULL,
  `dNgayChungTu` datetime DEFAULT NULL,
  `cSoChungTu` varchar(6) DEFAULT NULL,
  `cHoTen` varchar(30) DEFAULT NULL,
  `cMaKhachHang` varchar(10) DEFAULT NULL,
  `cTenKhachHang` varchar(100) DEFAULT NULL,
  `cMaSoThue` varchar(20) DEFAULT NULL,
  `cDienGiai` varchar(100) DEFAULT NULL,
  `nThu_Chi` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tchungtunganhang`
--

INSERT INTO `tchungtunganhang` (`cMaChungTu`, `cLoaiChungTu`, `dNgayChungTu`, `cSoChungTu`, `cHoTen`, `cMaKhachHang`, `cTenKhachHang`, `cMaSoThue`, `cDienGiai`, `nThu_Chi`) VALUES
('TG-001/01-04/01/02', 'TG', '2002-01-04 00:00:00', '001/01', NULL, '0142', 'Cty TNHH Nestle VN', NULL, 'Thu tiền Cty Nestle', 1),
('TG-001/02-01/02/02', 'TG', '2002-02-01 00:00:00', '001/02', NULL, NULL, NULL, NULL, 'Rút tiền mặt ICB nhập quỹ', 2),
('TG-001/03-05/03/02', 'TG', '2002-03-05 00:00:00', '001/03', NULL, '0022', 'Cty Cổ Phần Bánh Kẹo Biên Hòa', '3600363970', 'Cty CP Bánh Kẹo Biên Hòa chuyển trả tiền theo HĐ 85463', 1),
('TG-001/04-01/04/02', 'TG', '2002-04-01 00:00:00', '001/04', NULL, '0004', 'Cty Sữa TNHH Việt Nam Foremost', '3700229344', 'Rút tiền ICB nhập quỹ tiền mặt, Foremost chuyển trả.', 1),
('TG-001/04-22/04/08', 'TG', '2008-04-22 00:00:00', '001/04', NULL, NULL, NULL, NULL, NULL, 0),
('TG-002/01-11/01/02', 'TG', '2002-01-11 00:00:00', '002/01', NULL, '0019', 'Cty Phát Triển Công Nghiệp Tân Thuận', '0301052146', 'Cty LD KCX Tân Thuận.', 1),
('TG-002/02-05/02/02', 'TG', '2002-02-05 00:00:00', '002/02', NULL, '0068', 'Đường QN', NULL, 'Cty Đường Quảng Ngãi thanh toán nợ', 1),
('TG-002/03-05/03/02', 'TG', '2002-03-12 00:00:00', '002/03', NULL, '0020', 'Cty TNHH Công Nghiệp Gốm Bạch Mã', '3700319697', 'Cty Gốm Bạch Mã chuyển trả tiền theo HĐ 085647', 1),
('TG-002/04-01/04/02', 'TG', '2002-04-02 00:00:00', '002/04', NULL, '0004', 'Cty Sữa TNHH Việt Nam Foremost', '3700229344', 'Cty Foremost chuyển trả tiền.', 1),
('TG-002/04-22/04/08', 'TG', '2008-04-22 00:00:00', '002/04', NULL, '0010', NULL, NULL, NULL, 0),
('TG-003/01-16/01/02', 'TG', '2002-01-16 00:00:00', '003/01', NULL, '0020', 'Cty TNHH Công Nghiệp Gốm Bạch Mã', '3700319697', 'Cty Gốm Bạch Mã chuyển trả tiền', 1),
('TG-003/02-06/02/02', 'TG', '2002-02-06 00:00:00', '003/02', NULL, '0004', 'Cty Sữa TNHH Việt Nam Foremost', '3700229344', 'Foremost thanh toán nợ', 1),
('TG-003/03-05/03/02', 'TG', '2002-03-15 00:00:00', '003/03', NULL, '0021', 'Cty TNHH CNTP Pataya Việt Nam', '1800339717', 'Cty Pataya chuyển trả tiền theo 2 HĐ 72020, 72015', 1),
('TG-003/04-03/04/02', 'TG', '2002-04-03 00:00:00', '003/04', NULL, '0021', 'Cty TNHH CNTP Pataya Việt Nam', '1800339717', 'Cty Pataya chuyển trả tiền.', 1),
('TG-003/04-22/04/08', 'TG', '2008-04-22 00:00:00', '003/04', NULL, '0012', 'XN Chế Biến KD Nông Sản Thực Phẩm', '03005590141201', NULL, 0),
('TG-004/01-25/01/02', 'TG', '2002-01-25 00:00:00', '004/01', NULL, '0116', 'Cty thang máy OTIS Sài Gòn', '0300801931', 'Cty thang máy Otis SG chuyển trả tiền', 1),
('TG-004/02-07/02/02', 'TG', '2002-02-07 00:00:00', '004/02', NULL, NULL, NULL, NULL, 'Rút tiền ICB nhập quỹ', 2),
('TG-004/03-05/03/02', 'TG', '2002-03-22 00:00:00', '004/03', NULL, '0004', 'Cty Sữa TNHH Việt Nam Foremost', '3700229344', 'Cty Foremost chuyển trả tiền 2 HĐ 072005,072012.', 1),
('TG-004/04-05/04/02', 'TG', '2002-04-05 00:00:00', '004/04', NULL, '0004', 'Cty Sữa TNHH Việt Nam Foremost', '3700229344', 'Thùy rút tiền ICB nhập quỹ, Cty Foremost chuyển trả tiền.', 1),
('TG-005/01-25/01/02', 'TG', '2002-01-25 00:00:00', '005/01', NULL, '0019', 'Cty Phát Triển Công Nghiệp Tân Thuận', '0301052146', 'Cty LD KCX Tân Thuận chuyển trả tiền', 1),
('TG-005/02-25/02/02', 'TG', '2002-02-25 00:00:00', '005/02', NULL, '0011', 'Cty TNHH Uni President Việt Nam', '3700306630', 'Uni President thanh toán nơ', 1),
('TG-005/03-05/03/02', 'TG', '2002-03-25 00:00:00', '005/03', 'Nguyễn Mậu Vinh', NULL, NULL, NULL, 'Rút tiền gởi NH nhập quỹ tiền mặt', 2),
('TG-005/04-09/04/02', 'TG', '2002-04-09 00:00:00', '005/04', NULL, '0076', 'Cty SX&XNK Bình Dương', '3700148166', 'Cty SX&XNK BD chuyển trả tiền theo HĐ 072056 (21/3)', 1),
('TG-006/01-25/01/02', 'TG', '2002-01-25 00:00:00', '006/01', NULL, NULL, NULL, NULL, 'Thu lãi tiền gởi NH ICB', 1),
('TG-006/02-26/02/02', 'TG', '2002-02-26 00:00:00', '006/02', NULL, NULL, NULL, NULL, 'Lãi tháng 2/02 TG ICB', 1),
('TG-006/03-05/03/02', 'TG', '2002-03-25 00:00:00', '006/03', NULL, NULL, NULL, NULL, 'VCB trả lãi tiền gởi', 1),
('TG-006/04-19/04/02', 'TG', '2002-04-19 00:00:00', '006/04', NULL, '0088', 'Cty TNHH Hài Mỹ', '3700305228', 'Cty TNHH Hài Mỹ thanh toán HĐ 072051', 1),
('TG-007/01-25/01/02', 'TG', '2002-01-25 00:00:00', '007/01', NULL, NULL, NULL, NULL, 'Chi tiền NV - Thuế TNCN', 2),
('TG-007/02-26/02/02', 'TG', '2002-02-26 00:00:00', '007/02', NULL, NULL, NULL, NULL, 'Chi tiền NV - Lương tháng 2', 2),
('TG-007/03-05/03/02', 'TG', '2002-03-05 00:00:00', '007/03', NULL, NULL, NULL, NULL, 'Chi tiền NV - Thưởng Tết', 2),
('TG-007/04-19/04/02', 'TG', '2002-04-19 00:00:00', '007/04', NULL, NULL, NULL, NULL, 'Chi tiền NV - Lương tháng 4', 2),
('TG-008/01-25/01/02', 'TG', '2002-01-25 00:00:00', '008/01', NULL, NULL, NULL, NULL, 'Chi tiền NV - Xăng xe', 2),
('TG-008/02-26/02/02', 'TG', '2002-02-26 00:00:00', '008/02', NULL, NULL, NULL, NULL, 'Chi tiền NV - Công tác phí tháng 2', 2),
('TG-008/03-05/03/02', 'TG', '2002-03-05 00:00:00', '008/03', NULL, NULL, NULL, NULL, 'Chi tiền NV - Công tác phí tháng 3', 2),
('TG-008/04-19/04/02', 'TG', '2002-04-19 00:00:00', '008/04', NULL, NULL, NULL, NULL, 'Chi tiền NV - Công tác phí tháng 4', 2),
('TG-009/01-25/01/02', 'TG', '2002-01-25 00:00:00', '009/01', NULL, NULL, NULL, NULL, 'Chi tiền NV - Mua sắm thiết bị', 2),
('TG-009/02-26/02/02', 'TG', '2002-02-26 00:00:00', '009/02', NULL, NULL, NULL, NULL, 'Chi tiền NV - Bảo trì thiết bị', 2),
('TG-009/03-05/03/02', 'TG', '2002-03-05 00:00:00', '009/03', NULL, NULL, NULL, NULL, 'Chi tiền NV - Phí công chứng', 2),
('TG-009/04-19/04/02', 'TG', '2002-04-19 00:00:00', '009/04', NULL, NULL, NULL, NULL, 'Chi tiền NV - Phí phát hành hóa đơn', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tchungtunganhangchitiet`
--

CREATE TABLE `tchungtunganhangchitiet` (
  `cMaChungTu` varchar(20) NOT NULL,
  `nMaSo` int(11) NOT NULL,
  `cDienGiaiChiTiet` varchar(50) DEFAULT NULL,
  `nSoTien` float DEFAULT NULL,
  `cTaiKhoanNo` varchar(10) DEFAULT NULL,
  `cTaiKhoanCo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tchungtunganhangchitiet`
--

INSERT INTO `tchungtunganhangchitiet` (`cMaChungTu`, `nMaSo`, `cDienGiaiChiTiet`, `nSoTien`, `cTaiKhoanNo`, `cTaiKhoanCo`) VALUES
('TG-001/01-04/01/02', 2, 'Cty Nestle VN chuyển trả tiền qua ICB', 3080000, '1121', '131'),
('TG-001/02-01/02/02', 13, 'Rút tiền mặt ICB nhập quỹ', 10000000, '111', '1121'),
('TG-001/03-05/03/02', 19, 'Cty CP Bánh Kẹo Biên Hòa chuyển trả tiền', 3049200, '1121', '131'),
('TG-001/04-01/04/02', 30, 'Cty Foremost chuyển trả tiền', 72600000, '1121', '131'),
('TG-002/01-11/01/02', 3, 'Cty phát triển CN Tân Thuận chuyển trả tiền', 34815000, '1121', '131'),
('TG-002/02-05/02/02', 14, 'Cty Đường Quảng Ngãi thanh toán nợ', 20188200, '1121', '131'),
('TG-002/03-05/03/02', 20, 'Cty Gốm Bạch Mã chuyển trả tiền', 10045700, '1121', '131'),
('TG-002/04-01/04/02', 31, 'Cty Foremost chuyển trả tiền', 9985000, '1121', '131'),
('TG-003/01-16/01/02', 4, 'Cty Gốm Bạch Mã chuyển trả tiền', 5720000, '1121', '131'),
('TG-003/02-06/02/02', 15, 'Foremost thanh toán nợ', 17748200, '1121', '131'),
('TG-003/03-05/03/02', 21, 'Cty Pataya chuyển trả tiền', 6254830, '1121', '131'),
('TG-003/04-03/04/02', 32, 'Cty Pataya chuyển trả tiền', 3432000, '1121', '131'),
('TG-004/01-25/01/02', 5, 'Cty thang máy Otis SG chuyển trả tiền', 8799990, '1121', '131'),
('TG-004/02-07/02/02', 16, 'Rút tiền mặt ICB nhập quỹ', 47000000, '111', '1121'),
('TG-004/03-05/03/02', 22, 'Cty Foremost chuyển trả tiền', 5140000, '1121', '131'),
('TG-004/04-05/04/02', 33, 'Cty Foremost chuyển trả tiền', 10890000, '1121', '131'),
('TG-005/01-25/01/02', 6, 'Cty PT CN Tân Thuận chuyển trả tiền', 2530000, '1121', '131'),
('TG-005/02-25/02/02', 17, 'Uni President thanh toán nợ', 2816000, '1121', '131'),
('TG-005/03-05/03/02', 23, 'Chú Vinh rút tiền gởi NHCT10 nhập quỹ TM.', 30000000, '111', '1121'),
('TG-005/04-09/04/02', 34, 'Cty SX&XNK BD chuyển trả tiền', 101439000, '1121', '131'),
('TG-006/01-25/01/02', 7, 'ICB CN 10 trả lãi tiền gởi T1/02', 45585, '1121', '711'),
('TG-006/02-26/02/02', 18, 'Lãi tháng 2/02 TG ICB', 27632, '1121', '711'),
('TG-006/03-05/03/02', 24, 'VCB trả lãi tiền gởi từ 26/2-25/3/02', 1697, '1122', '711'),
('TG-006/04-19/04/02', 35, 'Cty TNHH Hài Mỹ thanh toán', 6930000, '1123', '131'),
('TG-007/01-25/01/02', 8, 'VCB trả lãi tiền gởi T1/02', 1615, '1122', '711'),
('TG-007/02-26/02/02', 11, 'VCB trả lãi tiền gởi T2/02', 1726, '1122', '711'),
('TG-007/03-05/03/02', 25, 'ACB trả lãi tiền gởi', 526, '1123', '711'),
('TG-007/04-25/04/02', 36, 'VCB trả lãi tiền gởi T4/02', 2018, '1122', '711'),
('TG-008/01-29/01/02', 10, 'VCB thu lãi tiền vay T1/02', 2000000, '811', '1122'),
('TG-008/02-28/02/02', 12, 'VCB thu lãi tiền vay T2/02', 6670000, '811', '1122'),
('TG-008/03-05/03/02', 26, 'ICB trả lãi tiền gởi từ 26/2 đến hết 25/3.', 37003, '1121', '711'),
('TG-008/04-25/04/02', 37, 'ICB trả lãi tiền gởi T4/02', 72936, '1121', '711'),
('TG-009/01-31/01/02', 9, 'Cty đường Biên Hòa chuyển trả tiền', 2145000, '1121', '131'),
('TG-009/03-05/03/02', 27, 'VCB thu lãi tiền vay.', 6440000, '811', '1122'),
('TG-009/04-25/04/02', 38, 'ACB trả lãi tiền gởi T4/02', 5229, '1123', '711'),
('TG-010/03-05/03/02', 28, 'Cty Foremost chuyển trả tiền.', 4950000, '1121', '131'),
('TG-010/04-26/04/02', 39, 'Cty Pataya chuyển trả tiền qua ACB', 13392500, '1123', '131'),
('TG-011/03-05/03/02', 29, 'Cty Mercedes-Benz chuyển trả tiền', 8485880, '1121', '131'),
('TG-011/04-29/04/02', 1, 'VCB thu lãi tiền vay T4/02 HĐ 01.104 TK 15442', 3565000, '811', '1122');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tdanhmucchungtu`
--

CREATE TABLE `tdanhmucchungtu` (
  `cMaLoaiChungTu` varchar(2) NOT NULL,
  `cTenLoaiChungTu` varchar(30) NOT NULL,
  `cTenBang` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tdanhmucchungtu`
--

INSERT INTO `tdanhmucchungtu` (`cMaLoaiChungTu`, `cTenLoaiChungTu`, `cTenBang`) VALUES
('GS', 'Ghi sổ', 'tChungTuGhiSo'),
('KC', 'Kết chuyển', 'tChungTuKetChuyen'),
('NH', 'Nhập hàng hóa', 'tPhieuNhapHangHoa'),
('NT', 'Nhập hàng trả lại', 'tPhieuNhapHangTraLai'),
('PC', 'Phiếu chi', 'tPhieuChi'),
('PT', 'Phiếu thu', 'tPhieuThu'),
('TG', 'Phiếu tiền gởi ngân hàng', 'tChungTuNganHang'),
('XH', 'Xuất hàng hóa', 'tPhieuXuatHangHoa'),
('XT', 'Xuất trả', 'tPhieuXuatHangTraLai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tdanhmuchanghoa`
--

CREATE TABLE `tdanhmuchanghoa` (
  `cMaHang` varchar(8) NOT NULL,
  `cTenHang` varchar(50) DEFAULT NULL,
  `cNhomHang` varchar(5) DEFAULT NULL,
  `cDonViTinh` varchar(10) DEFAULT NULL,
  `nSoLuongTonDau` float DEFAULT NULL,
  `nThanhTienTonDau` float DEFAULT NULL,
  `dNgayTonDau` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tdanhmuchanghoa`
--

INSERT INTO `tdanhmuchanghoa` (`cMaHang`, `cTenHang`, `cNhomHang`, `cDonViTinh`, `nSoLuongTonDau`, `nThanhTienTonDau`, `dNgayTonDau`) VALUES
('GA000001', 'Giấy Bristol', 'GA', 'Kg', 1859.9, 24756800, '2002-01-01 00:00:00'),
('GA000002', 'Giấy Couché', 'GA', 'Kg', 6144.3, 76420400, '2002-01-01 00:00:00'),
('GA000003', 'Giấy Duplex', 'GA', 'Kg', 2808.6, 19554100, '2002-01-01 00:00:00'),
('GA000004', 'Decal giấy', 'GA', 'Mét', 5100, 24013400, '2002-01-01 00:00:00'),
('GA000005', 'Decal nhựa', 'GA', 'Mét', 3549, 25904900, '2002-01-01 00:00:00'),
('GA000006', 'Giấy Fort', 'GA', 'Kg', 100.8, 1490560, '2002-01-01 00:00:00'),
('GA000007', 'Giấy Tân Mai', 'GA', 'Kg', 115.8, 1610650, '2002-01-01 00:00:00'),
('GA000008', 'Giấy Carbonless', 'GA', 'Kg', 0, 0, '2002-01-01 00:00:00'),
('GA000009', 'Giấy Brilliant White Laid', 'GA', 'Kg', 0, 0, '2002-01-01 00:00:00'),
('GA000010', 'Giấy Ivory', 'GA', 'Kg', 0, 0, '2002-01-01 00:00:00'),
('GA000011', 'Giấy Láng', 'GA', 'Kg', 0, 0, '2002-01-01 00:00:00'),
('GA000012', 'Giấy Bãi Bằng', 'GA', 'Kg', 0, 0, '2002-01-01 00:00:00'),
('HH000001', 'Thùng Goldking', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000002', 'Thùng carton được BD', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000003', 'Bao nilon bonbon', 'HH', 'Kg', 0, 0, '2002-01-01 00:00:00'),
('HH000004', 'Tờ Renova', 'HH', 'Tờ', 0, 0, '2002-01-01 00:00:00'),
('HH000005', 'Tờ Deap Heat', 'HH', 'Tờ', 0, 0, '2002-01-01 00:00:00'),
('HH000009', 'Thùng carton DP Âu Mỹ', 'KH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000010', 'Bìa sơ mi', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000011', 'Thùng carton', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000012', 'Khăn giấy hộp', 'HH', 'Xấp', 0, 0, '2002-01-01 00:00:00'),
('HH000015', 'Giấy cuộn', 'HH', 'Cuộn', 0, 0, '2002-01-01 00:00:00'),
('HH000016', 'Giấy nhăn cuộn', 'HH', 'Cuộn', 0, 0, '2002-01-01 00:00:00'),
('HH000017', 'Giấy A4', 'HH', 'Kg', 0, 0, '2002-01-01 00:00:00'),
('HH000018', 'Giấy A3', 'HH', 'Kg', 0, 0, '2002-01-01 00:00:00'),
('HH000019', 'Giấy Duy Tân', 'HH', 'Kg', 0, 0, '2002-01-01 00:00:00'),
('HH000020', 'Giấy thông dụng', 'HH', 'Kg', 0, 0, '2002-01-01 00:00:00'),
('HH000021', 'Bìa đen', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000022', 'Bìa màu', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000023', 'Bìa bột', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000024', 'Bìa niêm phong', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000025', 'Túi giấy', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000026', 'Túi nilon', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000027', 'Thùng giấy', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000028', 'Bìa nhựa', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000029', 'Bìa tự nhiên', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000030', 'Bìa màu trắng', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000031', 'Mực in', 'HH', 'Hộp', 0, 0, '2002-01-01 00:00:00'),
('HH000032', 'Bút bi', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000033', 'Bút chì', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000034', 'Thước kẻ', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000035', 'Tẩy', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000036', 'Băng dính', 'HH', 'Cuộn', 0, 0, '2002-01-01 00:00:00'),
('HH000037', 'Ghim bấm', 'HH', 'Hộp', 0, 0, '2002-01-01 00:00:00'),
('HH000038', 'Kim bấm', 'HH', 'Hộp', 0, 0, '2002-01-01 00:00:00'),
('HH000039', 'Kéo cắt giấy', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000040', 'Bìa cứng', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000041', 'Dao rọc giấy', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000042', 'Bìa còng nhựa', 'HH', 'Cái', 0, 0, '2002-01-01 00:00:00'),
('HH000043', 'Giấy carton', 'HH', 'Tấm', 0, 0, '2002-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tdanhmuckhachhang`
--

CREATE TABLE `tdanhmuckhachhang` (
  `cMaKhachHang` varchar(5) NOT NULL,
  `cTenKhachHang` varchar(100) DEFAULT NULL,
  `cMaSoThue` varchar(20) DEFAULT NULL,
  `cDiaChi` varchar(50) DEFAULT NULL,
  `cTinhThanhPho` varchar(30) DEFAULT NULL,
  `cDienThoai` varchar(50) DEFAULT NULL,
  `cFax` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tdanhmuckhachhang`
--

INSERT INTO `tdanhmuckhachhang` (`cMaKhachHang`, `cTenKhachHang`, `cMaSoThue`, `cDiaChi`, `cTinhThanhPho`, `cDienThoai`, `cFax`) VALUES
('0001', 'Cty Lotte Việt Nam', '3700232139', 'P.Phú Thọ', 'Bình Dương', NULL, NULL),
('0002', 'Cty TNHH Anh Minh', NULL, NULL, NULL, NULL, NULL),
('0003', 'Cty TNHH An Nam Sáng', '0302396598', '21/3/14 Quang Trung', NULL, NULL, NULL),
('0004', 'Cty Sữa TNHH Việt Nam Foremost', '3700229344', 'Bình Hòa - Thuận An', 'Bình Dương', NULL, NULL),
('0005', 'Cty TNHH SXXDTM Trung Sơn', '0300954511', '18A Ngô Văn Năm, Q.1', NULL, NULL, NULL),
('0006', 'Cty Liên Doanh Sứ Vệ Sinh Mỹ Phú', '3700230117', 'An Phú - Thuận  An', 'Bình Dương', NULL, NULL),
('0007', 'Cty TNHH SX-TM Mỹ Hảo', '0301416932', '208 Bãi Sậy, P.4, Q.6', NULL, NULL, NULL),
('0008', 'Cty TNHH SX-TM Hậu Sanh', '0301966090', '334/10 Minh Phụng, Q.11', NULL, NULL, NULL),
('0009', 'Cty TNHH TM&Chăn nuôi Bình Phước', '3800211407', 'Tân Lộc-Đồng Phú', 'Bình Phước', NULL, NULL),
('0010', 'Cty TNHH Thức ăn Gia súc Lái Thiêu', '3700149709', '48B Thị trấn Lái Thiêu', NULL, NULL, NULL),
('0011', 'Cty CP Sữa Việt Nam Vinamilk', '3700174599', '49/5 Đường Số 9, KCN Sóng Thần', 'Bình Dương', NULL, NULL),
('0012', 'Cty TNHH Bao bì Hải Vân', '0301234567', '56B Cộng Hòa, P.4, Q.Tân Bình', 'TP.HCM', '02838412345', NULL),
('0013', 'Cty TNHH Cơ điện Lạnh Bình Minh', '0308765432', '123 Đường Lý Thái Tổ, Q.10', 'TP.HCM', '02838567890', NULL),
('0014', 'Cty TNHH Công nghệ Xanh', '0301122334', '17/5 Trần Hưng Đạo, Q.5', 'TP.HCM', '02839674512', NULL),
('0015', 'Cty TNHH Vận tải Hoàng Gia', '3701234567', 'Số 10 Đường CMT8, Q.Tân Bình', 'TP.HCM', '02838456789', NULL),
('0102', 'Tăng Linh Cường', NULL, NULL, NULL, NULL, NULL),
('0103', 'Cty TNHH Cửu Long', '0302339769', '638 Nguyễn Chí Thanh, Q.11', NULL, NULL, NULL),
('0104', 'Cty TNHH Đất Quảng', '0302514636', '319-C12 Lý Thường Kiệt, Q.11', 'HCM', '8636541', '8639665'),
('0105', 'Anh Nghiệp', NULL, NULL, NULL, NULL, NULL),
('0106', 'Cty Cổ Phần XNK Tân Định', '0301717873', '266 Nam Kỳ Khỏi Nghĩa, Q.3', 'HCM', '9320109', '9325993'),
('0107', 'Cty Hoàn Mỹ', NULL, NULL, NULL, NULL, NULL),
('0108', 'Anh Trường', NULL, NULL, NULL, NULL, NULL),
('0109', 'Anh Liên', NULL, NULL, NULL, NULL, NULL),
('0110', 'Cty DongSung', NULL, NULL, NULL, NULL, NULL),
('0111', 'Cty TNHH SX TM Hoàng Lê', '0302290859', '223/2B XVNT, Q.BT', 'HCM', NULL, NULL),
('0112', 'DNTN Thanh Hưng', '1900257225', '57B Lý Thường Kiệt,', 'Bạc Liêu', NULL, NULL),
('0113', 'Cty Lương Nông', NULL, NULL, NULL, NULL, NULL),
('0114', 'Cty T.I.S', '0302345794', '31 Nguyễn Văn Thủ, Q.1', NULL, NULL, NULL),
('0115', 'Công ty SAFI', NULL, NULL, NULL, NULL, NULL),
('0116', 'Cty thang máy OTIS Sài Gòn', '0300801931', '2 Lý Tự Trọng, Q.1', NULL, NULL, NULL),
('0117', 'Cty TNHH SX-TM Lâm Thái Vinh', '0301689792', '268 Hải Thượng Lãn Ông, Q.5', NULL, NULL, NULL),
('0118', 'Cty TNHH TM-DV M.K', '0302481677', '215D/20A Phan Đăng Lưu, Q.PN', 'TP.HCM', NULL, NULL),
('0119', 'Cty Lương Thực Thực Phẩm Đồng Khánh', NULL, NULL, NULL, '8383479', NULL),
('0120', 'Cty TNHH Thương Mại Văn Hoa', '0301982021', '104-106 Nguyễn Huệ, Q.1', 'TP. HCM', '8227085', NULL),
('0121', 'Cơ sở que hàn Đức Quang', NULL, '56/6 Đường số 7, P.18, Q.TB', 'HCM', NULL, NULL),
('0122', 'Anh Hoài', NULL, NULL, NULL, NULL, NULL),
('0123', 'DNTN KD Hưng Long', '0302665434', '89A Nguyễn Thi, P.13, Q.5', 'Hồ Chí Minh', NULL, NULL),
('0124', 'Nhà hàng Hải Phương', NULL, NULL, NULL, NULL, NULL),
('0125', 'Cty TNHH An Đức Thoại Sanh', NULL, NULL, NULL, NULL, NULL),
('0126', 'Cty Thái Nhật Tân', '0301731525', '29/14B Trường Chinh, Q.TB', 'Hồ Chí Minh', NULL, NULL),
('0127', 'Cty TNHH TM Phong Thái', '0301347157-1', '198 Hải Thượng Lãn Ông, P.14, Q.5', 'Hồ Chí Minh', NULL, NULL),
('0128', 'Cty Quán Quân', '0301178773-1', NULL, NULL, NULL, NULL),
('0129', 'XN Dược Phẩm 150', NULL, '120 Trần Hưng Đạo, Q.1', NULL, NULL, NULL),
('0130', 'Không rõ tên', NULL, NULL, NULL, NULL, NULL),
('0131', 'Cty TNHH Quốc Luật', '0302018275', '24 Hoàng Việt, P.4, Q.TB', NULL, NULL, NULL),
('0132', 'Chị Vân', NULL, NULL, NULL, NULL, NULL),
('0133', 'Chị Yến', NULL, NULL, NULL, NULL, NULL),
('0134', 'Cty Cổ Phần Yên Phụ', '0302107905', 'Lô A7, đường số 6, KCN Lê Minh Xuân, BC', 'Hồ Chí Minh', '7660366', '771026'),
('0135', 'Cty Liên doanh Vifon Acecook', '0300808687-1', '6/1BTrường Chinh, P.15, Q.TB', 'Hồ Chí Minh', '8154069', '8154067'),
('0136', 'Cty Liên Doanh Rạp Diamond', '0302575928', '34 Lê Duẩn, P.Bến Nghé, Q.1', 'Hồ Chí Minh', '8257751', '8227841'),
('0137', 'DNTN Chín Tuy', NULL, '22/1 Phạm Thị Bất, P. Vĩnh Trường', 'Nha Trang', '883399-881289', '886699'),
('0138', 'Cty Chu Lai', NULL, NULL, NULL, '9740556', NULL),
('0139', 'Cty LD TNHH CN Liên Hồng', '0302361115', '10/84 Xa lộ Hà Nội, Q.9', 'Hồ Chí Minh', '8969265-7306286', NULL),
('0140', 'Chi nhánh Cty TNHH Chế Biến Trà Tân Nam Bắc', '5800000262-001-1', '73 Phó Cơ Điều, P.4, Q.11', 'Hồ Chí Minh', '8552019-8575031', '8560242'),
('0141', 'Công viên nước BD', NULL, NULL, NULL, NULL, NULL),
('0142', 'Cty TNHH Nestle VN', NULL, NULL, NULL, NULL, NULL),
('0143', 'Cty TNHH May Phúc Yên', '0301397535', '434 Phạm Văn Hai, Q.TB', 'Hồ Chí Minh', NULL, NULL),
('0144', 'Cty Vĩnh Khang', NULL, NULL, NULL, NULL, NULL),
('0145', 'Bảo Hoa', NULL, NULL, NULL, NULL, NULL),
('0146', 'Cty Thuận Phát', NULL, NULL, NULL, NULL, NULL),
('0147', 'Anh Kiềm', NULL, NULL, NULL, NULL, NULL),
('0148', 'Cty Nam Hải', '0301285422-1', '12Bis Tôn Đản, Q.4', 'Hồ Chí Minh', NULL, NULL),
('0162', 'Cty Baxco Pharmaceutical', NULL, NULL, NULL, NULL, NULL),
('0163', 'Cơ sở nước giải khát Quang Huy', NULL, NULL, NULL, NULL, NULL),
('0164', 'Cty TNHH SX TM Giấy Bảo Hưng', '0301447056', '3 Tạ Quang Bửu, P.6, Q.8', 'Hồ Chí Minh', NULL, NULL),
('0165', 'Cty nhựa Tân Hiệp Hưng', '0301074781-1', '909 đường 3/2, P.7, Q.11', 'Hồ Chí Minh', '8552794', '8577020'),
('0166', 'Minh Đăng', NULL, NULL, NULL, NULL, NULL),
('0167', 'Cty Thắng Lợi', '3700146899', '29 Đại Lộ Bình Dương- Thủ Dầu Một', 'Bình Dương', '0650,822551', '0650.829371'),
('0168', 'Anh Kiệt', NULL, NULL, NULL, NULL, NULL),
('0169', 'Giày Hồng Anh', NULL, NULL, NULL, NULL, NULL),
('0170', 'Huy Hùng', NULL, NULL, NULL, NULL, NULL),
('0171', 'Cty thuốc lá Đồng Nai', '3600253505-1', 'KCN Biên Hòa 2', 'Đồng Nai', NULL, NULL),
('0172', 'Cô Như Ý', NULL, NULL, NULL, NULL, NULL),
('0173', 'Cty TNHH AEROTECH Việt Nam', '0301567321-1', 'KCN Tây Bắc Củ Chi', 'Hồ Chí Minh', '8924659', NULL),
('0174', 'Cơ sở Hoa Hồng', NULL, NULL, NULL, NULL, NULL),
('0175', 'Cty TNHH Giấy & TM T.T', '0302587899', 'D16/8A Hương Lộ 4, Tân Kiên, BC', 'Hồ Chí Minh', '7600063', NULL),
('0176', 'Lê Doãn Chấn', NULL, NULL, NULL, NULL, NULL),
('0177', 'CN Cty VT NN Hải Phòng', '02001169180111', '378 Nguyễn Công Trứ, Q.1', 'Hồ Chí Minh', NULL, NULL),
('0178', 'Cty Minh Thành', '0300492137', '2Bis Nguyễn Thị Minh Khai, Q.1', 'Hồ Chí Minh', NULL, NULL),
('0179', 'Cty TNHH Nhựa Đài Loan', '0301482847-1', '24/10 Hương Lộ 80B, Xã Thới Tam Thôn, H.Môn', 'HCM', NULL, NULL),
('0180', 'Công ty Thuận Phong', NULL, '114-116 Tuy Lý Vương, Q.8', 'HCM', NULL, NULL),
('0181', 'Cty TNHH H&H', NULL, NULL, NULL, NULL, NULL),
('0182', 'Nước mắm Thu Tâm', NULL, NULL, NULL, NULL, NULL),
('0183', 'Cty An Phước', '0301241545-1', '100/11-12-13 An Dương Vương, Q.5', 'HCM', '8350059', '8350058'),
('0184', 'Cty TNHH Dịch vụ TM Nam Giang', '0301442146-1', '133/11 Hồ Văn Huê, Q,PN', 'HCM', NULL, NULL),
('0185', 'Cty TNHH TM-SX Việât Viễn', '0301451447-1', '14G Phan Văn Trị, Q.GV', 'HCM', NULL, NULL),
('0186', 'Công ty TNHH Hoàng Anh', '0302371234', '85 Nguyễn Trãi, Q.5', 'HCM', '8389234', '8389235'),
('0202', 'Cty Hưng Phát Tường', NULL, NULL, NULL, NULL, NULL),
('0203', 'Cửa hàng Việt Thy (Biên Hòa)', NULL, NULL, NULL, NULL, NULL),
('0204', 'Cty CP SX-TM XNK Khả Khẩu Lạc', NULL, '107 Lũy Bán Bích, P.20, Q.TB', 'Hồ Chí Minh', '9612606', '961474'),
('0205', 'Cơ sở Hoàng Tử Kiên', '0300277676-4', '97/5 Phù Đổng Thiên Vương, P.11, Q.5', 'Hồ Chí Minh', NULL, NULL),
('0223', 'Cty HHH', NULL, NULL, NULL, NULL, NULL),
('0224', 'Cty XXX', NULL, NULL, NULL, NULL, NULL),
('0225', 'Cty BaBa', NULL, NULL, NULL, NULL, NULL),
('0226', 'Cty Abba', NULL, NULL, NULL, NULL, NULL),
('0227', 'Cty ANH ANH', NULL, NULL, NULL, NULL, NULL),
('0228', 'Cty Phú Hòa', NULL, NULL, NULL, NULL, NULL),
('0229', 'Cty Mỹ Long', NULL, NULL, NULL, NULL, NULL),
('0230', 'Cty ThuậnPhát', NULL, NULL, NULL, NULL, NULL),
('9999', 'Mua ngoài', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tdanhmuctaikhoan`
--

CREATE TABLE `tdanhmuctaikhoan` (
  `cTaiKhoan` varchar(20) NOT NULL,
  `cTenTaiKhoan` varchar(60) DEFAULT NULL,
  `nSoDuNoDau` float DEFAULT NULL,
  `nSoDuCoDau` float DEFAULT NULL,
  `bCoDinhKhoan` tinyint(1) NOT NULL,
  `cCap` varchar(1) DEFAULT NULL,
  `dNgaySoDu` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tdanhmuctaikhoan`
--

INSERT INTO `tdanhmuctaikhoan` (`cTaiKhoan`, `cTenTaiKhoan`, `nSoDuNoDau`, `nSoDuCoDau`, `bCoDinhKhoan`, `cCap`, `dNgaySoDu`) VALUES
('111', 'Tiền Mặt', 33063000, NULL, 1, '1', '2002-01-01 00:00:00'),
('112', 'Tiền gởi ngân hàng', NULL, 0, 0, '1', '2002-01-01 00:00:00'),
('1121', 'Tiền VNĐ gởi ICB', 1010580, 0, 1, '2', '2002-01-01 00:00:00'),
('1122', 'Tiền VNĐ gởi VCB', 689247, 0, 1, '2', '2002-01-01 00:00:00'),
('1123', 'Tiền VNĐ gởi ACB', 0, 0, 1, '2', '2002-01-01 00:00:00'),
('113', 'Tiền đang chuyển', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('131', 'Phải thu khách hàng', 467249000, NULL, 1, '1', '2002-01-01 00:00:00'),
('133', 'Thuế đầu vào', 0, 0, 0, '1', '2002-01-01 00:00:00'),
('1331', 'Thuế VAT được KT', 47041000, 0, 1, '1', '2002-01-01 00:00:00'),
('138', 'Các khoản phải thu khác', 1000780000, 0, 0, '1', '2002-01-01 00:00:00'),
('1388', 'Các khoản phải thu khác', 1000000000, 0, 1, '2', '2002-01-01 00:00:00'),
('141', 'Tạm ứng', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('142', 'Chi phí trả trước', 0, 0, 0, '1', '2002-01-01 00:00:00'),
('1421', 'Chi phí trả trước', 17191600, 0, 1, '1', '2002-01-01 00:00:00'),
('153', 'Công cụ, dụng cụ', 6441600, 0, 1, '1', '2002-01-01 00:00:00'),
('156', 'Hàng hoá', 265218000, 0, 1, '1', '2002-01-01 00:00:00'),
('211', 'Tài sản cố định', 2562260000, 0, 1, '1', '2002-01-01 00:00:00'),
('214', 'Khấu hao TSCĐ', 0, 285656000, 1, '1', '2002-01-01 00:00:00'),
('244', 'Ký quỹ, ký cược dài hạn', 30000000, 0, 1, '1', '2002-01-01 00:00:00'),
('311', 'Vay ngắn hạn', 0, 1000000000, 1, '1', '2002-01-01 00:00:00'),
('331', 'Phải trả cho khách hàng', 0, 356132000, 1, '1', '2002-01-01 00:00:00'),
('333', 'Thuế & các khoản phải nộp', 0, 0, 0, '1', '2002-01-01 00:00:00'),
('3331', 'Thuế GTGT', 0, 0, 1, '2', '2002-01-01 00:00:00'),
('3334', 'Thuế TNDN', 4960000, 0, 1, '2', '2002-01-01 00:00:00'),
('3338', 'Các loại thuế khác', 0, 0, 1, '2', '2002-01-01 00:00:00'),
('334', 'Phải trả nhân viên', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('335', 'Chi phí phải trả', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('338', 'Phải trả, phải nộp khác', 0, 0, 0, '1', '2002-01-01 00:00:00'),
('3383', 'Bảo hiểm xã hội', 0, 0, 1, '2', '2002-01-01 00:00:00'),
('3384', 'Bảo hiểm Y tế', 780570, 0, 1, '2', '2002-01-01 00:00:00'),
('3388', 'Phải trả khác', 0, 0, 1, '2', '2002-01-01 00:00:00'),
('341', 'Vay dài hạn', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('411', 'Nguồn vốn KD', 0, 3000000000, 1, '1', '2002-01-01 00:00:00'),
('421', 'Lãi chưa phân phối', 193881000, 0, 0, '1', '2002-01-01 00:00:00'),
('4211', 'Lãi năm trước', 193881000, 0, 1, '2', '2002-01-01 00:00:00'),
('4212', 'Lãi năm nay', 0, 0, 1, '2', '2002-01-01 00:00:00'),
('431', 'Quỹ khen thưởng, phúc lợi', 12000000, 0, 1, '1', '2002-01-01 00:00:00'),
('511', 'Doanh thu', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('521', 'Chiết khấu thương mại', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('531', 'Hàng bán bị trả lại', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('532', 'Giảm giá hàng bán', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('632', 'Giá vốn hàng bán', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('641', 'Chi phí bán hàng', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('642', 'Chi phí quản lý', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('711', 'Thu nhập HĐ khác', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('811', 'Chi phí HĐ khác', 0, 0, 1, '1', '2002-01-01 00:00:00'),
('911', 'Xác định kết quả KD', 0, 0, 1, '1', '2002-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tdanhmuctaikhoancongnokhachhang`
--

CREATE TABLE `tdanhmuctaikhoancongnokhachhang` (
  `cTaiKhoan` varchar(5) NOT NULL,
  `cMaKhachHang` varchar(8) NOT NULL,
  `nSoDuNoDau` float DEFAULT NULL,
  `nSoDuCoDau` float DEFAULT NULL,
  `dNgaySoDu` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tdanhmuctaikhoancongnokhachhang`
--

INSERT INTO `tdanhmuctaikhoancongnokhachhang` (`cTaiKhoan`, `cMaKhachHang`, `nSoDuNoDau`, `nSoDuCoDau`, `dNgaySoDu`) VALUES
('131', '0001', 9630720, 0, '2002-01-01 00:00:00'),
('131', '0002', 0, 0, '2002-01-01 00:00:00'),
('131', '0003', 0, 0, '2002-01-01 00:00:00'),
('131', '0004', 0, 0, '2002-01-01 00:00:00'),
('131', '0005', 0, 0, '2002-01-01 00:00:00'),
('131', '0006', 22156800, 0, '2002-01-01 00:00:00'),
('131', '0007', 0, 0, '2002-01-01 00:00:00'),
('131', '0008', 0, 0, '2002-01-01 00:00:00'),
('131', '0009', 0, 0, '2002-01-01 00:00:00'),
('131', '0010', 0, 0, '2002-01-01 00:00:00'),
('131', '0011', 0, 0, '2002-01-01 00:00:00'),
('131', '0012', 52277700, 0, '2002-01-01 00:00:00'),
('131', '0013', 0, 0, '2002-01-01 00:00:00'),
('131', '0014', 35750000, 0, '2002-01-01 00:00:00'),
('131', '0015', 229086000, 0, '2002-01-01 00:00:00'),
('131', '0016', 0, 0, '2002-01-01 00:00:00'),
('131', '0017', 0, 0, '2002-01-01 00:00:00'),
('131', '0018', 8294000, NULL, '2002-01-01 00:00:00'),
('131', '0019', 37345000, 0, '2002-01-01 00:00:00'),
('131', '0020', 5720000, 0, '2002-01-01 00:00:00'),
('131', '0021', 0, 0, '2002-01-01 00:00:00'),
('131', '0022', 2145000, 0, '2002-01-01 00:00:00'),
('131', '0023', 9955000, 0, '2002-01-01 00:00:00'),
('131', '0024', 0, 0, '2002-01-01 00:00:00'),
('131', '0025', 0, 0, '2002-01-01 00:00:00'),
('131', '0026', 0, 0, '2002-01-01 00:00:00'),
('131', '0027', 0, 0, '2002-01-01 00:00:00'),
('131', '0028', 0, 0, '2002-01-01 00:00:00'),
('131', '0029', 0, 0, '2002-01-01 00:00:00'),
('131', '0030', 0, 0, '2002-01-01 00:00:00'),
('131', '0031', 660000, 0, '2002-01-01 00:00:00'),
('131', '0032', 0, 0, '2002-01-01 00:00:00'),
('131', '0033', 0, 0, '2002-01-01 00:00:00'),
('131', '0034', 0, 0, '2002-01-01 00:00:00'),
('131', '0037', 0, 0, '2002-01-01 00:00:00'),
('131', '0067', 0, 0, '2002-01-01 00:00:00'),
('131', '0068', 39269000, 0, '2002-01-01 00:00:00'),
('131', '0069', 0, 0, '2002-01-01 00:00:00'),
('131', '0071', 0, 0, '2002-01-01 00:00:00'),
('131', '0072', 0, 0, '2002-01-01 00:00:00'),
('131', '0074', 0, 0, '2002-01-01 00:00:00'),
('131', '0075', 0, 0, '2002-01-01 00:00:00'),
('131', '0076', 0, 0, '2002-01-01 00:00:00'),
('131', '0077', 0, 0, '2002-01-01 00:00:00'),
('131', '0078', 0, 0, '2002-01-01 00:00:00'),
('131', '0079', 0, NULL, '2002-01-01 00:00:00'),
('131', '0080', 0, 0, '2002-01-01 00:00:00'),
('131', '0081', 0, 0, '2002-01-01 00:00:00'),
('131', '0082', 0, 0, '2002-01-01 00:00:00'),
('131', '0084', 0, 0, '2002-01-01 00:00:00'),
('131', '0085', 0, 0, '2002-01-01 00:00:00'),
('131', '0086', 0, 0, '2002-01-01 00:00:00'),
('131', '0087', 0, 0, '2002-01-01 00:00:00'),
('131', '0088', 0, 0, '2002-01-01 00:00:00'),
('131', '0089', 0, 0, '2002-01-01 00:00:00'),
('131', '0090', 0, 0, '2002-01-01 00:00:00'),
('131', '0091', 0, 0, '2002-01-01 00:00:00'),
('131', '0093', 0, 0, '2002-01-01 00:00:00'),
('131', '0094', 0, 0, '2002-01-01 00:00:00'),
('131', '0095', 0, 0, '2002-01-01 00:00:00'),
('131', '0096', 0, 0, '2002-01-01 00:00:00'),
('131', '0119', 0, 0, '2002-01-01 00:00:00'),
('131', '0120', 0, 0, '2002-01-01 00:00:00'),
('131', '0121', 0, 0, '2002-01-01 00:00:00'),
('131', '0122', 0, 0, '2002-01-01 00:00:00'),
('131', '0124', 0, 0, '2002-01-01 00:00:00'),
('131', '0125', 0, 0, '2002-01-01 00:00:00'),
('131', '0126', 0, 0, '2002-01-01 00:00:00'),
('131', '0127', 0, 0, '2002-01-01 00:00:00'),
('131', '0128', 0, 0, '2002-01-01 00:00:00'),
('131', '0129', 0, 0, '2002-01-01 00:00:00'),
('131', '0130', 0, 0, '2002-01-01 00:00:00'),
('131', '0133', 0, 0, '2002-01-01 00:00:00'),
('131', '0134', 0, 0, '2002-01-01 00:00:00'),
('131', '0135', 0, 0, '2002-01-01 00:00:00'),
('131', '0136', 0, 0, '2002-01-01 00:00:00'),
('131', '0137', 0, 0, '2002-01-01 00:00:00'),
('131', '0138', 0, 0, '2002-01-01 00:00:00'),
('131', '0139', 0, 0, '2002-01-01 00:00:00'),
('131', '0140', 0, 0, '2002-01-01 00:00:00'),
('131', '0141', 3080000, 0, '2002-01-01 00:00:00'),
('131', '0142', 3080000, 0, '2002-01-01 00:00:00'),
('131', '0143', 0, 0, '2002-01-01 00:00:00'),
('131', '0144', 0, 0, '2002-01-01 00:00:00'),
('131', '0145', 0, 0, '2002-01-01 00:00:00'),
('131', '0146', 0, 0, '2002-01-01 00:00:00'),
('131', '0147', 0, 0, '2002-01-01 00:00:00'),
('131', '0154', 0, 0, '2002-01-01 00:00:00'),
('131', '0155', 0, 0, '2002-01-01 00:00:00'),
('131', '0156', 0, 0, '2002-01-01 00:00:00'),
('131', '0157', 0, 0, '2002-01-01 00:00:00'),
('131', '0158', 0, 0, '2002-01-01 00:00:00'),
('131', '0159', 0, 0, '2002-01-01 00:00:00'),
('131', '0160', 0, 0, '2002-01-01 00:00:00'),
('131', '0161', 0, 0, '2002-01-01 00:00:00'),
('131', '0162', 0, 0, '2002-01-01 00:00:00'),
('131', '0163', 0, 0, '2002-01-01 00:00:00'),
('131', '0165', 0, 0, '2002-01-01 00:00:00'),
('131', '0166', 0, 0, '2002-01-01 00:00:00'),
('131', '0167', 0, 0, '2002-01-01 00:00:00'),
('131', '0168', 0, 0, '2002-01-01 00:00:00'),
('131', '0169', 0, 0, '2002-01-01 00:00:00'),
('131', '0170', 0, 0, '2002-01-01 00:00:00'),
('131', '0171', 0, 0, '2002-01-01 00:00:00'),
('131', '0172', 0, 0, '2002-01-01 00:00:00'),
('131', '0173', 0, 0, '2002-01-01 00:00:00'),
('131', '0174', 0, 0, '2002-01-01 00:00:00'),
('131', '0176', 0, 0, '2002-01-01 00:00:00'),
('131', '0177', 0, 0, '2002-01-01 00:00:00'),
('131', '0178', 0, 0, '2002-01-01 00:00:00'),
('131', '0179', 0, 0, '2002-01-01 00:00:00'),
('131', '0180', 0, 0, '2002-01-01 00:00:00'),
('131', '0181', 0, 0, '2002-01-01 00:00:00'),
('131', '0182', 0, 0, '2002-01-01 00:00:00'),
('131', '0183', 0, 0, '2002-01-01 00:00:00'),
('131', '0184', 0, 0, '2002-01-01 00:00:00'),
('131', '0185', 0, 0, '2002-01-01 00:00:00'),
('131', '0186', 0, 0, '2002-01-01 00:00:00'),
('131', '0187', 0, 0, '2002-01-01 00:00:00'),
('131', '0188', 0, 0, '2002-01-01 00:00:00'),
('131', '0189', 0, 0, '2002-01-01 00:00:00'),
('131', '0190', 0, 0, '2002-01-01 00:00:00'),
('131', '0191', 0, 0, '2002-01-01 00:00:00'),
('131', '0192', 0, 0, '2002-01-01 00:00:00'),
('131', '0193', 0, 0, '2002-01-01 00:00:00'),
('131', '0194', 0, 0, '2002-01-01 00:00:00'),
('131', '0195', 0, 0, '2002-01-01 00:00:00'),
('131', '0196', 0, 0, '2002-01-01 00:00:00'),
('131', '0197', 0, 0, '2002-01-01 00:00:00'),
('131', '0198', 0, 0, '2002-01-01 00:00:00'),
('131', '0199', 0, 0, '2002-01-01 00:00:00'),
('131', '0200', 0, 0, '2002-01-01 00:00:00'),
('131', '0201', 0, 0, '2002-01-01 00:00:00'),
('131', '0202', 0, 0, '2002-01-01 00:00:00'),
('131', '0203', 0, 0, '2002-01-01 00:00:00'),
('131', '0204', 0, 0, '2002-01-01 00:00:00'),
('131', '0223', 0, 0, '2002-01-01 00:00:00'),
('131', '0224', 0, 0, '2002-01-01 00:00:00'),
('131', '0225', 0, 0, '2002-01-01 00:00:00'),
('131', '0226', 0, 0, '2002-01-01 00:00:00'),
('131', '0227', 0, 0, '2002-01-01 00:00:00'),
('131', '0228', 0, 0, '2002-01-01 00:00:00'),
('131', '0229', 0, 0, '2002-01-01 00:00:00'),
('131', '0230', 0, 0, '2002-01-01 00:00:00'),
('1388', '0015', 0, 0, '2002-01-01 00:00:00'),
('1388', '0034', 0, 0, '2002-01-01 00:00:00'),
('1388', '0074', 0, 0, '2002-01-01 00:00:00'),
('1388', '9999', 1000000000, 0, '2002-01-01 00:00:00'),
('331', '0034', 0, 11209000, '2002-01-01 00:00:00'),
('331', '0035', 0, 0, '2002-01-01 00:00:00'),
('331', '0036', 0, 31781200, '2002-01-01 00:00:00'),
('331', '0037', 0, 0, '2002-01-01 00:00:00'),
('331', '0038', 0, 0, '2002-01-01 00:00:00'),
('331', '0039', 0, 14821400, '2002-01-01 00:00:00'),
('331', '0040', 0, 0, '2002-01-01 00:00:00'),
('331', '0041', 0, 0, '2002-01-01 00:00:00'),
('331', '0042', 0, 0, '2002-01-01 00:00:00'),
('331', '0043', 0, 0, '2002-01-01 00:00:00'),
('331', '0044', 0, 6415200, '2002-01-01 00:00:00'),
('331', '0045', 0, 0, '2002-01-01 00:00:00'),
('331', '0046', 0, 0, '2002-01-01 00:00:00'),
('331', '0047', 0, 2745600, '2002-01-01 00:00:00'),
('331', '0048', 0, 0, '2002-01-01 00:00:00'),
('331', '0049', 0, 7085760, '2002-01-01 00:00:00'),
('331', '0050', 0, 0, '2002-01-01 00:00:00'),
('331', '0051', 0, 0, '2002-01-01 00:00:00'),
('331', '0052', 0, 0, '2002-01-01 00:00:00'),
('331', '0053', 0, 0, '2002-01-01 00:00:00'),
('331', '0054', 0, 0, '2002-01-01 00:00:00'),
('331', '0055', 0, 0, '2002-01-01 00:00:00'),
('331', '0056', 0, 5775000, '2002-01-01 00:00:00'),
('331', '0057', 0, 0, '2002-01-01 00:00:00'),
('331', '0058', 0, 0, '2002-01-01 00:00:00'),
('331', '0059', 0, 0, '2002-01-01 00:00:00'),
('331', '0060', 0, 12450000, '2002-01-01 00:00:00'),
('331', '0061', 0, 12750000, '2002-01-01 00:00:00'),
('331', '0062', 0, 165000000, '2002-01-01 00:00:00'),
('331', '0063', 0, 81281200, '2002-01-01 00:00:00'),
('331', '0064', 0, 0, '2002-01-01 00:00:00'),
('331', '0065', 0, 0, '2002-01-01 00:00:00'),
('331', '0066', 0, 0, '2002-01-01 00:00:00'),
('331', '0067', 0, 0, '2002-01-01 00:00:00'),
('331', '0068', 0, 0, '2002-01-01 00:00:00'),
('331', '0069', 0, 0, '2002-01-01 00:00:00'),
('331', '0070', 0, 0, '2002-01-01 00:00:00'),
('331', '0071', 0, 0, '2002-01-01 00:00:00'),
('331', '0072', 0, 0, '2002-01-01 00:00:00'),
('331', '0073', 0, 0, '2002-01-01 00:00:00'),
('331', '0074', 0, 0, '2002-01-01 00:00:00'),
('331', '0075', 0, 0, '2002-01-01 00:00:00'),
('331', '0083', 0, 0, '2002-01-01 00:00:00'),
('331', '0092', 0, 0, '2002-01-01 00:00:00'),
('331', '0098', 0, 0, '2002-01-01 00:00:00'),
('331', '0100', 0, 0, '2002-01-01 00:00:00'),
('331', '0101', 0, 0, '2002-01-01 00:00:00'),
('331', '0102', 0, 0, '2002-01-01 00:00:00'),
('331', '0111', 0, 0, '2002-01-01 00:00:00'),
('331', '0114', 0, 0, '2002-01-01 00:00:00'),
('331', '0117', 0, 0, '2002-01-01 00:00:00'),
('331', '0118', 0, 0, '2002-01-01 00:00:00'),
('331', '0123', 0, 0, '2002-01-01 00:00:00'),
('331', '0125', 0, 4818000, '2002-01-01 00:00:00'),
('331', '0127', 0, 0, '2002-01-01 00:00:00'),
('331', '0128', 0, 0, '2002-01-01 00:00:00'),
('331', '0131', 0, 0, '2002-01-01 00:00:00'),
('331', '0132', 0, 0, '2002-01-01 00:00:00'),
('331', '0148', 0, 0, '2002-01-01 00:00:00'),
('331', '0149', 0, 0, '2002-01-01 00:00:00'),
('331', '0150', 0, 0, '2002-01-01 00:00:00'),
('331', '0151', 0, 0, '2002-01-01 00:00:00'),
('331', '0152', 0, 0, '2002-01-01 00:00:00'),
('331', '0153', 0, 0, '2002-01-01 00:00:00'),
('331', '0164', 0, 0, '2002-01-01 00:00:00'),
('331', '0175', 0, 0, '2002-01-01 00:00:00'),
('331', '0205', 0, 0, '2002-01-01 00:00:00'),
('331', '9999', 0, 0, '2002-01-01 00:00:00'),
('3388', '0034', 0, 0, '2002-01-01 00:00:00'),
('3388', '0067', 0, 0, '2002-01-01 00:00:00'),
('3388', '0130', 0, 0, '2002-01-01 00:00:00'),
('3388', '0133', 0, 0, '2002-01-01 00:00:00'),
('3388', '0151', 0, 0, '2002-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tphieuchi`
--

CREATE TABLE `tphieuchi` (
  `cMaChungTu` varchar(20) NOT NULL,
  `cLoaiChungTu` varchar(2) DEFAULT NULL,
  `cSoChungTu` varchar(6) DEFAULT NULL,
  `dNgayChungTu` datetime DEFAULT NULL,
  `cHoTen` varchar(30) DEFAULT NULL,
  `cDiaChi` varchar(50) DEFAULT NULL,
  `cMaKhachHang` varchar(10) DEFAULT NULL,
  `cTenKhachHang` varchar(100) DEFAULT NULL,
  `cMaSoThue` varchar(20) DEFAULT NULL,
  `cDienGiai` varchar(100) DEFAULT NULL,
  `cBieuThue` varchar(2) DEFAULT NULL,
  `cSoSeRi` varchar(10) DEFAULT NULL,
  `cSoHoaDon` varchar(10) DEFAULT NULL,
  `dNgayHoaDon` datetime DEFAULT NULL,
  `nThueSuat` float DEFAULT NULL,
  `cMatHang` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tphieuchi`
--

INSERT INTO `tphieuchi` (`cMaChungTu`, `cLoaiChungTu`, `cSoChungTu`, `dNgayChungTu`, `cHoTen`, `cDiaChi`, `cMaKhachHang`, `cTenKhachHang`, `cMaSoThue`, `cDienGiai`, `cBieuThue`, `cSoSeRi`, `cSoHoaDon`, `dNgayHoaDon`, `nThueSuat`, `cMatHang`) VALUES
('PC-001/01-03/01/02', 'PC', '001/01', '2002-01-03 00:00:00', 'Nguyễn Anh Tuấn', NULL, '0128', 'Cty Quán Quân', '0301178773-1', 'Mua giấy in vi tính', '03', 'AA/XX', '001113', '2002-01-03 00:00:00', 0.1, 'Giấy vi tính'),
('PC-001/03-04/03/02', 'PC', '001/03', '2002-03-04 00:00:00', 'Võ Thị Aùnh Tuyết', NULL, '0006', 'Cty Liên Doanh Sứ Vệ Sinh Mỹ Phú', '3700230117', 'Chi tiền hoa hồng cho Mỹ Phú', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-001/04-01/04/02', 'PC', '001/04', '2002-04-01 00:00:00', 'Quách Hưng Trung', NULL, '0051', 'Cty TNHH SX-TM Vĩnh Thuận Hưng', '0302066487', 'Trả nợ tiền giấy  Vĩnh Thuận Hưng.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-002/01-04/01/02', 'PC', '002/01', '2002-01-04 00:00:00', 'Nguyễn Thị Sáu Ba', NULL, NULL, 'An Nam', '03337770', 'Tiền thuê mặt bằng T1/02', '03', 'AA/XX', '023456', '2002-01-04 00:00:00', 0.1, 'Thuê mặt bằng'),
('PC-002/02-05/02/02', 'PC', '002/02', '2002-02-05 00:00:00', 'Bùi Ngọc Thanh', NULL, NULL, 'Cty Thuận Thành', '045678910', 'Mua bàn cho văn phòng', '03', 'AA/XX', '074152', '2002-02-05 00:00:00', 0.03, 'Bàn'),
('PC-002/03-05/03/02', 'PC', '002/03', '2002-03-05 00:00:00', 'Nguyễn Thị Duyệt', NULL, '0059', 'Cơ sở Bách Diệp', '0301872396', 'Trả tiền 210 lít cồn theo HĐ 074719', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-003/01-04/01/02', 'PC', '003/01', '2002-01-04 00:00:00', 'Võ thị Aùnh Tuyết', NULL, '0007', 'Cty TNHH SX-TM Mỹ A', '0301416932', 'Xi mạ trục bonbon', '03', 'AA/XX', '054789', '2002-01-04 00:00:00', 0.03, 'Xi mạ'),
('PC-003/02-07/02/02', 'PC', '003/02', '2002-02-07 00:00:00', 'Đoàn Thị Thanh Mỹ', NULL, NULL, 'In TP', '23145698', 'In thử bên ITAXA', '03', 'AA/XX', '055887', '2002-02-07 00:00:00', 0.1, 'In thừ'),
('PC-003/03-06/03/02', 'PC', '003/03', '2002-03-06 00:00:00', 'Chu Đức Tiến', NULL, '0044', 'Cty Vật phẩm văn hóa (Vafaco)', '0300510393006', 'Trả tiền mua hàng của Vafaco theo HĐ số11169,012621,012779', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-003/04-01/04/02', 'PC', '003/04', '2002-04-01 00:00:00', 'Bùi Ngọc Thanh', NULL, NULL, 'Cty HậuMãi', '01419660-1', 'Mua xăng vệ sinh máy in', '03', 'AA/XX', '066666', '2002-04-01 00:00:00', 0.03, NULL),
('PC-004/02-08/02/02', 'PC', '004/02', '2002-02-08 00:00:00', 'Nguyễn Anh Tuấn', NULL, '0007', 'Cơ khí Đồng Nai', '0301416932', 'Tiền sữa chữa máy bế hộp', '03', 'AA/XX', '026541', '2002-02-08 00:00:00', 0.1, 'Sửa máy bế hộp'),
('PC-004/03-11/03/02', 'PC', '004/03', '2002-03-11 00:00:00', 'Bùi Ngọc Thanh', NULL, '0048', 'Bưu điện TP.HCM', '0300954529', 'Tiền ĐT T2 (số 8533520)', '03', 'AA/XX', '054138', '2002-03-11 00:00:00', 0.1, 'Điện thoại'),
('PC-004/04-02/04/02', 'PC', '004/04', '2002-04-02 00:00:00', 'Nguyễn Anh Tuấn', NULL, NULL, NULL, NULL, 'Sửa hệ thống điều khiển bơm nước máy 2màu.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-005/01-08/01/02', 'PC', '005/01', '2002-01-08 00:00:00', 'Nguyễn Anh Tuấn', NULL, NULL, NULL, NULL, 'Mua mực in vi tính', '03', 'AA/XX', '087945', '2002-01-08 00:00:00', 0.1, 'Mực vi tính'),
('PC-005/02-08/02/02', 'PC', '005/02', '2002-02-08 00:00:00', 'Nguyễn Anh Tuấn', NULL, NULL, 'Cty TNHH Nguyễn Kim', '1800339717', 'Mua máy lạnh Mitsubishi MS 12RV', '03', 'AA/XX', '036987', '2002-02-08 00:00:00', 0.05, 'Máy lạnh'),
('PC-005/03-11/03/02', 'PC', '005/03', '2002-03-11 00:00:00', 'Nguyễn Thị Sáu Ba', NULL, '0038', 'Xưởng In Ban Tư Tưởng Văn Hóa Thành Uûy', '0301456438', 'Tiền thuê mặt bằng T3/2002', '03', 'AA/XX', '046987', '2002-03-11 00:00:00', 0.1, 'Mặt bằng'),
('PC-006/02-08/02/02', 'PC', '006/02', '2002-02-08 00:00:00', 'Đoàn Thị Thanh Mỹ', NULL, NULL, 'Cty Hoa Hưng', '03016834444', 'In thử ở ITAXA', '03', 'AA/XX', '025874', '2002-02-08 00:00:00', 0.1, 'In thử'),
('PC-006/03-14/03/02', 'PC', '006/03', '2002-03-14 00:00:00', 'CN Cty TNHH SPM', NULL, '0070', 'CN Cty TNHH SPM', '01007769280011', 'Trả tiền mua vòng bi CN theo 2 HĐ 19497, 36002', '03', 'AA/XX', '058792', '2002-03-14 00:00:00', 0.05, 'Vòng bi'),
('PC-006/04-03/04/02', 'PC', '006/04', '2002-04-03 00:00:00', 'Nguyễn Mậu Vinh', NULL, NULL, 'Cty TNHH An Khánh', '0100570214', 'Mua giấy A4 cho nhân viên', '03', 'AA/XX', '007399', '2002-04-03 00:00:00', 0.05, 'Giấy A4'),
('PC-007/01-01/01/02', 'PC', '007/01', '2002-01-01 00:00:00', 'Nguyễn Văn Thao', NULL, '0044', 'Hợp tác xã 16/5', '0301266480', 'Trả nợ giá hạ 2002', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-007/02-04/02/02', 'PC', '007/02', '2002-02-04 00:00:00', 'Nguyễn Văn Thao', NULL, NULL, 'Cty TNHH An Khánh', '0302066487', 'Tiền sửa hệ thống máy in', '03', 'AA/XX', '067879', '2002-02-04 00:00:00', 0.05, 'Máy in'),
('PC-007/03-01/03/02', 'PC', '007/03', '2002-03-01 00:00:00', 'Nguyễn Văn Thao', NULL, NULL, 'Cty TNHH MĐ 90', '0300412188', 'Chi phí 2 xe tải', '03', 'AA/XX', '067890', '2002-03-01 00:00:00', 0.1, 'Xe tải'),
('PC-007/04-01/04/02', 'PC', '007/04', '2002-04-01 00:00:00', 'Nguyễn Văn Thao', NULL, NULL, 'Cty TNHH An Khánh', '0302066487', 'Tiền sửa chữa 20 máy bế hộp', '03', 'AA/XX', '067891', '2002-04-01 00:00:00', 0.1, 'Máy bế hộp'),
('PC-017/01-21/01/02', 'PC', '017/01', '2002-01-21 00:00:00', 'Bùi Ngọc Thanh', NULL, '0047', 'Cty TNHH SX-TM Tân Kỹ', '0302227102', 'Trả tiền cty Tân Kỹ', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-017/02-28/02/02', 'PC', '017/02', '2002-02-28 00:00:00', 'Bùi Ngọc Thanh', NULL, NULL, 'VDC', '123501473-1', 'Tiền Internet tháng 1/02', '03', 'AA/XX', '087412', '2002-02-28 00:00:00', 0.1, 'Internet'),
('PC-017/03-18/03/02', 'PC', '017/03', '2002-03-18 00:00:00', 'Hà Hoàng Như', NULL, NULL, NULL, NULL, 'Nộp tiền ký quỹ mở tài khoản tại NH Á Châu.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-018/01-21/01/02', 'PC', '018/01', '2002-01-21 00:00:00', 'Bùi Ngọc Thanh', NULL, NULL, 'Cty Điện thoại', '0301473105', 'Trả tiền điện thoại T12/01', '03', 'AA/XX', '065478', '2002-01-21 00:00:00', 0.1, 'Điện thoại'),
('PC-018/02-28/02/02', 'PC', '018/02', '2002-02-28 00:00:00', 'Nguyễn Thị Duyệt', NULL, NULL, NULL, NULL, 'Chi lương đợt 2 tháng 2/02.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-018/03-18/03/02', 'PC', '018/03', '2002-03-18 00:00:00', 'Hà Hoàng Như', NULL, NULL, NULL, NULL, 'Mua BHYT Quí II/2002.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-019/02-28/02/02', 'PC', '019/02', '2002-02-28 00:00:00', 'Bùi Ngọc Thanh', NULL, NULL, NULL, NULL, 'Chi phí bán hàng', NULL, NULL, NULL, NULL, 0.1, NULL),
('PC-019/03-18/03/02', 'PC', '019/03', '2002-03-18 00:00:00', 'Nguyễn Anh Tuấn', NULL, NULL, NULL, NULL, 'Mua bạc đạn cho máy in 4 màu.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-020/03-19/03/02', 'PC', '020/03', '2002-03-19 00:00:00', 'Cửa hàng Thế Hùng', NULL, NULL, 'Cty Đồng Nai', '3600253505-1', 'Tiền mua máy lạnh, tiền công và vật tư lắp ráp.', '03', 'AA/XX', '065985', '2002-03-19 00:00:00', 0.03, 'Máy lạnh'),
('PC-020/04-09/04/02', 'PC', '020/04', '2002-04-09 00:00:00', 'Võ Văn Vĩnh', NULL, '0049', 'Cty TNHH TMDV Việt Minh Khoa', '0301752412', 'Thanh toán Việt Minh Khoa tiền cao su offset (21/3/02)', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-021/01-24/01/02', 'PC', '021/01', '2002-01-24 00:00:00', 'Trần Thị Thu Hà', NULL, NULL, NULL, NULL, 'Nộp thuế môn bài năm 2002', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-022/01-24/01/02', 'PC', '022/01', '2002-01-24 00:00:00', 'Trịnh Thị Hồng', NULL, '0050', 'Cty Công Nghiệp Tân Á', '0300655374', 'Trả tiền thùng carton cho Cty CN Tân Á', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-022/03-20/03/02', 'PC', '022/03', '2002-03-20 00:00:00', 'Tăng Linh Cường', NULL, '0186', 'Văn Phòng Cty Johnson&Johnson', '123456789-1', 'Trả tiền khuôn tháng 2.', '03', 'AA/XX', '011123', '2002-03-20 00:00:00', 0.03, 'Khuôn'),
('PC-022/04-12/04/02', 'PC', '022/04', '2002-04-12 00:00:00', 'Đoàn Thị Thanh Mỹ', NULL, '0002', 'Cty TNHH Anh Sáng', '14514741-1', 'Xuất phim theo HĐ 058097 (11/4/02)', '03', 'AA/XX', '099886', '2002-04-12 00:00:00', 0.1, 'Xuất phim'),
('PC-023/01-24/01/02', 'PC', '023/01', '2002-01-24 00:00:00', 'Bùi Ngọc Thanh', NULL, NULL, NULL, NULL, 'Nộp tiền mặt vào TK VCB', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-023/03-21/03/02', 'PC', '023/03', '2002-03-21 00:00:00', 'Võ Văn Vĩnh', NULL, '0049', 'Cty TNHH TMDV Việt Minh Khoa', '0301752412', 'Trả tiền Cty Việt Minh Khoa theo HĐ 22965 (09/3/02)', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-024/01-25/01/02', 'PC', '024/01', '2002-01-25 00:00:00', 'Trần Tánh', NULL, '0056', 'HTX Bao Bì Giấy Thăng Hộ', '0301480455', 'Trả tiền thùng carton cho HTX bao bì Thăng Hộ', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-024/03-21/03/02', 'PC', '024/03', '2002-03-21 00:00:00', 'Võ Văn Vĩnh', NULL, '0049', 'Cty TNHH TMDV Việt Minh Khoa', '0301752412', 'Trả tiền cao su offset VMK.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-024/04-13/04/02', 'PC', '024/04', '2002-04-13 00:00:00', 'Nguyễn Thị Duyệt', NULL, NULL, 'CT Điệnlực', '25456123-1', 'Thanh toán tiền điện kỳ 5/2002.', '03', 'AA/XX', '078787', '2002-04-13 00:00:00', 0.1, 'Điện'),
('PC-025/01-26/01/02', 'PC', '025/01', '2002-01-26 00:00:00', 'Quách Hưng Trung', NULL, '0051', 'Cty TNHH SX-TM Vĩnh Thuận Hưng', '0302066487', 'Trả tiền hàng hóa cho Cty Vĩnh Thuận Hưng', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-025/02-27/02/02', 'PC', '025/02', '2002-02-27 00:00:00', 'Hà Hoàng Như', NULL, NULL, NULL, NULL, 'Chi tiền lương tháng 2.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-026/01-27/01/02', 'PC', '026/01', '2002-01-27 00:00:00', 'Bùi Ngọc Thanh', NULL, '0059', 'Cơ sở Bách Diệp', '0301872396', 'Trả tiền cho Cơ sở Bách Diệp', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-026/03-23/03/02', 'PC', '026/03', '2002-03-23 00:00:00', 'Trần Kim Liên', NULL, '0034', 'Cty XNK VT Thiết Bị Ngành IN', '0301465129', 'Trả nợ cũ của Printexim', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-027/01-28/01/02', 'PC', '027/01', '2002-01-28 00:00:00', 'Bùi Ngọc Thanh', NULL, NULL, 'Cty TNHH Đài Các', '0301482847-1', 'Mua xăng vệ sinh máy', '03', 'AA/XX', '032145', '2002-01-28 00:00:00', 0.05, 'Xăng'),
('PC-027/03-23/03/02', 'PC', '027/03', '2002-03-23 00:00:00', 'Quách Hưng Trung', NULL, '0051', 'Cty TNHH SX-TM Vĩnh Thuận Hưng', '0302066487', 'Trả nợ tiền giấy Vĩnh Thuận Hưng.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-027/04-15/04/02', 'PC', '027/04', '2002-04-15 00:00:00', 'Nguyễn Thị Duyệt', NULL, NULL, NULL, NULL, 'Chi ứng lương đợt 1 tháng 4/02', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-028/01-28/01/02', 'PC', '028/01', '2002-01-28 00:00:00', 'Nguyễn thị Sáu Ba', NULL, NULL, 'Cty Ngân Hà', '0223456123', 'Xuất phim cho khách hàng', '03', 'AA/XX', '054781', '2002-01-28 00:00:00', 0.1, 'Phim'),
('PC-028/03-23/03/02', 'PC', '028/03', '2002-03-23 00:00:00', 'Lương Chấn Hùng', NULL, '0036', 'Cửa Hàng Viễn Thái', '0300826679', 'Trả nợ tiền kẽm và mực cho Viễn Thái.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-028/04-16/04/02', 'PC', '028/04', '2002-04-16 00:00:00', 'Tăng Thành Nhân', NULL, '0034', 'Cty XNK VT Thiết Bị Ngành IN', '0301465129', 'Trả nợ Printexim.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-029/01-28/01/02', 'PC', '029/01', '2002-01-28 00:00:00', 'Nguyễn Thị Sáu Ba', NULL, '0053', 'Cty Quán Quân', '0301178773', 'Trả tiền decal nhựa cho Cty Quán Quân.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-029/03-23/03/02', 'PC', '029/03', '2002-03-23 00:00:00', 'Trần Kim Liên', NULL, '0039', 'Cty TNHH Á Việt', '0301442636', 'Trả nợ cũ của Á Việt', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-030/01-28/01/02', 'PC', '030/01', '2002-01-28 00:00:00', 'Nguyễn Thị Sáu Ba', NULL, '0053', 'Cty Quán Quân', '0301178773', 'Trả tiền cty Quán Quân', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-030/03-25/03/02', 'PC', '030/03', '2002-03-25 00:00:00', 'Bùi Ngọc Thanh', NULL, '0188', 'CT An Toàn', '0200134868-1', 'Mua nhớt cho máy in.', '03', 'AA/XX', '088888', '2002-03-25 00:00:00', 0.1, 'Nhớt'),
('PC-030/04-16/04/02', 'PC', '030/04', '2002-04-16 00:00:00', 'Tăng Thành Nhân', NULL, '0083', 'Phùng Muối', '0300306415', 'Thanh toán tiền Phùng Muối', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-031/01-28/01/02', 'PC', '031/01', '2002-01-28 00:00:00', 'Nguyễn Anh Tuấn', NULL, '0054', 'Cty TNHH TM Đắc Nguyên', '0300969902', 'Trả tiền Cty Đắc Nguyên', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-031/03-26/03/02', 'PC', '031/03', '2002-03-26 00:00:00', 'Huỳnh Tráng', NULL, '0059', 'Cơ sở Bách Diệp', '0301872396', 'Trả tiền 210l cồn theo HĐ 074730 ngày 26/3/02.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-031/04-16/04/02', 'PC', '031/04', '2002-04-16 00:00:00', 'Tăng Thành Nhân', NULL, '0039', 'Cty TNHH Á Việt', '0301442636', 'Trả nợ cũ của Á Việt', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-032/01-28/01/02', 'PC', '032/01', '2002-01-28 00:00:00', 'Ngô Đức Trọng', NULL, '0056', 'HTX Bao Bì Giấy Thăng Hộ', '0301480455', 'Trả tiền HTX bao bì Thăng Hộ', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-032/03-26/03/02', 'PC', '032/03', '2002-03-26 00:00:00', 'Lê Tấn Đoàn', NULL, NULL, 'Cơ sở Hoàng Liên', '0300211176-4', 'Tiền mua bàn phím và mouse theo HĐBH 042544.', '03', 'AA/XX', '022222', '2002-03-26 00:00:00', 0.03, 'Bàn phím và chuột vi tính'),
('PC-033/01-30/01/02', 'PC', '033/01', '2002-01-30 00:00:00', 'Ngô Đức Trọng', NULL, '0056', 'HTX Bao Bì Giấy Thăng Hộ', '0301480455', 'Trả tiền HXT bao bì Thăng Hộ', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-033/03-27/03/02', 'PC', '033/03', '2002-03-27 00:00:00', 'Bùi Ngọc Thanh', NULL, NULL, NULL, NULL, 'Nộp tiền vào TK tại VCB.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-033/04-24/04/02', 'PC', '033/04', '2002-04-24 00:00:00', 'Ngô Đình Lệ Thủy', NULL, NULL, 'Cty TNHH Nguyên Anh', '0301463961', 'Tiền kẽm và mực cho Nguyên Anh', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-034/01-28/01/02', 'PC', '034/01', '2002-01-28 00:00:00', 'Tăng Thành Nhân', NULL, NULL, NULL, NULL, 'Chi tiền công nhân TPHH tháng 1.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-034/03-22/03/02', 'PC', '034/03', '2002-03-22 00:00:00', 'Nguyễn Thị Duyệt', NULL, NULL, NULL, NULL, 'Chi thưởng tháng 3.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-034/04-17/04/02', 'PC', '034/04', '2002-04-17 00:00:00', 'Tăng Thành Nhân', NULL, NULL, NULL, NULL, 'Chi thưởng tháng 4.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-038/03-30/03/02', 'PC', '038/03', '2002-03-30 00:00:00', 'Bùi Ngọc Thanh', NULL, NULL, 'VDC', '02451234561-1', 'Tiền Internet, điện thoại tháng 3/02 số 8533520', '03', 'AA/XX', '055555', '2002-03-30 00:00:00', 0.1, 'Internet, điện thoại'),
('PC-039/01-31/01/02', 'PC', '039/01', '2002-01-31 00:00:00', 'Nguyễn Thị Sáu Ba', NULL, '0060', 'Cửa hàng Thu Thảo', '0300398751', 'Trả tiền Cửa hàng Thu Thảo', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-039/03-30/03/02', 'PC', '039/03', '2002-03-30 00:00:00', 'Bùi Ngọc Thanh', NULL, NULL, 'Bưu điện', '022178977-1', 'Tiền điện thoại tháng 03/02 (số 8554362)', '03', 'AA/XX', '099988', '2002-03-30 00:00:00', 0.1, 'Điện thoại'),
('PC-039/04-26/04/02', 'PC', '039/04', '2002-04-26 00:00:00', 'Nguyễn Đức Chín', NULL, '0044', 'Cty Vật phẩm văn hóa (Vafaco)', '0300510393006', 'Thanh toán tiền bao nilon bonbon cho Vafaco', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-040/01-31/01/02', 'PC', '040/01', '2002-01-31 00:00:00', 'Nguyễn Văn Lem', NULL, '0042', 'Cty TNHH TM Tân Kim Hưng', '0301937741', 'Trả tiền Cty Tân Kim Hưng', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-040/03-31/03/02', 'PC', '040/03', '2002-03-31 00:00:00', 'Nguyễn Thị Duyệt', NULL, NULL, NULL, NULL, 'Chi lương đợt 2 tháng 3/02.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-040/04-26/04/02', 'PC', '040/04', '2002-04-26 00:00:00', 'Bùi Ngọc Thanh', NULL, NULL, NULL, NULL, 'Nộp tiền vào tài khoản VCB.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-041/01-31/01/02', 'PC', '041/01', '2002-01-31 00:00:00', 'Nguyễn Anh Tuấn', NULL, '0194', 'Cty Hoa Hưng', '0301683367', 'Mua giấy và mực in vi tính', '03', 'AA/XX', '032569', '2002-01-31 00:00:00', 0.1, 'Giấy và mực vi tính'),
('PC-041/03-31/03/02', 'PC', '041/03', '2002-03-31 00:00:00', 'Bùi Ngọc Thanh', NULL, NULL, NULL, NULL, 'Chi phí bán hàng', NULL, NULL, NULL, NULL, 0.1, NULL),
('PC-041/04-27/04/02', 'PC', '041/04', '2002-04-27 00:00:00', 'Võ Văn Vĩnh', NULL, '0049', 'Cty TNHH TMDV Việt Minh Khoa', '0301752412', 'Trả tiền caosu offset theo HĐ 022995 (VMK).', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-042/01-31/01/02', 'PC', '042/01', '2002-01-31 00:00:00', 'Nguyễn Anh Tuấn', NULL, '0041', 'Cty TNHH National Starch and Chemical (VN)', '3700334966', 'Trả tiền Cty National Starch', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-042/04-29/04/02', 'PC', '042/04', '2002-04-29 00:00:00', 'Nguyễn Anh Tuấn', NULL, NULL, NULL, NULL, 'Thanh toán tiền công sửa maý cho anh Hoàng', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-043/01-31/01/02', 'PC', '043/01', '2002-01-31 00:00:00', 'Nguyễn Anh Tuấn', NULL, NULL, NULL, NULL, 'Thanh toán lương CNV T1/02', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-043/04-29/04/02', 'PC', '043/04', '2002-04-29 00:00:00', 'Nguyễn Thị Duyệt', NULL, NULL, NULL, NULL, 'Chi lương đợt 2 tháng 4/02.', NULL, NULL, NULL, NULL, NULL, NULL),
('PC-044/01-31/01/02', 'PC', '044/01', '2002-01-31 00:00:00', 'Lê Văn Năm', NULL, NULL, NULL, NULL, 'Thanhtoán chi phí bán hàng', NULL, NULL, NULL, NULL, 0.1, NULL),
('PC-044/04-29/04/02', 'PC', '044/04', '2002-04-29 00:00:00', 'Nguyễn Thị Duyệt', NULL, NULL, NULL, NULL, 'Chi phí bán hàng', NULL, NULL, NULL, NULL, 0.1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tphieuchichitiet`
--

CREATE TABLE `tphieuchichitiet` (
  `cMaChungTu` varchar(20) NOT NULL,
  `cDienGiaiChiTiet` varchar(50) DEFAULT NULL,
  `nSoTien` float DEFAULT NULL,
  `cTaiKhoanNo` varchar(10) DEFAULT NULL,
  `cTaiKhoanCo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tphieuchichitiet`
--

INSERT INTO `tphieuchichitiet` (`cMaChungTu`, `cDienGiaiChiTiet`, `nSoTien`, `cTaiKhoanNo`, `cTaiKhoanCo`) VALUES
('PC-001/01-03/01/02', 'Thuế VAT được khấu trừ', 27600, '1331', '111'),
('PC-001/03-04/03/02', 'Chi hoa hồng cho Mỹ Phú theo HĐ 72003,72013.', 1691000, '642', '111'),
('PC-001/04-01/04/02', 'Trả nợ tiền giấy Vĩnh thuận Hưng', 2000000, '331', '111'),
('PC-002/01-04/01/02', 'Thuế VAT được khấu trừ', 909091, '1331', '111'),
('PC-002/02-05/02/02', 'VAT', 75000, '1331', '111'),
('PC-002/03-05/03/02', 'Trả tiền 210l cồn theo HĐ 74719', 1123500, '331', '111'),
('PC-003/03-06/03/02', 'Trả nợ tiền hàng cho Vafaco', 5821200, '331', '111'),
('PC-003/04-01/04/02', 'VAT', 56720, '1331', '111'),
('PC-004/02-08/02/02', 'Tiền sữa chữa máy bế hộp', 630000, '642', '111'),
('PC-004/03-11/03/02', ' VAT', 192383, '1331', '111'),
('PC-004/04-02/04/02', 'Sửa hệ thống điều khiển bơm nước may 2 màu', 1300000, '642', '111'),
('PC-005/01-08/01/02', 'Thuế VAT được khấu trừ', 79800, '1331', '111'),
('PC-005/02-08/02/02', ' VAT', 500000, '1331', '111'),
('PC-005/03-11/03/02', 'Thuế VAT tiền thuê MB', 1045460, '1331', '111'),
('PC-006/02-08/02/02', ' VAT', 58000, '1331', '111'),
('PC-006/03-14/03/02', ' VAT', 110357, '1331', '111'),
('PC-006/04-03/04/02', 'Lắp thêm 1 đường dây điện thoại', 1363640, '642', '111'),
('PC-007/01-12/01/02', 'Trả tiền cồn cho cơ sở Bách Diệp', 1060500, '331', '111'),
('PC-007/02-08/02/02', ' VAT', 77619, '1331', '111'),
('PC-007/03-14/03/02', 'Thanh toán tiền điện T3/02 theo 2HĐ 40159,40161', 5055070, '642', '111'),
('PC-008/01-14/01/02', 'Trả tiền kẽm cho Cty Liksin', 2376000, '331', '111'),
('PC-008/02-08/02/02', ' VAT', 1045460, '1331', '111'),
('PC-008/03-15/03/02', 'Chi ứng lương đợt 1 tháng 3/02', 16000000, '334', '111'),
('PC-008/04-05/04/02', 'Trả nợ tiền giấy Minh Kim Long', 1000000, '331', '111'),
('PC-009/02-15/02/02', 'Ưùng lương đợt 1 tháng 2/02', 17200000, '334', '111'),
('PC-009/04-05/04/02', 'VAT', 11818, '1331', '111'),
('PC-010/02-17/02/02', ' VAT', 259920, '1331', '111'),
('PC-010/04-05/04/02', 'Mua máy bơm cho máy 2 màu', 10000000, '153', '111'),
('PC-011/02-23/02/02', ' VAT', 11518, '1331', '111'),
('PC-011/03-16/03/02', 'Trả nợ tiền mực cho Tân Kỹ', 2992000, '331', '111'),
('PC-011/04-05/04/02', 'VAT', 1045460, '1331', '111'),
('PC-012/01-16/01/02', 'Thuế VAT được khấu trừ', 74273, '1331', '111'),
('PC-012/04-05/04/02', 'Nộp BHXH Quí I/2002', 5040840, '3383', '111'),
('PC-013/01-16/01/02', 'Mua quyển hóa đơn', 42777, '642', '111'),
('PC-013/02-25/02/02', 'Trả tiền Nam Hải theo HĐ 77757', 4040000, '331', '111'),
('PC-014/01-16/01/02', 'Thuế VAT được khấu trừ', 115840, '1331', '111'),
('PC-014/02-25/02/02', 'Trả tiền Nam Hải theo HĐ 77751', 10650000, '331', '111'),
('PC-014/04-06/04/02', 'Chi hoa hồng cho Mỹ Phú', 1871880, '642', '111'),
('PC-015/02-28/02/02', ' VAT', 37887, '1331', '111'),
('PC-015/03-16/03/02', 'Thuế VAT của HĐ 56556', 91909, '1331', '111'),
('PC-016/03-18/03/02', 'Mua 210 lít cồn (HĐ 074724)', 1123500, '331', '111'),
('PC-017/01-21/01/02', 'Trả tiền cty Tân Kỹ', 1210000, '331', '111'),
('PC-017/02-28/02/02', ' VAT', 5620, '1331', '111'),
('PC-017/03-18/03/02', 'Nộp tiền ký quỹ mở tài khoản tại Á Châu', 1000000, '1123', '111'),
('PC-018/01-21/01/02', 'Thuế VAT được khấu trừ', 157938, '1331', '111'),
('PC-018/02-28/02/02', 'Chi lương đợt 2 tháng 2/02.', 29199600, '334', '111'),
('PC-018/03-18/03/02', 'Mua BHYT Q2/02 cho 21 CNV', 707238, '3384', '111'),
('PC-019/03-18/03/02', 'Mua bạc đạn cho máy in 4 màu', 700000, '642', '111'),
('PC-020/03-19/03/02', 'Thuế VAT 3% của HĐ BH 098221', 303000, '1331', '111'),
('PC-021/01-24/01/02', 'Nộp thuế môn bài năm 2002', 850000, '3338', '111'),
('PC-022/01-24/01/02', 'Trả tiền cho Cty CN Tân Á', 1862800, '331', '111'),
('PC-022/03-20/03/02', ' VAT', 58800, '1331', '111'),
('PC-023/03-21/03/02', 'Trả tiền cao su offset cho VMK HĐ22965', 1974720, '331', '111'),
('PC-023/04-04/04/02', ' VAT', 200000, '1331', '111'),
('PC-024/03-21/03/02', 'Trả tiền cao su offset VMK.', 1974720, '331', '111'),
('PC-025/01-26/01/02', 'Trả tiền giấy cho Cty Vĩnh Thuận Hưng', 20999600, '331', '111'),
('PC-025/03-22/03/02', ' VAT', 222636, '1331', '111'),
('PC-026/01-27/01/02', 'Trả tiền cho cơ sở Bách Diệp', 1060500, '331', '111'),
('PC-026/03-23/03/02', 'Trả nợ cho Printexim', 10332000, '331', '111'),
('PC-026/03-27/03/02', ' VAT', 207000, '1331', '111'),
('PC-027/01-28/01/02', 'Thuế GTGT được khấu trừ', 43800, '1331', '111'),
('PC-027/04-15/04/02', 'Chi ứng lương đợt 1 tháng 4/02', 15400000, '334', '111'),
('PC-029/01-28/01/02', 'Trả tiền Cty Quán Quân', 14905000, '331', '111'),
('PC-030/01-28/01/02', 'Trả tiền Cty Quán Quân', 20097000, '331', '111'),
('PC-030/03-25/03/02', ' VAT', 12910, '1331', '111'),
('PC-031/01-28/01/02', 'Trả tiền Cty Đắc Nguyên', 4520010, '331', '111'),
('PC-031/03-26/03/02', 'Mua 201 lít cồn (HĐBH 74730 ngày 26/3/02)', 1530900, '331', '111'),
('PC-032/01-28/01/02', 'Trả tiền HTX bao bì Thăng Hộ', 1500400, '331', '111'),
('PC-033/01-30/01/02', 'Trả tiền HTX bao bì Thăng Hộ', 1980000, '331', '111'),
('PC-034/01-30/01/02', 'Thuế VAT được khấu trừ', 24570, '1331', '111'),
('PC-035/01-30/01/02', 'Trả tiền cty Printexim', 11209000, '331', '111'),
('PC-035/03-28/03/02', 'Trả nợ tiền giấy của VTH', 20000000, '331', '111'),
('PC-036/01-30/01/02', 'Trả tiền Cty Á Việt', 14821400, '331', '111'),
('PC-036/03-29/03/02', 'Chú Vinh mua 1 cuốn Patone màu', 1387100, '642', '111'),
('PC-037/01-31/01/02', 'Trả tiền CH Phạm Thị Nghĩa', 12750000, '331', '111'),
('PC-037/03-30/03/02', 'Trả nợ tiền giấy Minh Kim Long', 20000000, '331', '111'),
('PC-037/04-24/04/02', 'Thuế VAT của 2 HĐ Điện thoại tháng 3/02', 257136, '1331', '111'),
('PC-038/03-30/03/02', 'VAT', 159463, '1331', '111'),
('PC-039/03-30/03/02', 'VAT', 38302, '1331', '111'),
('PC-039/04-26/04/02', 'Th/toán tiền bao nilon bonbon cho Vafaco', 1264720, '331', '111'),
('PC-040/01-31/01/02', 'Trả tiền Cty Tân Kim Hưng', 6290000, '331', '111'),
('PC-040/03-31/03/02', 'Chi lương đợt 2 tháng 3/02.', 31528500, '334', '111'),
('PC-040/04-26/04/02', 'Nộp tiền vào tải khoản VCB', 6000000, '1122', '111'),
('PC-041/01-31/01/02', 'Thuế VAT được khấu trừ', 112200, '1331', '111'),
('PC-041/03-31/03/02', 'Chi phí bán hàng', 42000000, '641', '111'),
('PC-041/04-27/04/02', 'Th/toán tiền cao su offset cho VMK.', 5082000, '331', '111'),
('PC-042/01-31/01/02', 'Trả tiền Cty National Starch', 14000000, '331', '111'),
('PC-042/04-29/04/02', 'Chú Tuấn trả tiền công sửa máy cho A.Hoàng', 1500000, '642', '111'),
('PC-043/01-31/01/02', 'Th/toán lương CNV T1/02', 33829600, '334', '111'),
('PC-043/04-29/04/02', 'Chi lương đợt 2 tháng 4/02.', 20698500, '334', '111'),
('PC-044/04-29/04/02', 'Chi phí bán hàng', 5000000, '641', '111');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tphieunhaphanghoa`
--

CREATE TABLE `tphieunhaphanghoa` (
  `cMaChungTu` varchar(20) NOT NULL,
  `cLoaiChungTu` varchar(2) DEFAULT NULL,
  `dNgayChungTu` datetime DEFAULT NULL,
  `cSoChungTu` varchar(6) DEFAULT NULL,
  `cMaNguoiBan` varchar(6) DEFAULT NULL,
  `cTenNguoiBan` varchar(100) DEFAULT NULL,
  `cMaSoThueNguoiBan` varchar(15) DEFAULT NULL,
  `cTaiKhoanNo` varchar(6) DEFAULT NULL,
  `cTaiKhoanNoGTGT` varchar(6) DEFAULT NULL,
  `cTaiKhoanCo` varchar(6) DEFAULT NULL,
  `cDienGiai` varchar(70) DEFAULT NULL,
  `cSoSeRi` varchar(10) DEFAULT NULL,
  `cSoHoaDon` varchar(10) DEFAULT NULL,
  `dNgayHoaDon` datetime DEFAULT NULL,
  `nThueSuat` float DEFAULT NULL,
  `nThueGTGT` float DEFAULT NULL,
  `cMatHang` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tphieunhaphanghoa`
--

INSERT INTO `tphieunhaphanghoa` (`cMaChungTu`, `cLoaiChungTu`, `dNgayChungTu`, `cSoChungTu`, `cMaNguoiBan`, `cTenNguoiBan`, `cMaSoThueNguoiBan`, `cTaiKhoanNo`, `cTaiKhoanNoGTGT`, `cTaiKhoanCo`, `cDienGiai`, `cSoSeRi`, `cSoHoaDon`, `dNgayHoaDon`, `nThueSuat`, `nThueGTGT`, `cMatHang`) VALUES
('NH-001/01-02/01/02', 'NH', '2002-01-02 00:00:00', '001/01', '0037', 'DNTN TM Minh Kim Long', '0301060228', '156', '1331', '331', 'Cty XNK TB Ngành In-C80(60x84)', 'ND/01-N', '055732', '2002-01-02 00:00:00', 0.1, 114545, 'Vật tư'),
('NH-001/02-01/02/02', 'NH', '2002-02-01 00:00:00', '001/02', '0036', 'Cửa Hàng Viễn Thái', '0300826679', '156', '1331', '331', 'Viễn Thái - Mực 1992 xanh lá', 'RK/01-N', '061385', '2002-02-01 00:00:00', 0.1, 43500, 'Vật tư'),
('NH-001/03-01/03/02', 'NH', '2002-03-01 00:00:00', '001/03', '0062', 'Cty XNK Ngành In TP.HCM', '0300464482', '156', '1331', '331', 'Primexco - Giấy Couché', 'QC/01-N', '022229', '2002-02-25 00:00:00', 0.1, 1160000, 'Vật tư'),
('NH-001/04-01/04/02', 'NH', '2002-04-01 00:00:00', '001/04', '0059', 'Cơ sở Bách Diệp', '0301872396', '156', '1331', '331', 'Bách Diệp - Cồn', 'KN/01-N', '074734', '2002-04-01 00:00:00', 0.03, 33705, 'Vật tư'),
('NH-001/04-22/04/08', 'NH', '2008-04-22 00:00:00', '001/04', NULL, NULL, NULL, '152', '1331', '331', NULL, NULL, NULL, NULL, 0, 0, NULL),
('NH-001/05-02/05/02', 'NH', '2002-05-02 00:00:00', '001/05', '0036', 'Cửa Hàng Viễn Thái', '0300826679', '156', '1331', '331', 'Viễn Thái - nước sút', 'TR/01-N', '086479', '2002-05-02 00:00:00', 0.1, 11000, 'Vật tư'),
('NH-002/01-03/01/02', 'NH', '2002-01-03 00:00:00', '002/01', '0034', 'Cty XNK VT Thiết Bị Ngành IN', '0301465129', '156', '1331', '331', 'Cty XNK VT TB Ngành In-C80(60x84)', 'ND/01-N', '055737', '2002-01-03 00:00:00', 0.1, 114545, 'Vật tư'),
('NH-002/02-02/02/02', 'NH', '2002-02-02 00:00:00', '002/02', '0037', 'DNTN TM Minh Kim Long', '0301060228', '156', '1331', '331', 'Minh Kim Long - Giấy Couché', 'QY/01-N', '066318', '2002-02-02 00:00:00', 0.1, 777272, 'Vật tư'),
('NH-002/03-01/03/02', 'NH', '2002-03-01 00:00:00', '002/03', '0062', 'Cty XNK Ngành In TP.HCM', '0300464482', '156', '1331', '331', 'Nhập giấy couché của Primexco', 'QC/01-N', '022247', '2002-03-01 00:00:00', 0.1, 2009000, 'Vật tư'),
('NH-002/04-01/04/02', 'NH', '2002-04-01 00:00:00', '002/04', '0061', 'Phạm Thị Nghĩa', '0300319439', '156', '1331', '331', 'Phạm Thị Nghĩa - decal nhựa', 'LX/01-N', '036755', '2002-04-30 00:00:00', 0.03, 300150, 'Vật tư'),
('NH-002/04-22/04/08', 'NH', '2008-04-22 00:00:00', '002/04', '0021', 'Cty TNHH CNTP Pataya Việt Nam', '1800339717', '152', '1331', '331', NULL, NULL, NULL, NULL, 0, 0, NULL),
('NH-002/05-02/05/02', 'NH', '2002-05-02 00:00:00', '002/05', '0039', 'Cty TNHH Á Việt', '0301442636', '156', '1331', '331', 'Á Việt - giấy couché', 'TH/01-N', '000947', '2002-05-03 00:00:00', 0.1, 310915, 'Vật tư'),
('NH-003/01-03/01/02', 'NH', '2002-01-03 00:00:00', '003/01', '0036', 'Cửa Hàng Viễn Thái', '0300826679', '156', '1331', '331', 'Cửa Hàng Viễn Thái-Mực 1992 đỏ cờ', 'QB/01-N', '087716', '2002-01-03 00:00:00', 0.1, 79500, 'Vật tư'),
('NH-003/02-02/02/02', 'NH', '2002-02-02 00:00:00', '003/02', '0037', 'DNTN TM Minh Kim Long', '0301060228', '156', '1331', '331', 'Nhập giấy Couché của Minh Kim Long', 'QY/01-N', '066318', '2002-02-02 00:00:00', 0.1, 96000, 'Vật tư'),
('NH-003/03-01/03/02', 'NH', '2002-03-01 00:00:00', '003/03', '0053', 'Cty Quán Quân', '0301178773', '156', '1331', '331', 'Nhập decal của Quán Quân', 'SN/01-N', '067621', '2002-03-30 00:00:00', 0.1, 1100000, 'Vật tư'),
('NH-003/04-02/04/02', 'NH', '2002-04-02 00:00:00', '003/04', '0039', 'Cty TNHH Á Việt', '0301442636', '156', '1331', '331', 'Á Việt - giấy trắng', 'LX/01-N', '088988', '2002-04-03 00:00:00', 0.03, 291000, 'Vật tư'),
('NH-003/04-22/04/08', 'NH', '2008-04-22 00:00:00', '003/04', '0031', 'Nhà xuất bản Tổng hợp', '0301326571', '152', '1331', '331', NULL, NULL, NULL, NULL, 0, 0, NULL),
('NH-003/05-02/05/02', 'NH', '2002-05-02 00:00:00', '003/05', '0039', 'Cty TNHH Á Việt', '0301442636', '156', '1331', '331', 'Á Việt - giấy dễ gấp', 'LD/01-N', '054354', '2002-05-02 00:00:00', 0.1, 1070000, 'Vật tư'),
('NH-004/01-03/01/02', 'NH', '2002-01-03 00:00:00', '004/01', '0038', 'Cty TNHH Hồng Thái', '0301327368', '156', '1331', '331', 'Hồng Thái - Giấy mỹ thuật', 'LD/01-N', '092378', '2002-01-03 00:00:00', 0.1, 2572000, 'Vật tư'),
('NH-004/02-02/02/02', 'NH', '2002-02-02 00:00:00', '004/02', '0053', 'Cty Quán Quân', '0301178773', '156', '1331', '331', 'Giấy mỹ thuật Quán Quân', 'LD/01-N', '093079', '2002-02-02 00:00:00', 0.1, 80000, 'Vật tư'),
('NH-004/03-01/03/02', 'NH', '2002-03-01 00:00:00', '004/03', '0039', 'Cty TNHH Á Việt', '0301442636', '156', '1331', '331', 'Giấy dễ gấp của Á Việt', 'LD/01-N', '094455', '2002-03-01 00:00:00', 0.1, 200000, 'Vật tư'),
('NH-004/04-01/04/02', 'NH', '2002-04-01 00:00:00', '004/04', '0036', 'Cửa Hàng Viễn Thái', '0300826679', '156', '1331', '331', 'Mực 1992 xanh dương', 'LD/01-N', '095933', '2002-04-01 00:00:00', 0.1, 120000, 'Vật tư'),
('NH-004/04-22/04/08', 'NH', '2008-04-22 00:00:00', '004/04', '0012', 'Cty TNHH Công nghệ giải pháp Việt', '0301342611', '152', '1331', '331', NULL, NULL, NULL, NULL, 0, 0, NULL),
('NH-004/05-02/05/02', 'NH', '2002-05-02 00:00:00', '004/05', '0037', 'DNTN TM Minh Kim Long', '0301060228', '156', '1331', '331', 'Giấy thùng carton', 'LD/01-N', '067869', '2002-05-02 00:00:00', 0.1, 70000, 'Vật tư'),
('NH-005/01-03/01/02', 'NH', '2002-01-03 00:00:00', '005/01', '0034', 'Cty XNK VT Thiết Bị Ngành IN', '0301465129', '156', '1331', '331', 'Giấy Couché- VT Thiết Bị Ngành In', 'LD/01-N', '062747', '2002-01-03 00:00:00', 0.1, 275000, 'Vật tư'),
('NH-005/02-02/02/02', 'NH', '2002-02-02 00:00:00', '005/02', '0060', 'Cty TNHH Tư Vấn Thiết Kế VN', '0301372526', '156', '1331', '331', 'Giấy Couché - VN', 'LD/01-N', '063634', '2002-02-02 00:00:00', 0.1, 224500, 'Vật tư'),
('NH-005/03-01/03/02', 'NH', '2002-03-01 00:00:00', '005/03', '0037', 'DNTN TM Minh Kim Long', '0301060228', '156', '1331', '331', 'Giấy Couché - Minh Kim Long', 'LD/01-N', '063634', '2002-03-01 00:00:00', 0.1, 480000, 'Vật tư'),
('NH-005/04-01/04/02', 'NH', '2002-04-01 00:00:00', '005/04', '0060', 'Cty TNHH Tư Vấn Thiết Kế VN', '0301372526', '156', '1331', '331', 'Tư Vấn Thiết Kế VN - Ghi chú', 'LD/01-N', '065634', '2002-04-01 00:00:00', 0.03, 274500, 'Vật tư'),
('NH-005/04-22/04/08', 'NH', '2008-04-22 00:00:00', '005/04', '0014', 'Cty TNHH Tư Vấn Thiết Kế VN', '0301372526', '152', '1331', '331', NULL, NULL, NULL, NULL, 0, 0, NULL),
('NH-005/05-02/05/02', 'NH', '2002-05-02 00:00:00', '005/05', '0051', 'Công ty TNHH Hồng Thái', '0301327368', '156', '1331', '331', 'Hồng Thái - Vật tư', 'LD/01-N', '065634', '2002-05-02 00:00:00', 0.1, 285000, 'Vật tư'),
('NH-006/01-03/01/02', 'NH', '2002-01-03 00:00:00', '006/01', '0039', 'Cty TNHH Á Việt', '0301442636', '156', '1331', '331', 'Giấy trắng - Á Việt', 'LD/01-N', '065634', '2002-01-03 00:00:00', 0.1, 2769000, 'Vật tư'),
('NH-006/02-02/02/02', 'NH', '2002-02-02 00:00:00', '006/02', '0060', 'Cty TNHH Tư Vấn Thiết Kế VN', '0301372526', '156', '1331', '331', 'Tư Vấn Thiết Kế VN - Ghi chú', 'LD/01-N', '065634', '2002-02-02 00:00:00', 0.1, 9999000, 'Vật tư'),
('NH-006/03-01/03/02', 'NH', '2002-03-01 00:00:00', '006/03', '0054', 'Cty TNHH Thiết Bị Ngành In', '0301465129', '156', '1331', '331', 'Giấy Couché - VN', 'LD/01-N', '065634', '2002-03-01 00:00:00', 0.1, 4789000, 'Vật tư'),
('NH-006/04-01/04/02', 'NH', '2002-04-01 00:00:00', '006/04', '0038', 'Cty TNHH Hồng Thái', '0301327368', '156', '1331', '331', 'Hồng Thái - Giấy mỹ thuật', 'LD/01-N', '065634', '2002-04-01 00:00:00', 0.1, 3556000, 'Vật tư'),
('NH-006/04-22/04/08', 'NH', '2008-04-22 00:00:00', '006/04', '0016', 'Cty TNHH Thiết Bị Ngành In', '0301465129', '152', '1331', '331', NULL, NULL, NULL, NULL, 0, 0, NULL),
('NH-006/05-02/05/02', 'NH', '2002-05-02 00:00:00', '006/05', '0038', 'Cty TNHH Hồng Thái', '0301327368', '156', '1331', '331', 'Giấy mỹ thuật - Hồng Thái', 'LD/01-N', '065634', '2002-05-02 00:00:00', 0.1, 1567000, 'Vật tư'),
('NH-007/01-03/01/02', 'NH', '2002-01-03 00:00:00', '007/01', '0034', 'Cty TNHH XNK VT Thiết Bị Ngành In', '0301465129', '156', '1331', '331', 'Giấy Couché - Thiết Bị Ngành In', 'LD/01-N', '065634', '2002-01-03 00:00:00', 0.1, 1989000, 'Vật tư'),
('NH-007/02-02/02/02', 'NH', '2002-02-02 00:00:00', '007/02', '0060', 'Cty TNHH Tư Vấn Thiết Kế VN', '0301372526', '156', '1331', '331', 'Giấy Couché - VN', 'LD/01-N', '065634', '2002-02-02 00:00:00', 0.1, 9998000, 'Vật tư'),
('NH-007/03-01/03/02', 'NH', '2002-03-01 00:00:00', '007/03', '0054', 'Cty TNHH Thiết Bị Ngành In', '0301465129', '156', '1331', '331', 'Giấy Couché - VN', 'LD/01-N', '065634', '2002-03-01 00:00:00', 0.1, 1789000, 'Vật tư'),
('NH-007/04-01/04/02', 'NH', '2002-04-01 00:00:00', '007/04', '0039', 'Cty TNHH Á Việt', '0301442636', '156', '1331', '331', 'Giấy mỹ thuật - Á Việt', 'LD/01-N', '065634', '2002-04-01 00:00:00', 0.1, 1680000, 'Vật tư'),
('NH-007/04-22/04/08', 'NH', '2008-04-22 00:00:00', '007/04', '0017', 'Cty TNHH Thiết Bị Ngành In', '0301465129', '152', '1331', '331', NULL, NULL, NULL, NULL, 0, 0, NULL),
('NH-007/05-02/05/02', 'NH', '2002-05-02 00:00:00', '007/05', '0051', 'Công ty TNHH Hồng Thái', '0301327368', '156', '1331', '331', 'Hồng Thái - Vật tư', 'LD/01-N', '065634', '2002-05-02 00:00:00', 0.1, 275000, 'Vật tư');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tphieunhaphanghoachitiet`
--

CREATE TABLE `tphieunhaphanghoachitiet` (
  `cMaChungTu` varchar(20) NOT NULL,
  `nMaSo` int(11) NOT NULL,
  `cMaHang` varchar(10) NOT NULL,
  `cDonViTinh` varchar(10) DEFAULT NULL,
  `nSoLuong` float DEFAULT NULL,
  `nDonGia` float DEFAULT NULL,
  `nThanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tphieunhaphangtralai`
--

CREATE TABLE `tphieunhaphangtralai` (
  `cMaChungTu` varchar(20) NOT NULL,
  `cLoaiChungTu` varchar(2) DEFAULT NULL,
  `dNgayChungTu` datetime DEFAULT NULL,
  `cSoChungTu` varchar(6) NOT NULL,
  `cDienGiai` varchar(70) DEFAULT NULL,
  `cMaKhachHang` varchar(10) DEFAULT NULL,
  `cTenKhachHang` varchar(40) DEFAULT NULL,
  `cMaSoThue` varchar(20) DEFAULT NULL,
  `cTaiKhoanNoGiaVon` varchar(6) DEFAULT NULL,
  `cTaiKhoanCoGiaVon` varchar(6) DEFAULT NULL,
  `cTaiKhoanNoGiaBan` varchar(6) DEFAULT NULL,
  `cTaiKhoanNoGTGT` varchar(6) DEFAULT NULL,
  `cTaiKhoanCoGiaBan` varchar(6) DEFAULT NULL,
  `cBieuThue` varchar(2) DEFAULT NULL,
  `cSoSeRi` varchar(10) DEFAULT NULL,
  `cSoHoaDon` varchar(10) DEFAULT NULL,
  `dNgayHoaDon` datetime DEFAULT NULL,
  `nThueSuat` float DEFAULT NULL,
  `nThueGTGT` float DEFAULT NULL,
  `cMatHang` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tphieunhaphangtralaichitiet`
--

CREATE TABLE `tphieunhaphangtralaichitiet` (
  `cMaChungTu` varchar(20) NOT NULL,
  `nMaSo` int(11) NOT NULL,
  `cMaHang` varchar(15) NOT NULL,
  `cDonViTinh` varchar(10) DEFAULT NULL,
  `nSoLuong` float DEFAULT NULL,
  `nDonGiaVon` float DEFAULT NULL,
  `nThanhTienGiaVon` float DEFAULT NULL,
  `nDonGiaBan` float DEFAULT NULL,
  `nThanhTienGiaBan` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tphieuthu`
--

CREATE TABLE `tphieuthu` (
  `cMaChungTu` varchar(20) NOT NULL,
  `cLoaiChungTu` varchar(2) DEFAULT NULL,
  `dNgayChungTu` datetime DEFAULT NULL,
  `cSoChungTu` varchar(6) DEFAULT NULL,
  `cHoTen` varchar(30) DEFAULT NULL,
  `cDiaChi` varchar(50) DEFAULT NULL,
  `cSoChungTuGoc` tinyint(4) DEFAULT NULL,
  `cMaKhachHang` varchar(10) DEFAULT NULL,
  `cTenKhachHang` varchar(100) DEFAULT NULL,
  `cMaSoThue` varchar(20) DEFAULT NULL,
  `cDienGiai` varchar(100) DEFAULT NULL,
  `cBieuThue` varchar(2) DEFAULT NULL,
  `cSoSeRi` varchar(10) DEFAULT NULL,
  `cSoHoaDon` varchar(10) DEFAULT NULL,
  `dNgayHoaDon` datetime DEFAULT NULL,
  `nThueSuat` float DEFAULT NULL,
  `cMatHang` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tphieuthuchitiet`
--

CREATE TABLE `tphieuthuchitiet` (
  `cMaChungTu` varchar(20) NOT NULL,
  `cDienGiaiChiTiet` varchar(50) DEFAULT NULL,
  `nSoTien` float DEFAULT NULL,
  `cTaiKhoanNo` varchar(10) DEFAULT NULL,
  `cTaiKhoanCo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tphieuxuathanghoa`
--

CREATE TABLE `tphieuxuathanghoa` (
  `cMaChungTu` varchar(20) NOT NULL,
  `cLoaiChungTu` varchar(2) DEFAULT NULL,
  `dNgayChungTu` datetime DEFAULT NULL,
  `cSoChungTu` varchar(6) DEFAULT NULL,
  `cMaKhachHang` varchar(6) DEFAULT NULL,
  `cTenKhachHang` varchar(50) DEFAULT NULL,
  `cMaSoThue` varchar(15) DEFAULT NULL,
  `cTaiKhoanNoGiaVon` varchar(6) DEFAULT NULL,
  `cTaiKhoanCoGiaVon` varchar(6) DEFAULT NULL,
  `cTaiKhoanNoGiaBan` varchar(6) DEFAULT NULL,
  `cTaiKhoanCoGiaBan` varchar(6) DEFAULT NULL,
  `cTaiKhoanCoGTGT` varchar(6) DEFAULT NULL,
  `cDienGiai` varchar(70) DEFAULT NULL,
  `cMatHang` varchar(30) DEFAULT NULL,
  `nThueSuat` float DEFAULT NULL,
  `nThueGTGT` int(11) DEFAULT NULL,
  `cSoSeri` varchar(15) DEFAULT NULL,
  `cSoHoaDon` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'hung', 'hung@gmail.com', NULL, '$2y$10$NnJV2zC4YYIyviaJKG5zF.kL5Bi6SyzHtNqYLFSrJjnCF0HxMIwyW', NULL, '2024-10-23 02:24:43', '2024-10-23 02:24:43'),
(3, 'dat', 'dat@gmail.com', NULL, '$2y$10$3GIXvAwtNeKg.S8MLOBqHeE/evvbB5vycG/8J6/48k5so49Ljrriy', NULL, '2024-10-23 02:30:24', '2024-10-23 02:30:24'),
(4, 'Đinh Phát Đạt', 'dat12@gmail.com', NULL, '$2y$10$s9oxhZJeq4ts.wBhfqVl8.xybo10cbX8W/tDVwSNY5n0bu702jzy.', NULL, '2024-10-23 02:42:35', '2024-10-23 02:42:35'),
(5, 'hung', 'hung12@gmail.com', NULL, '$2y$10$N1cPidaHXu9xsPwzivPMFeTtGC7tPxkQhz5Q2my3ykAAltYjQm/vK', NULL, '2024-10-23 02:45:37', '2024-10-23 02:45:37');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tchungtughiso`
--
ALTER TABLE `tchungtughiso`
  ADD PRIMARY KEY (`cMaChungTu`);

--
-- Chỉ mục cho bảng `tchungtughisochitiet`
--
ALTER TABLE `tchungtughisochitiet`
  ADD PRIMARY KEY (`cMaChungTu`,`nMaSo`);

--
-- Chỉ mục cho bảng `tchungtuketchuyen`
--
ALTER TABLE `tchungtuketchuyen`
  ADD PRIMARY KEY (`cMaChungTu`);

--
-- Chỉ mục cho bảng `tchungtuketchuyenchitiet`
--
ALTER TABLE `tchungtuketchuyenchitiet`
  ADD PRIMARY KEY (`cMaChungTu`);

--
-- Chỉ mục cho bảng `tchungtunganhang`
--
ALTER TABLE `tchungtunganhang`
  ADD PRIMARY KEY (`cMaChungTu`);

--
-- Chỉ mục cho bảng `tchungtunganhangchitiet`
--
ALTER TABLE `tchungtunganhangchitiet`
  ADD PRIMARY KEY (`cMaChungTu`,`nMaSo`);

--
-- Chỉ mục cho bảng `tdanhmucchungtu`
--
ALTER TABLE `tdanhmucchungtu`
  ADD PRIMARY KEY (`cMaLoaiChungTu`);

--
-- Chỉ mục cho bảng `tdanhmuchanghoa`
--
ALTER TABLE `tdanhmuchanghoa`
  ADD PRIMARY KEY (`cMaHang`);

--
-- Chỉ mục cho bảng `tdanhmuckhachhang`
--
ALTER TABLE `tdanhmuckhachhang`
  ADD PRIMARY KEY (`cMaKhachHang`);

--
-- Chỉ mục cho bảng `tdanhmuctaikhoan`
--
ALTER TABLE `tdanhmuctaikhoan`
  ADD PRIMARY KEY (`cTaiKhoan`);

--
-- Chỉ mục cho bảng `tdanhmuctaikhoancongnokhachhang`
--
ALTER TABLE `tdanhmuctaikhoancongnokhachhang`
  ADD PRIMARY KEY (`cTaiKhoan`,`cMaKhachHang`);

--
-- Chỉ mục cho bảng `tphieuchi`
--
ALTER TABLE `tphieuchi`
  ADD PRIMARY KEY (`cMaChungTu`);

--
-- Chỉ mục cho bảng `tphieuchichitiet`
--
ALTER TABLE `tphieuchichitiet`
  ADD PRIMARY KEY (`cMaChungTu`);

--
-- Chỉ mục cho bảng `tphieunhaphanghoa`
--
ALTER TABLE `tphieunhaphanghoa`
  ADD PRIMARY KEY (`cMaChungTu`);

--
-- Chỉ mục cho bảng `tphieunhaphanghoachitiet`
--
ALTER TABLE `tphieunhaphanghoachitiet`
  ADD PRIMARY KEY (`cMaChungTu`,`nMaSo`);

--
-- Chỉ mục cho bảng `tphieunhaphangtralai`
--
ALTER TABLE `tphieunhaphangtralai`
  ADD PRIMARY KEY (`cMaChungTu`);

--
-- Chỉ mục cho bảng `tphieunhaphangtralaichitiet`
--
ALTER TABLE `tphieunhaphangtralaichitiet`
  ADD PRIMARY KEY (`cMaChungTu`,`nMaSo`);

--
-- Chỉ mục cho bảng `tphieuthu`
--
ALTER TABLE `tphieuthu`
  ADD PRIMARY KEY (`cMaChungTu`);

--
-- Chỉ mục cho bảng `tphieuthuchitiet`
--
ALTER TABLE `tphieuthuchitiet`
  ADD PRIMARY KEY (`cMaChungTu`);

--
-- Chỉ mục cho bảng `tphieuxuathanghoa`
--
ALTER TABLE `tphieuxuathanghoa`
  ADD PRIMARY KEY (`cMaChungTu`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
