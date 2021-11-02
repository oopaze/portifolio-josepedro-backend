import { useEffect, useState } from "react"

import Menu from '../components/Menu/Menu';
import Carrossel from '../components/Carrosel/Carrossel';
import Sobre from '../components/Sobre/Sobre';


export default function Home(){
    const [imagesCarrossel, setImagesCarrossel] = useState([])
    const [profileImage, setprofileImage] = useState('')
    const [profileResumo, setprofileResumo] = useState('')

    const apiBaseUrl = 'http://localhost:8000'

    useEffect(() => {
        fetch(`${apiBaseUrl}/api/v1`)
            .then(response => response.json())
            .then(data => {
                setImagesCarrossel(data.carrossel)
                setprofileResumo(data.profile_resumo)
                setprofileImage(apiBaseUrl + data.profile_foto)
            })
    }, [])

    return (
        <>
            <Menu />
            <Carrossel imagesCarrossel={imagesCarrossel}/>
            <Sobre profileImage={profileImage} profileResumo={profileResumo}/>
        </>
    );
}