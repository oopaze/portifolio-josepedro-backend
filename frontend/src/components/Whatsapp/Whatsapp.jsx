import { BsWhatsapp } from 'react-icons/bs';
import "../Whatsapp/Whatsapp.css";


export default function WhatsappButton(props) {
    return (
        <a
            href="https://api.whatsapp.com/send?phone=55558781593063"
            target="_blank"
            rel="noreferrer"
            className="whatsappButton"
        >
            <BsWhatsapp />
        </a>
    )
}