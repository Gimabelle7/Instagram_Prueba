//
//  ProfileVM.swift
//  InstagramPrueba
//
//  Created by Gimabelle Garcia vasquez on 26/9/22.
//

import Foundation

class ProfileVM {
    
    static func listProfile() -> [Profile] {
         
        var profile = [Profile] ()
        
        profile.append(Profile(img_: "Gima", perfil_: "Gimabelle Garcia", img_Pro_: "Descrip", lName_: "Gimabelle Garcia", lNumero_: 10, lPublicaciones_: "Publicaciones", lNuSegui_: 130, lSeguidores_: "Seguidores", lNuSeguidos_: 820, lSeguidos_: "Seguidos", img_Colle_: "Lulu", img_Perfil_: "Gima", favH_: false))
        
        
        profile.append(Profile(img_: "Kevin", perfil_: "Kevin Rocafuerte", img_Pro_: "Viaje", lName_: "Kevin Rocafuerte", lNumero_: 8, lPublicaciones_: "Publicaciones", lNuSegui_: 180, lSeguidores_: "Seguidores", lNuSeguidos_: 420, lSeguidos_: "Seguidos", img_Colle_: "Juramento", img_Perfil_: "Kevin", favH_: false))
        
        profile.append(Profile(img_: "Juramento", perfil_: " Justin rocafuerte", img_Pro_: "Juramento", lName_: "Justin Rocafuerte", lNumero_: 9, lPublicaciones_: "Publicaciones", lNuSegui_: 16, lSeguidores_: "Seguidores", lNuSeguidos_: 320, lSeguidos_: "Seguidos", img_Colle_: "Juramento", img_Perfil_: "Juramento", favH_: false))
        
        profile.append(Profile(img_: "Niall", perfil_: "Niall Pesantes", img_Pro_: "Niall", lName_: "Niall Pesantes", lNumero_: 7, lPublicaciones_: "Publicaciones", lNuSegui_: 10, lSeguidores_: "Seguidores", lNuSeguidos_: 520, lSeguidos_: "Seguidos", img_Colle_: "Juramento", img_Perfil_: "Niall", favH_: false))
        
        profile.append(Profile(img_: "Lulu", perfil_: "Lulu Garcia", img_Pro_: "Lulu", lName_: "Lulu Garcia", lNumero_: 6, lPublicaciones_: "Publicaciones", lNuSegui_: 0, lSeguidores_: "Seguidores", lNuSeguidos_: 20, lSeguidos_: "Seguidos", img_Colle_: "Lulu", img_Perfil_: "Lulu", favH_: false))
        
        return profile
    }
}
