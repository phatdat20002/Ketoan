import React from 'react';
import Navbar from './navbar';
import './App.css';

const Home = () => {
    return (
        <div className="home-container">
            <Navbar />
            <div className="welcome-message">
                <h1>Chào mừng đến với trang chính!</h1>
            </div>
        </div>
    );
};

export default Home;
