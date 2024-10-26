import React, { useState } from 'react';
import './LanguageSwitcher.css'; // Import CSS cho phong cách

const languages = [
    { code: 'vi', name: 'Tiếng Việt', flag: 'https://st.quantrimang.com/photos/image/2021/09/05/Co-Vietnam.png' },
    { code: 'en', name: 'English', flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_the_United_States.svg/285px-Flag_of_the_United_States.svg.png' },
    { code: 'zh', name: '中文', flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/225px-Flag_of_the_People%27s_Republic_of_China.svg.png' }
];

const LanguageSwitcher = ({ onChange }) => {
    const [isOpen, setIsOpen] = useState(false);
    const [language, setLanguage] = useState('en'); // Mặc định là tiếng Anh

    const handleLanguageChange = (lang) => {
        setLanguage(lang);
        onChange(lang);
        setIsOpen(false); // Đóng menu sau khi chọn
    };

    const currentLanguage = languages.find(lang => lang.code === language);

    return (
        <div className="language-switcher">
            <button onClick={() => setIsOpen(!isOpen)} className="dropdown-button">
                <img src={currentLanguage.flag} alt={currentLanguage.name} className="flag-icon" />
                {currentLanguage.name}
            </button>
            {isOpen && (
                <ul className="dropdown-menu">
                    {languages.map(lang => (
                        <li key={lang.code} onClick={() => handleLanguageChange(lang.code)}>
                            <img src={lang.flag} alt={lang.name} className="flag-icon" />
                            {lang.name}
                        </li>
                    ))}
                </ul>
            )}
        </div>
    );
};

export default LanguageSwitcher;
