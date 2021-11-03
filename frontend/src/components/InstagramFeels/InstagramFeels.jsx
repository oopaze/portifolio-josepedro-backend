import '../InstagramFeels/InstagramFeels.css';

export default function InstagramFeels (props) {
    return (
        <div className="instagramFeelsContent">
            <div className="images">
                {props.instagramImages.map(img => {
                    return <img src={img} alt="imagem do instagram" />
                })}
            </div>
            <div className="overlayer"> 
                <div>
                    <h2> Instagram Feelings</h2>    
                    <span> @josepedrofotografias </span>
                </div>
            </div>
        </div>
    );
}