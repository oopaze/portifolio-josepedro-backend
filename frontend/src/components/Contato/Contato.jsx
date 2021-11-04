import { FiInstagram } from 'react-icons/fi';
import { BsWhatsapp } from 'react-icons/bs';
import { MdOutlineEmail } from 'react-icons/md';

import '../Contato/Contato.css'

export default function Contato (props) {
    return (
        <div className="contatoContainer" style={{ "background-image": `url("${props.bgImage}")` }}>
            <div className="titleContent">
                <h2 className="title">Contato</h2>
            </div>
            <div className="leftContent">
                <div className="contatoContent">
                    <input type="text" placeholder="Nome" required/>
                    <input type="text" placeholder="Telefone" required/>
                    <input type="email" placeholder="Email" required/>
                    <textarea placeholder="Mensagem"></textarea>
                    <button type="button">Enviar</button>
                </div>
                <div className="socialMedia">
                    <a href="https://www.instagram.com/josepedrofotografias/"><FiInstagram/></a>
                    <a href="https://api.whatsapp.com/send/?phone=5587981593063&text&app_absent=0"><BsWhatsapp/></a>
                    <a href="https://www.instagram.com/josepedrofotografias/"><MdOutlineEmail/></a>
                </div>
            </div>
        </div>
    );
}