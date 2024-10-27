import React, { useState } from 'react';
import { useNavigate, Link } from 'react-router-dom'; // Thay useHistory bằng useNavigate
import './navbar.css';

const Navbar = () => {
    const [activeMenu, setActiveMenu] = useState(null);
    const [searchTerm, setSearchTerm] = useState('');
    const navigate = useNavigate(); // Khởi tạo navigate

    const toggleMenu = (menuName) => {
        setActiveMenu(activeMenu === menuName ? null : menuName);
    };

    // Danh sách các mục và submenu
    const menuItems = [
        {
            title: 'Hệ thống',
            links: [
                { path: '/home/set-working-day', label: 'Chọn ngày làm việc' },
                { path: '/home/exchange-rate', label: 'Tỷ giá quy đổi ngoại tệ' },
                { path: '/home/permissions', label: 'Danh mục quyền chứng từ' },
                { path: '/home/currency', label: 'Danh mục tiền tệ' },
                { path: '/home/units', label: 'Danh mục đơn vị cơ sở' },
                { path: '/home/departments', label: 'Danh mục bộ phận' },
                { path: '/home/signature', label: 'Thông tin chữ ký' },
                { path: '/home/users', label: 'Người sử dụng' },
                { path: '/home/data-maintenance', label: 'Bảo trì số liệu' },
                { path: '/home/document-setup', label: 'Khai báo màn hình nhập chứng từ' },
                { path: '/home/financial-year-start', label: 'Ngày bắt đầu năm tài chính' },
                { path: '/home/data-entry-start', label: 'Ngày bắt đầu nhập liệu' },
            ],
        },
        {
            title: 'Tổng hợp',
            links: [
                { path: '/home/account-list', label: 'Danh mục tài khoản' },
                { path: '/home/financial-report', label: 'Báo cáo tài chính' },
                { path: '/home/summary-report', label: 'Báo cáo tổng hợp' },
            ],
        },
        {
            title: 'Tiền',
            links: [
                { path: '/home/cash-management', label: 'Quản lý tiền mặt' },
                { path: '/home/bank-management', label: 'Quản lý ngân hàng' },
            ],
        },
        {
            title: 'Bán hàng',
            links: [
                { path: '/home/order-management', label: 'Quản lý đơn hàng' },
                { path: '/home/danhmuckh', label: 'Danh Mục Khách Hàng' },
                { path: '/home/sales-report', label: 'Báo cáo bán hàng' },
            ],
        },
        {
            title: 'Mua hàng',
            links: [
                { path: '/home/purchase-orders', label: 'Quản lý đơn mua hàng' },
                { path: '/home/purchase-report', label: 'Báo cáo mua hàng' },
            ],
        },
        {
            title: 'Tồn kho',
            links: [
                { path: '/home/warehouse-management', label: 'Quản lý kho' },
                { path: '/home/inventory-report', label: 'Báo cáo tồn kho' },
            ],
        },
        {
            title: 'Giá thành',
            links: [
                { path: '/home/cost-calculation', label: 'Tính giá thành sản phẩm' },
            ],
        },
        {
            title: 'Dự án',
            links: [
                { path: '/home/project-management', label: 'Quản lý dự án' },
                { path: '/home/project-report', label: 'Báo cáo dự án' },
            ],
        },
        {
            title: 'Tài sản',
            links: [
                { path: '/home/asset-management', label: 'Quản lý tài sản' },
                { path: '/home/asset-report', label: 'Báo cáo tài sản' },
            ],
        },
        {
            title: 'Công cụ',
            links: [
                { path: '/home/tool-management', label: 'Quản lý công cụ' },
                { path: '/home/tool-report', label: 'Báo cáo công cụ' },
            ],
        },
        {
            title: 'Trợ giúp',
            links: [
                { path: '/home/user-guide', label: 'Hướng dẫn sử dụng' },
                { path: '/home/support', label: 'Hỗ trợ' },
            ],
        },
    ];

    // Danh sách tất cả các liên kết để tìm kiếm
    const allLinks = menuItems.flatMap(menu => 
        menu.links.map(link => ({ path: link.path, label: link.label }))
    );

    // Lọc gợi ý theo ký tự người dùng nhập vào
    const filteredSuggestions = allLinks.filter(link =>
        link.label.toLowerCase().includes(searchTerm.toLowerCase())
    );

    // Hàm xử lý khi người dùng chọn gợi ý
    const handleSuggestionClick = (path) => {
        setSearchTerm(''); // Đặt lại searchTerm về chuỗi rỗng
        navigate(path); // Chuyển hướng đến đường dẫn đã chọn
    };

    return (
        <div>
            <div className="navbar-top">
                <span className="title">Fast Accounting Online</span>
                <span className="user-info">
                    Người sử dụng: DOANNGOCHUNG | 
                    <Link to="/home">Trang chính</Link> | 
                    <Link to="/home/change-password">Đổi mật khẩu</Link> | 
                    <Link to="/home/logout">Thoát</Link>
                </span>
                <input
                    type="text"
                    className="search-bar"
                    placeholder="Tìm kiếm..."
                    value={searchTerm}
                    onChange={(e) => setSearchTerm(e.target.value)}
                />
                {searchTerm && filteredSuggestions.length > 0 && ( 
                    <div className="suggestions">
                        <ul>
                            {filteredSuggestions.map((suggestion, index) => (
                                <li key={index} onClick={() => handleSuggestionClick(suggestion.path)}>
                                    {suggestion.label} {/* Hiển thị nhãn mà không có thẻ Link */}
                                </li>
                            ))}
                        </ul>
                    </div>
                )}
            </div>
            <nav className="navbar">
                <ul className="navbar-menu">
                    {menuItems.map((menu, menuIndex) => (
                        <li 
                            key={menuIndex} 
                            onMouseEnter={() => toggleMenu(menu.title)} 
                            onMouseLeave={() => toggleMenu(null)}
                        >
                            <span>{menu.title}</span>
                            {activeMenu === menu.title && (
                                <ul className="dropdown">
                                    {menu.links.map((link, linkIndex) => (
                                        <li key={linkIndex}>
                                            <Link to={link.path}>{link.label}</Link>
                                        </li>
                                    ))}
                                </ul>
                            )}
                        </li>
                    ))}
                </ul>
            </nav>
        </div>
    );
};

export default Navbar;
