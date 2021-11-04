import "../Frase/Frase.css";

export default function Frase (props) {
    return (
        <div className="fraseContainer">
            <figure>
                <img src={props.fraseImage} alt="Imagem fundo para frase de reflexão"></img>
            </figure>
            <div className="info">
                <p>“ O fotógrafo tem a mesma missão do poeta: <br/> eternizar o momento que se passa. ”</p>
                <h2>Mário Quintana </h2>
            </div>
        </div>
    );
}