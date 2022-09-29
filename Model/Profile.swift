//
//  Profile.swift
//  InstagramPrueba
//
//  Created by Gimabelle Garcia vasquez on 26/9/22.
//

import Foundation


struct Profile {
    
    let img : String
    let perfil: String
    let img_Pro : String
    let lName: String
    let lNumero: Int
    let lPublicaciones: String
    let lNuSegui: Int
    let lSeguidores: String
    let lNuSeguidos: Int
    let lSeguidos: String
    let img_Colle : String
    let img_Perfil: String
    var favH : Bool
    
    init(img_: String, perfil_: String, img_Pro_: String, lName_: String, lNumero_: Int, lPublicaciones_: String, lNuSegui_: Int, lSeguidores_: String, lNuSeguidos_: Int, lSeguidos_: String, img_Colle_: String, img_Perfil_: String, favH_: Bool) {
        
        self.img = img_
        self.perfil = perfil_
        self.img_Pro = img_Pro_
        self.lName = lName_
        self.lNumero = lNumero_
        self.lPublicaciones = lPublicaciones_
        self.lNuSegui = lNuSegui_
        self.lSeguidores = lSeguidores_
        self.lNuSeguidos = lNuSeguidos_
        self.lSeguidos = lSeguidos_
        self.img_Colle = img_Colle_
        self.img_Perfil = img_Perfil_
        self.favH = favH_
    }
  
}
