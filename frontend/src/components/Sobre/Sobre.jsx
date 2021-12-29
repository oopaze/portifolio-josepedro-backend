import { useEffect, useState } from "react";
import "../Sobre/Sobre.css";


export default function Sobre(props) {
    const [index, setIndex] = useState(0)

    const changeWords = ['Carinho', 'União', 'Gratidão', 'Amor', 'Felicidade', 'Alegria', 'Paixão', 'Gargalhadas']

    const [word, setWord] = useState('Gargalhadas')


    useEffect(() => {
        setTimeout(() => {
            index + 1 === changeWords.length ? setIndex(0) : setIndex(index + 1)
            setWord(changeWords[index])
        }, 4000)
    })

    return (
        <div className="sobreContent">
            <div className='image'>
                <img src={props.profileImage} alt="Imagem do fotografo"></img>
            </div>
            <div className='sobre'>
                <h5>
                    Olá, eu sou José Pedro. <br />
                    Compartilhe comigo <span> {word}! </span>
                </h5>
                <p>
                    {props.profileResumo}
                </p>
            </div>
        </div>
    );
}