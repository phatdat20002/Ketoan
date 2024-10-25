import React, { useState } from 'react';
import { registerUser } from '../api'; // Đảm bảo đường dẫn này đúng
import { useNavigate } from 'react-router-dom';
import './register.css';

const Register = () => {
    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [successMessage, setSuccessMessage] = useState('');
    const [errorMessage, setErrorMessage] = useState('');
    const navigate = useNavigate();

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            await registerUser(name, email, password);
            setSuccessMessage('Đăng ký thành công!');
            setErrorMessage(''); // Reset lỗi nếu có
            setTimeout(() => {
                navigate('/');
            }, 2000);
        } catch (error) {
            setErrorMessage('Đăng ký thất bại. Vui lòng kiểm tra lại thông tin!');
        }
    };
    return (
        <div className="login-container">
            <div className="card o-hidden border-0 shadow-lg">
                <div className="card-body">
                    <div className="bg-login-image"></div>
                    <div className="form-section">
                        <div className="text-center">
                            <h1 className="login-heading">Register</h1>
                        </div>
                        <form className="user" onSubmit={handleSubmit}>
                            <div className="form-group">
                                <label htmlFor="name" className="">Name</label>
                                <input
                                    type="text"
                                    name="name"
                                    className="form-control form-control-user"
                                    placeholder="Enter Name ..."
                                    value={name}
                                    onChange={(e) => setName(e.target.value)}
                                    required
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="email" className="">Email</label>
                                <input
                                    type="email"
                                    name="email"
                                    className="form-control form-control-user"
                                    placeholder="Enter Email ..."
                                    value={email}
                                    onChange={(e) => setEmail(e.target.value)}
                                    required
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="password" className="">Password</label>
                                <input
                                    type="password"
                                    className="form-control form-control-user"
                                    name="password"
                                    placeholder="Password"
                                    value={password}
                                    onChange={(e) => setPassword(e.target.value)}
                                    required
                                />
                            </div>
                            <button type="submit" className="btn btn-primary btn-user btn-block">
                                Đăng Ký
                            </button>
                        </form>
                        <div className="text-center">
                            <a className="small" href="/">Login</a>
                        </div> 
                        {successMessage && <p className="text-success text-center mt-3">{successMessage}</p>}
                        {errorMessage && <p className="text-error text-center mt-3">{errorMessage}</p>}
                    </div>
                </div>
            </div>
        </div>
    );
};

export default Register;
