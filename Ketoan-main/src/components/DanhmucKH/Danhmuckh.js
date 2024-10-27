import React, { useEffect, useState } from 'react';
import styles from './Danhmuckh.module.css'; // Nhập tệp CSS Module
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlus, faEdit, faTrash } from '@fortawesome/free-solid-svg-icons';

const Danhmuckh = () => {
    const [customers, setCustomers] = useState([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);
    const [currentPage, setCurrentPage] = useState(1);
    const [customersPerPage] = useState(5);
    const [newCustomer, setNewCustomer] = useState({});
    const [editingCustomer, setEditingCustomer] = useState(null);
    const [isModalOpen, setIsModalOpen] = useState(false);

    useEffect(() => {
        fetchCustomers();
    }, []);

    const fetchCustomers = async () => {
        try {
            const response = await fetch('http://localhost:8000/api/khachhang');
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            const data = await response.json();
            setCustomers(data);
        } catch (err) {
            setError(err.message);
        } finally {
            setLoading(false);
        }
    };

    const handleAdd = async () => {
        try {
            const response = await fetch('http://localhost:8000/api/khachhang', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(newCustomer),
            });
            if (response.ok) {
                const createdCustomer = await response.json();
                setCustomers([...customers, createdCustomer]);
                setNewCustomer({});
                setIsModalOpen(false);
            }
        } catch (err) {
            setError("Không thể thêm khách hàng.");
        }
    };

    const handleEdit = (customer) => {
        setEditingCustomer(customer);
        setIsModalOpen(true); // Mở modal với thông tin khách hàng cần sửa
    };

    const handleUpdate = async () => {
        try {
            const response = await fetch(`http://localhost:8000/api/khachhang/${editingCustomer.cMaKhachHang}`, {
                method: 'PUT',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(editingCustomer),
            });
            if (response.ok) {
                const updatedCustomer = await response.json();
                setCustomers(customers.map(cust => 
                    cust.cMaKhachHang === updatedCustomer.cMaKhachHang ? updatedCustomer : cust
                ));
                setEditingCustomer(null);
                setIsModalOpen(false);
            }
        } catch (err) {
            setError("Không thể cập nhật khách hàng.");
        }
    };

    const handleDelete = async (id) => {
        if (window.confirm(`Bạn có chắc chắn muốn xóa khách hàng có mã: ${id}?`)) {
            try {
                await fetch(`http://localhost:8000/api/khachhang/${id}`, { method: 'DELETE' });
                setCustomers(customers.filter(customer => customer.cMaKhachHang !== id));
            } catch (err) {
                setError("Không thể xóa khách hàng.");
            }
        }
    };

    const indexOfLastCustomer = currentPage * customersPerPage;
    const indexOfFirstCustomer = indexOfLastCustomer - customersPerPage;
    const currentCustomers = customers.slice(indexOfFirstCustomer, indexOfLastCustomer);

    const nextPage = () => {
        setCurrentPage(prevPage => Math.min(prevPage + 1, Math.ceil(customers.length / customersPerPage)));
    };

    const prevPage = () => {
        setCurrentPage(prevPage => Math.max(prevPage - 1, 1));
    };

    if (loading) return <div>Loading...</div>;
    if (error) return <div>Error: {error}</div>;
    return (
        <div className={styles.container}>
             <div className={styles.customerList}>
            <h2 className={styles.title}>Danh mục khách hàng</h2>
            <div className="button-group">
                <button className={styles.btnAdd} onClick={() => { setNewCustomer({}); setIsModalOpen(true); }}>
                    <FontAwesomeIcon icon={faPlus} /> Thêm khách hàng
                </button>
                <select 
                    onChange={(e) => setEditingCustomer(customers.find(customer => customer.cMaKhachHang === e.target.value))}>
                    <option value="">Chọn khách hàng</option>
                    {customers.map(customer => (
                        <option key={customer.cMaKhachHang} value={customer.cMaKhachHang}>
                            {customer.cTenKhachHang} ({customer.cMaKhachHang})
                        </option>
                    ))}
                </select>

                <button className={styles.btnEdit} onClick={() => editingCustomer && handleEdit(editingCustomer)}>
                    <FontAwesomeIcon icon={faEdit} /> Sửa
                </button>
                <button className={styles.btnDelete} onClick={() => editingCustomer && handleDelete(editingCustomer.cMaKhachHang)}>
                    <FontAwesomeIcon icon={faTrash} /> Xóa
                </button>
            </div>

            {/* Modal thêm/sửa khách hàng */}
            {isModalOpen && (
                <div className={styles.modal}>
                    <div className={styles.modalContent}>
                        <h3>{editingCustomer ? 'Sửa khách hàng' : 'Thêm khách hàng mới'}</h3>
                        <input 
                            className={styles.input}
                            placeholder="Mã khách hàng" 
                            value={editingCustomer?.cMaKhachHang || newCustomer.cMaKhachHang || ''} 
                            onChange={(e) => editingCustomer 
                                ? setEditingCustomer({ ...editingCustomer, cMaKhachHang: e.target.value }) 
                                : setNewCustomer({ ...newCustomer, cMaKhachHang: e.target.value })} 
                        />
                        <input 
                            className={styles.input}
                            placeholder="Tên khách hàng" 
                            value={editingCustomer?.cTenKhachHang || newCustomer.cTenKhachHang || ''} 
                            onChange={(e) => editingCustomer 
                                ? setEditingCustomer({ ...editingCustomer, cTenKhachHang: e.target.value }) 
                                : setNewCustomer({ ...newCustomer, cTenKhachHang: e.target.value })} 
                        />
                        <input 
                            className={styles.input}
                            placeholder="Địa chỉ" 
                            value={editingCustomer?.cDiaChi || newCustomer.cDiaChi || ''} 
                            onChange={(e) => editingCustomer 
                                ? setEditingCustomer({ ...editingCustomer, cDiaChi: e.target.value }) 
                                : setNewCustomer({ ...newCustomer, cDiaChi: e.target.value })} 
                        />
                        <input 
                            className={styles.input}
                            placeholder="Mã số thuế" 
                            value={editingCustomer?.cMaSoThue || newCustomer.cMaSoThue || ''} 
                            onChange={(e) => editingCustomer 
                                ? setEditingCustomer({ ...editingCustomer, cMaSoThue: e.target.value }) 
                                : setNewCustomer({ ...newCustomer, cMaSoThue: e.target.value })} 
                        />
                        <input 
                            className={styles.input}
                            placeholder="Điện thoại" 
                            value={editingCustomer?.cDienThoai || newCustomer.cDienThoai || ''} 
                            onChange={(e) => editingCustomer 
                                ? setEditingCustomer({ ...editingCustomer, cDienThoai: e.target.value }) 
                                : setNewCustomer({ ...newCustomer, cDienThoai: e.target.value })} 
                        />
                        <input 
                            className={styles.input}
                            placeholder="Email" 
                            value={editingCustomer?.cFax || newCustomer.cFax || ''} 
                            onChange={(e) => editingCustomer 
                                ? setEditingCustomer({ ...editingCustomer, cFax: e.target.value }) 
                                : setNewCustomer({ ...newCustomer, cFax: e.target.value })} 
                        />
                        <button className={styles.btnSave} onClick={editingCustomer ? handleUpdate : handleAdd}>Lưu</button>
                        <button className={styles.btnClose} onClick={() => { setIsModalOpen(false); setEditingCustomer(null); }}>Đóng</button>
                    </div>
                </div>
            )}

            <table className={styles.table}>
                <thead>
                    <tr className={styles.thead}>
                        <th className={styles.th}>Mã khách</th>
                        <th className={styles.th}>Tên khách hàng</th>
                        <th className={styles.th}>Địa chỉ</th>
                        <th className={styles.th}>Mã số thuế</th>
                        <th className={styles.th}>Điện thoại</th>
                        <th className={styles.th}>Thư (Email)</th>
                        <th className={styles.th}>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    {currentCustomers.map((customer) => (
                        <tr key={customer.cMaKhachHang} className={styles.tr}>
                            <td className={styles.td}>{customer.cMaKhachHang}</td>
                            <td className={styles.td}>{customer.cTenKhachHang}</td>
                            <td className={styles.td}>{customer.cDiaChi}</td>
                            <td className={styles.td}>{customer.cMaSoThue}</td>
                            <td className={styles.td}>{customer.cDienThoai}</td>
                            <td className={styles.td}>{customer.cFax}</td>
                            <td className={styles.td}>
                                <button className={styles.btnEdit} onClick={() => handleEdit(customer)}>
                                    <FontAwesomeIcon icon={faEdit} /> Sửa
                                </button>
                                <button className={styles.btnDelete} onClick={() => handleDelete(customer.cMaKhachHang)}>
                                    <FontAwesomeIcon icon={faTrash} /> Xóa
                                </button>
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>
            <div className={styles.pagination}>
                <button 
                    className={styles.paginationButton} 
                    onClick={prevPage} 
                    disabled={currentPage === 1}
                >
                    Trước
                </button>
                <span>Trang {currentPage} / {Math.ceil(customers.length / customersPerPage)}</span>
                <button 
                    className={styles.paginationButton} 
                    onClick={nextPage} 
                    disabled={currentPage === Math.ceil(customers.length / customersPerPage)}
                >
                    Tiếp theo
                </button>
            </div>

        </div>
        </div>
       
    );
};

export default Danhmuckh;
