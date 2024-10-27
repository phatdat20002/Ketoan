import React, { useState } from 'react';
import './navbar.css';

const Navbar = ({ onShowCustomerList }) => {
    const [isDropdownOpen, setDropdownOpen] = useState(false);

    const handleMouseEnter = () => {
        setDropdownOpen(true);
    };

    const handleMouseLeave = () => {
        setDropdownOpen(false);
    };

    return (
        <nav className="navbar">
            <div 
                className="relative" 
                onMouseEnter={handleMouseEnter} 
                onMouseLeave={handleMouseLeave}
            >
                <button className="text-muted-foreground">
                    Hệ thống
                </button>
                {isDropdownOpen && (
                    <div 
                        className="absolute bg-white shadow-md rounded mt-2"
                        onMouseEnter={handleMouseEnter}
                        onMouseLeave={handleMouseLeave}
                    >
                        <button
                            onClick={() => {
                                onShowCustomerList();
                            }}
                            className="dropdown-item"
                        >
                            Danh Mục Khách Hàng
                        </button>
                    </div>
                )}
            </div>
            <a href="#" className="text-muted-foreground">Tiền</a>
            <a href="#" className="text-muted-foreground">Bán hàng</a>
            <a href="#" className="text-muted-foreground">Mua hàng</a>
            <a href="#" className="text-muted-foreground">Giá thành</a>
            <a href="#" className="text-muted-foreground">Dự án</a>
            <a href="#" className="text-muted-foreground">Tài sản</a>
            <a href="#" className="text-muted-foreground">Công cụ</a>
            <a href="#" className="text-muted-foreground">Trợ giúp</a>
        </nav>
    );
};

export default Navbar;
