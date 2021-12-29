export default function MomentoItem(props) {

    return (
        <div className="momentItemContainer">
            <figure>
                <img src={props.capaURL} alt="foto capa do momento" />
                <span> {props.type} </span>
            </figure>
        </div>
    );
}