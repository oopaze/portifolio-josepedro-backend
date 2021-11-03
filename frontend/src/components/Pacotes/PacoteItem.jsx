export default function PacoteItem(props) {
    return (
        <div className="pacoteItem"> 
            <figure>
                <img src={props.pacote.imagem} alt={props.pacote.titulo}></img>
            </figure>
            <div className="over-layer">
                <h2 className="itemTitle">{props.pacote.titulo}</h2>
            </div>
        </div>
    );
}