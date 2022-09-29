//
//  ProfileViewCell.swift
//  InstagramPrueba
//
//  Created by Gimabelle Garcia vasquez on 26/9/22.
//

import UIKit

protocol ClickHeartDelegate: class {
    func getClick(for value: Profile, index:Int)
}



class ProfileViewCell: UITableViewCell {
    @IBOutlet weak var view_1: UIView!
    @IBOutlet weak var profile_Gima: UIImageView!
    @IBOutlet weak var label_Usuario: UILabel!
    @IBOutlet weak var view_2: UIView!
    @IBOutlet weak var img_Descrip: UIImageView!
    @IBOutlet weak var img_Click: UIImageView!
    @IBOutlet weak var btn_Fav: UIButton!
    
    var delegate : ClickHeartDelegate?
    var itemProfile: Profile?
    var indexCell = 0
    
    static let identifier = "iDProfileViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "ProfileViewCell", bundle: nil)
    }
    
    public func configureProfileViewCell(with profile: Profile, index: Int ){
        itemProfile = profile
        indexCell = index
        
        self.label_Usuario.text = profile.perfil
        
        self.profile_Gima.image = UIImage(named: profile.img)
        
        self.img_Click.image = profile.favH ? UIImage(named: "on") : UIImage(named: "off")
        
        self.img_Descrip.image = UIImage(named: profile.img_Pro)
        
        
        
    }
        
    @IBAction func click_Fav(_ sender: UIButton) {
        delegate?.getClick(for: itemProfile!, index: indexCell)

    }

}
