import PacoteItem from './PacoteItem';

import '../Pacotes/Pacotes.css';
import '../../styles/button.css';


export default function Pacotes(props){
    return (
        <div className="pacotesContainer">
            <h2 className="title"> Pacotes </h2>
            <div className="pacotesContent">
                {props.pacotes.map((pacote, i) => <PacoteItem key={i} pacote={pacote}/>)}
            </div>
            <button type="button" className="default"> Saiba Mais </button>   
        </div>
    );
}