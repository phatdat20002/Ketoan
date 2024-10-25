import React, { useState } from "react";
import { loginUser } from "./api";
import { useNavigate } from 'react-router-dom';
import './Login.css'; // Import CSS for styling

const Login = () => {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [errorMessage, setErrorMessage] = useState('');

    const navigate = useNavigate();

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            const data = await loginUser(email, password);
            console.log('User logged in successfully:', data);
            // Optionally, check if data has user info or token to handle user state
            navigate('/home'); // Navigate to the home page after successful login
        } catch (error) {
            console.error('Error logging in:', error);
            setErrorMessage('Đăng nhập không thành công. Vui lòng thử lại.'); // Display user-friendly error message
        }
    };

    return (
        <div className="login-container">
            <div className="card o-hidden border-0 shadow-lg">
                <div className="card-body">
                    <div className="form-section">
                        <div className="text-center">
                            <h1 className="h4 text-gray-900 mb-4">Welcome Back!</h1>
                        </div>
                        <form className="user" onSubmit={handleSubmit}>
                            <div className="form-group">
                                <label htmlFor="email">Email</label>
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
                                <label htmlFor="password">Password</label>
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
                            {errorMessage && <p className="error-message">{errorMessage}</p>} {/* Show error message if exists */}
                            <button type="submit" className="btn btn-primary btn-user btn-block">
                                Login
                            </button>
                        </form>
                        <p className="text-center">
                            <a href="/register">Create an Account!</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default Login;
