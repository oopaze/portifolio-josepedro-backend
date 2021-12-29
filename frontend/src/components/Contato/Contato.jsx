import { FiInstagram } from 'react-icons/fi';
import { MdOutlineEmail } from 'react-icons/md';

import '../Contato/Contato.css'

export default function Contato(props) {
    return (
        <div className="contatoContainer" style={{ "background-image": `url("${props.bgImage}")` }}>
            <div className="titleContent">
                <h2 className="title">Contato</h2>
            </div>
            <div className="leftContent">
                <div className="contatoContent">
                    <input type="text" placeholder="Nome" required />
                    <input type="text" placeholder="Celular" required />
                    <input type="email" placeholder="Email" required />
                    <input type="text" placeholder="Seu orçamento é para?" required />
                    <input type="text" placeholder="Onde me achou? (Instagram, Indicação, Outro...)" required />
                    <textarea placeholder="Mensagem"></textarea>
                    <button type="button">Enviar</button>
                </div>
                <div className="socialMedia">
                    <a href="https://www.instagram.com/josepedrofotografias/"><FiInstagram /></a>
                    <a href="https://www.instagram.com/josepedrofotografias/"><MdOutlineEmail /></a>
                </div>
            </div>
        </div>
    );
}