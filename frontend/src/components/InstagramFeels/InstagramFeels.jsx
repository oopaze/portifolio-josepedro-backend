import '../InstagramFeels/InstagramFeels.css';
import InstagramImage from "./InstagramImage";


export default function InstagramFeels(props) {
    return (
        <div className="instagramFeelsContent">
            <div className="images">
                {props.instagramImages.map(img => {
                    return <InstagramImage img={img} />
                })}
            </div>
            <div className="overlayer">
                <div>
                    <h2> Instagram Feelings</h2>
                    <a href="https://www.instagram.com/josepedrofotografias" target="_blank" rel="noreferrer">
                        <span> @josepedrofotografias </span>
                    </a>
                </div>
            </div>
        </div>
    );
}