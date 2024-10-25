import React from 'react';
import './navbar.css';

const Navbar = ({ userName }) => {
    return (
        <nav className="navbar">
            <div className="navbar-links">
                <a href="/system">Hệ Thống</a>
                <a href="/summary">Tổng Hợp</a>
                <a href="/money">Tiền</a>
                <a href="/sales">Bán Hàng</a>
                <a href="/purchases">Mua Hàng</a>
            </div>
        </nav>
    );
};

export default Navbar;