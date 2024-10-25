// api.js
import axios from 'axios';

const API_URL = 'http://localhost:8000/api';

// Hàm đăng ký
export const registerUser = async (name, email, password) => {
    try {
        const response = await axios.post(`${API_URL}/register`, { name, email, password });
        return response.data; // Trả về dữ liệu phản hồi
    } catch (error) {
        throw error.response.data; // Ném ra lỗi để xử lý ở nơi gọi hàm
    }
};

// Hàm đăng nhập
export const loginUser = async (email, password) => {
    try {
        const response = await axios.post(`${API_URL}/login`, { email, password });
        return response.data; // Trả về dữ liệu phản hồi
    } catch (error) {
        throw error.response.data; // Ném ra lỗi để xử lý ở nơi gọi hàm
    }
};
