export default function PacoteItem(props) {
    return (
        <> 
            <figure>
                <img src={props.pacote.imagem} alt={props.pacote.titulo}></img>
                <div className="overlayer">
                    <h2 className="itemTitle">{props.pacote.titulo}</h2>
                </div>
            </figure>
        </>
    );
}