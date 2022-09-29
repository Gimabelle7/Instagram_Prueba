//
//  HomeVC.swift
//  InstagramPrueba
//
//  Created by Gimabelle Garcia vasquez on 26/9/22.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource, ClickHeartDelegate{
 
    @IBOutlet weak var table: UITableView!

    var profileList : [Profile] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        self.table.delegate = self
        self.table.dataSource = self
        self.table.rowHeight = UITableView.automaticDimension
        self.table.estimatedRowHeight = 800
        
        profileList = ProfileVM.listProfile()
        table.reloadData()
        table.register(ProfileViewCell.nib(), forCellReuseIdentifier: ProfileViewCell.identifier)
    
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileList.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("print select Table View")
        
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DescripcionVC {
            destination.profile = profileList[(table.indexPathForSelectedRow?.row)!]
        }
    }
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indexColl = indexPath.row

        let cell = table.dequeueReusableCell(withIdentifier: ProfileViewCell.identifier, for: indexPath) as! ProfileViewCell
        
        
      let profile : Profile = profileList[indexColl]
        
        cell.configureProfileViewCell(with: profile, index: indexColl)
 
        //
        cell.delegate = self
        return cell
    }
    
    func getClick(for value: Profile, index: Int) {
        
        print("nombre: \(value.perfil) posicion:\(index) statusfav: \(value.favH)")

        if value.favH{
            profileList[index].favH = false

        }else{
            profileList[index].favH = true
        }
        table.reloadData()
    }


}
