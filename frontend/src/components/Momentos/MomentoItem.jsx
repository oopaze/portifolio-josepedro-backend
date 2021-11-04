export default function MomentoItem(props) {
    return (
        <div className={"momentoItem grid" + props.type}>
            {props.images.map((src, index) => {
                return (
                    <figure className={`image${index + 1}`}>
                        <img src={src} alt="momento imagem"/>
                    </figure>
                );
            })}
        </div>
    );
}