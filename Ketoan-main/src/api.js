import axios from 'axios';

const API_URL = 'http://localhost:8000/api';

export const registerUser = async (name, email, password) => {
    try {
        const response = await axios.post(`${API_URL}/register`, { name, email, password });
        return response.data;
    } catch (error) {
        if (error.response && error.response.data) {
            throw new Error(error.response.data.message || 'Đăng ký thất bại. Vui lòng kiểm tra lại thông tin!');
        }
        throw new Error('Đăng ký thất bại. Vui lòng kiểm tra lại thông tin!');
    }
};

export const loginUser = async (email, password) => {
    try {
        const response = await axios.post(`${API_URL}/login`, { email, password });
        return response.data;
    } catch (error) {
        throw error.response.data;
    }
};