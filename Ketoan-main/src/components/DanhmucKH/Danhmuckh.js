import React, { useEffect, useState } from 'react';
import './Danhmuckh.css';

const Danhmuckh = () => {
    const [customers, setCustomers] = useState([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);
    const [currentPage, setCurrentPage] = useState(1);
    const [customersPerPage] = useState(5);
    const [newCustomer, setNewCustomer] = useState({});
    const [editingCustomer, setEditingCustomer] = useState(null);

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
            }
        } catch (err) {
            setError("Không thể thêm khách hàng.");
        }
    };

    const handleEdit = (customer) => {
        setEditingCustomer(customer);
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
                setCustomers(customers.map(cust => cust.cMaKhachHang === updatedCustomer.cMaKhachHang ? updatedCustomer : cust));
                setEditingCustomer(null);
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
        <div className="customer-list">
            <h2 className="text-lg font-semibold mb-2">Danh mục khách hàng</h2>
            <div>
                <input 
                    placeholder="Mã khách hàng" 
                    value={newCustomer.cMaKhachHang || ''} 
                    onChange={(e) => setNewCustomer({ ...newCustomer, cMaKhachHang: e.target.value })} 
                />
                <input 
                    placeholder="Tên khách hàng" 
                    value={newCustomer.cTenKhachHang || ''} 
                    onChange={(e) => setNewCustomer({ ...newCustomer, cTenKhachHang: e.target.value })} 
                />
                <button className="btn-add" onClick={handleAdd}>Thêm khách hàng</button>
            </div>

            {editingCustomer && (
                <div>
                    <input 
                        placeholder="Mã khách hàng" 
                        value={editingCustomer.cMaKhachHang || ''} 
                        onChange={(e) => setEditingCustomer({ ...editingCustomer, cMaKhachHang: e.target.value })} 
                    />
                    <input 
                        placeholder="Tên khách hàng" 
                        value={editingCustomer.cTenKhachHang || ''} 
                        onChange={(e) => setEditingCustomer({ ...editingCustomer, cTenKhachHang: e.target.value })} 
                    />
                    <button className="btn-edit" onClick={handleUpdate}>Cập nhật</button>
                    <button className="btn-delete" onClick={() => setEditingCustomer(null)}>Hủy</button>
                </div>
            )}

            <table className="min-w-full bg-card border border-border">
                <thead>
                    <tr className="bg-muted text-muted-foreground">
                        <th className="p-2 border-b border-border">Mã khách</th>
                        <th className="p-2 border-b border-border">Tên khách hàng</th>
                        <th className="p-2 border-b border-border">Địa chỉ</th>
                        <th className="p-2 border-b border-border">Mã số thuế</th>
                        <th className="p-2 border-b border-border">Điện thoại</th>
                        <th className="p-2 border-b border-border">Thư (Email)</th>
                        <th className="p-2 border-b border-border">Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    {currentCustomers.map((customer) => (
                        <tr key={customer.cMaKhachHang}>
                            <td className="p-2 border-b border-border">{customer.cMaKhachHang}</td>
                            <td className="p-2 border-b border-border">{customer.cTenKhachHang}</td>
                            <td className="p-2 border-b border-border">{customer.cDiaChi}</td>
                            <td className="p-2 border-b border-border">{customer.cMaSoThue}</td>
                            <td className="p-2 border-b border-border">{customer.cDienThoai}</td>
                            <td className="p-2 border-b border-border">{customer.cFax}</td>
                            <td className="p-2 border-b border-border">
                                <button className="btn-edit" onClick={() => handleEdit(customer)}>Sửa</button>
                                <button className="btn-delete" onClick={() => handleDelete(customer.cMaKhachHang)}>Xóa</button>
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>

            <div className="pagination">
                <button onClick={prevPage}>Prev</button>
                <span>Trang {currentPage}</span>
                <button onClick={nextPage}>Next</button>
            </div>
        </div>
    );
};

export default Danhmuckh;
