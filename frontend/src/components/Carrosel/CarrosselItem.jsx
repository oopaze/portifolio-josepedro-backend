export default function CarrosselItem(props) {
    return (
        <div>
            <figure>
                <img src={props.image} alt="imagem do carrossel"></img>
            </figure>
            <div className="over-image"></div>
            <div className="hr"></div>
        </div>
    );
}