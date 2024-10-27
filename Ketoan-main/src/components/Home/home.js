import React from 'react';
import { Routes, Route } from 'react-router-dom';
import Navbar from '../Navbar/Navbar';
import Danhmuckh from '../DanhmucKH/Danhmuckh';

const Home = () => {
    return (
        <div >
            <Navbar />
            <Routes>
                <Route path="/danhmuckh" element={<Danhmuckh />} />
            </Routes>
        </div>
    );
};

export default Home;
