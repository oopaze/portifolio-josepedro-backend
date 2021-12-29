export default function InstagramImage(props) {
    return (
        <figure className="instagramImage">
            <img src={props.img} alt="imagem do instagram" />
        </figure>
    )
}