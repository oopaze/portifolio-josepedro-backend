import Slider from "infinite-react-carousel/lib";
import MomentoItem from "./MomentoItem";

import "../Momentos/Momentos.css";


export default function Momentos(props) {
    const settings =  {
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
                { props.momentos.length >= 1 ?
                    <Slider { ...settings }>
                        {props.momentos.map((momento, index) => {
                            return <MomentoItem images={momento.imagens} type={momento.tipo} key={index}/>
                        })}
                    </Slider>
                : '' }
            </div>
            <button type="button" className="default"> Ver Mais </button>   
        </div>
    );
}