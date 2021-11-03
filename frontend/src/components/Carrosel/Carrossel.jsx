import CarrosselItem from '../Carrosel/CarrosselItem';
import Slider from 'infinite-react-carousel';

import "../Carrosel/Carrossel.css";


export default function Corrossel (props){

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
        <div className="carrosselContainer">
            {props.imagesCarrossel.length > 1 ? 
            <Slider { ...settings }>
                {props.imagesCarrossel.map((image, index) => {
                    return <CarrosselItem key={index} image={image}/>
                })}
            </Slider>
            : ''}
        </div>
    );
}