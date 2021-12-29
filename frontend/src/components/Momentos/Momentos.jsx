import MomentoItem from "./MomentoItem";

import "../Momentos/Momentos.css";
import '../../styles/button.css';


export default function Momentos(props) {
    const settings = {
        arrows: false,
        autoplay: true,
        autoplaySpeed: 5000,
        dots: true,
        duration: 200,
        initialSlide: 0,
        pauseOnHover: false
    };

    return (
        <div className="momentosContainer">
            <div className="titleContent">
                <h2> Momentos </h2>
                <p> Que passaram pela minha lente </p>
            </div>
            <div className="momentosContent">
                {props.momentos.length >= 1 ?
                    props.momentos.map(
                        (moment, index) => {
                            return <MomentoItem capaURL={moment.capaUrl} type={moment.tipo} key={index} />
                        }
                    ) : ''
                }
            </div>
            <button type="button" className="default"> Ver Mais </button>
        </div>
    );
}