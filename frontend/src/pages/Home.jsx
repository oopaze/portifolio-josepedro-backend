import { useEffect, useState } from "react"

import Menu from '../components/Menu/Menu';
import Carrossel from '../components/Carrosel/Carrossel';
import Sobre from '../components/Sobre/Sobre';
import Frase from '../components/Frase/Frase';
import Pacotes from '../components/Pacotes/Pacotes';
import Contato from '../components/Contato/Contato';
import InstagramFeels from '../components/InstagramFeels/InstagramFeels';


export default function Home(props){
    const [loading, setLoading] = useState(true)

    const [imagesCarrossel, setImagesCarrossel] = useState([])
    const [profileImage, setprofileImage] = useState('')
    const [profileResumo, setprofileResumo] = useState('')
    const [fraseImage, setFraseImage] = useState('')
    const [pacotes, setPacotes] = useState([])
    const [contatoImage, setContatoImage] = useState('')
    const [instagramImages, setInstagramImages] = useState([])


    const apiBaseUrl = 'http://localhost:8090'

    useEffect(() => {
        fetch(`${apiBaseUrl}/api/v1`)
            .then(response => response.json())
            .then(data => {
                setImagesCarrossel(data.carrossel)
                setprofileResumo(data.profile_resumo)
                setprofileImage(apiBaseUrl + data.profile_foto)
                setFraseImage(apiBaseUrl + data.frase_img)
                setPacotes(data.pacotes)
                setContatoImage(apiBaseUrl + data.contato_image)
                setInstagramImages(data.instagram_feels)

                // disable loading widget
                setLoading(false)
            })
    }, [])

    return (
        <>  
            <div className="loadingContent" style={{display: loading ? "flex": "none"}}>
                <div class="lds-ring">
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </div>

            <div style={{display: loading ? "none": "initial"}}>
                <Menu />
                
                <div>
                    <Carrossel imagesCarrossel={imagesCarrossel}/>
                    <Sobre profileImage={profileImage} profileResumo={profileResumo}/>
                    <Frase fraseImage={fraseImage}/>
                    <Pacotes pacotes={pacotes}/>
                    <Contato bgImage={contatoImage}/>
                    <InstagramFeels instagramImages={instagramImages}/>
                </div>

                <footer>
                    Orion Tecnologia © Todos os direitos reservados.
                </footer>
            </div>
        </>
    );
}