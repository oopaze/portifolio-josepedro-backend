import "../Sobre/Sobre.css";


export default function Sobre(props) {
    return (
        <div className="sobreContent">
            <div className='image'>
                <img src={props.profileImage} alt="Imagem do fotografo"></img>
            </div>
            <div className='sobre'>
                <h5> 
                    Olá, eu sou José Pedro! <br/>
                    Compartilhe comigo <strong> bons momentos </strong>
                </h5>
                <p>
                    { props.profileResumo }
                </p>
            </div>
        </div>
    );
}