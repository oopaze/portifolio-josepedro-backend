
import "../Menu/Menu.css";
import logo from '../../assets/images/logo.png'


export default function Menu() {
    return (
        <header className="menu">
            <a href="#">
                <img className="logo" alt="logo" src={logo}></img>
            </a>
            <ul className='menuList'>
                <li><a href="#home"> Home </a></li>
                <li><a href="#portifolio"> Portifolio </a></li>
                <li><a href="#sobre"> Sobre </a></li>
                <li><a href="#contato"> Contato </a></li>
            </ul>
        </header>
    );
}