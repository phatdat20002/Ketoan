import React, { useState } from "react";
import { loginUser } from "../../api";
import { useNavigate } from 'react-router-dom';
import LanguageSwitcher from '../LanguageSwitcher/LanguageSwitcher';
import './Login.css';

function Login() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [successMessage, setSuccessMessage] = useState('');
  const [errorMessage, setErrorMessage] = useState('');
  const [language, setLanguage] = useState('en');
  const navigate = useNavigate();

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await loginUser(email, password);
      setSuccessMessage(
        language === 'en' ? 'Login successful!' :
        language === 'vi' ? 'Đăng nhập thành công!' :
        '登录成功！' // Tiếng Trung
      );
      setErrorMessage(''); // Reset lại lỗi sau khi thành công
      setTimeout(() => {
        navigate('/home'); // Điều hướng sau khi đăng nhập thành công
      }, 2000);
    } catch (error) {
      setErrorMessage(
        language === 'en' ? 'Login failed. Please check your credentials!' :
        language === 'vi' ? 'Đăng nhập thất bại. Vui lòng kiểm tra lại thông tin!' :
        '登录失败。请检查您的凭据！'
      );
    }
  };

  const handleInputChange = (setter) => (e) => {
    setter(e.target.value);
    setErrorMessage(''); 
  };

  return (
    <div className="login-container">
      <LanguageSwitcher onChange={setLanguage} /> {/* Thêm component LanguageSwitcher */}
      <div className="card o-hidden border-0 shadow-lg">
        <div className="card-body">
          <div className="bg-login-image"></div>
          <div className="form-section">
            <div className="text-center">
              <h1 className="h4 text-gray-900 mb-4">
                {language === 'en' ? 'Welcome Back!' : 
                 language === 'vi' ? 'Chào Mừng Trở Lại!' : 
                 '欢迎回来！'}  {/* Tiếng Trung */}
              </h1>
            </div>
            <form className="user" onSubmit={handleSubmit}>
              <div className="form-group">
                <label htmlFor="Email" className="">
                  {language === 'en' ? 'Email' : 
                   language === 'vi' ? 'Email' : 
                   '电子邮件'}
                </label>
                <input
                  type="email"
                  name="email"
                  className="form-control form-control-user"
                  placeholder={language === 'en' ? 'Enter Email ...' : 
                              language === 'vi' ? 'Nhập Email ...' : 
                              '输入电子邮件 ...'} 
                  value={email}
                  onChange={handleInputChange(setEmail)}
                  required
                />
              </div>
              <div className="form-group">
                <label htmlFor="exampleInputPassword">
                  {language === 'en' ? 'Password' : 
                   language === 'vi' ? 'Mật Khẩu' : 
                   '密码'}
                </label>
                <input
                  type="password"
                  className="form-control form-control-user"
                  name="password"
                  id="exampleInputPassword"
                  placeholder={language === 'en' ? 'Password' : 
                              language === 'vi' ? 'Mật Khẩu' : 
                              '密码'}
                  value={password}
                  onChange={handleInputChange(setPassword)}
                  required
                />
              </div>
              <button type="submit" className="btn btn-primary btn-user btn-block">
                {language === 'en' ? 'Login' : 
                 language === 'vi' ? 'Đăng Nhập' : 
                 '登录'}
              </button>
            </form>
            <div className="text-center">
              <a className="small" href="/Register">
                {language === 'en' ? 'Create an Account!' : 
                 language === 'vi' ? 'Tạo Tài Khoản!' : 
                 '创建一个账户！'}
              </a>
            </div> 
            {successMessage && <p className="text-success text-center mt-3">{successMessage}</p>}
            {errorMessage && <p className="text-error text-center mt-3">{errorMessage}</p>}
          </div>
        </div>
      </div>
    </div>
  );
}

export default Login;
