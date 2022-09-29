//
//  DescripcionVC.swift
//  InstagramPrueba
//
//  Created by Gimabelle Garcia vasquez on 27/9/22.
//

import UIKit

class DescripcionVC: UIViewController {

    @IBOutlet weak var img_Perfil: UIImageView!
    @IBOutlet weak var lbl_Usuario: UILabel!
    
    @IBOutlet weak var lbl_NumPubli: UILabel!
    
    @IBOutlet weak var lbl_Publicaciones: UILabel!
    @IBOutlet weak var lbl_NuSegui: UILabel!
    
    @IBOutlet weak var lbl_Seguidores: UILabel!
    
    @IBOutlet weak var lbl_NumSeguidos: UILabel!
    @IBOutlet weak var lbl_Seguidos: UILabel!
    
    
    var profile : Profile?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let value = profile{
            lbl_Usuario.text = value.lName
            lbl_NumPubli.text = "\(value.lNumero)"
            lbl_Publicaciones.text = value.lPublicaciones
            lbl_NuSegui.text = "\(value.lNuSegui)"
            lbl_Seguidores.text = value.lSeguidores
            lbl_NumSeguidos.text = "\(value.lNuSeguidos)"
            lbl_Seguidos.text = value.lSeguidos
            
        }
            
            
        }
        
        
        
        
        
    }
    

  

