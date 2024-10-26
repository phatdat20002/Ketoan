import React, { useState } from 'react';
import Navbar from '../Navbar/navbar';
import Danhmuckh from '../DanhmucKH/Danhmuckh';
import './home.css';

const Home = () => {
    const [showCustomerList, setShowCustomerList] = useState(false);

    const handleShowCustomerList = () => {
        setShowCustomerList(true);
    };

    return (
        <div className="home-container">
            <Navbar onShowCustomerList={handleShowCustomerList} />
            {showCustomerList && (
                <div className="customer-list-container">
                    <Danhmuckh />
                </div>
            )}
        </div>
    );
};

export default Home;