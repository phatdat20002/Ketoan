import React, { useState } from 'react';
import { loginUser } from './api';
import { useNavigate } from 'react-router-dom';
import './login.css';

const Login = () => {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [successMessage, setSuccessMessage] = useState('');
    const navigate = useNavigate();

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            await loginUser(email, password);
            setSuccessMessage('Đăng nhập thành công!');
            setTimeout(() => {
                navigate('/home');
            }, 2000);
        } catch (error) {
            console.error('Error logging in:', error);
        }
    };

    return (
        <div className="container">
            <h2>Đăng Nhập</h2>
            <form onSubmit={handleSubmit}>
                <input type="email" value={email} onChange={(e) => setEmail(e.target.value)} placeholder="Email" required />
                <input type="password" value={password} onChange={(e) => setPassword(e.target.value)} placeholder="Password" required />
                <button type="submit">Đăng Nhập</button>
            </form>
            {successMessage && <p className="success-message">{successMessage}</p>}
            <p>
                Bạn chưa có tài khoản? <a href="/register">Đăng ký ngay</a>
            </p>
        </div>
    );
};

export default Login;