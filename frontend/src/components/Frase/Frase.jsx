import "../Frase/Frase.css";

export default function Frase(props) {
    return (
        <div className="fraseContainer">
            <figure style={{ "background-image": `url("${props.fraseImage}")` }}>
                <p>“ O fotógrafo tem a mesma missão do poeta: <br /> eternizar o momento que se passa. ”</p>
                <h2>Mário Quintana </h2>
            </figure>
        </div >
    );
}