import "./Carrossel.css";


export default function Corrossel (props){
    console.log(props)
    return (
        <div className="carrosselContainer">
            <figure>
                <img src={props.imagesCarrossel[0]} alt="imagem do carrossel"></img>
            </figure>
            <div className="over-image"></div>
            <div className="hr"></div>
        </div>
    );
}