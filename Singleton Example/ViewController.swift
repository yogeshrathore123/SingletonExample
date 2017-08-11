//
//  ViewController.swift
//  Singleton Example
//
//  Created by Yogesh Rathore on 10/08/17.
//  Copyright © 2017 Sybrant Technologies. All rights reserved.
//

import UIKit
import SwiftyJSON


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TableView: UITableView!
    var usersArray:[User] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


        GetUser()
    
        
    }
    
    func GetUser() {
        GlobalAPI.sharedObj.GetRequest(){(userJson) -> Void in
     
            if userJson != JSON.null{
                print("My UserJson \(userJson)")
                
                for i in 0..<userJson.count {
                    
                   let singleUser = User(userJson: userJson[i])
                    self.usersArray.append(singleUser)
                   
                }
                self.TableView.reloadData()
                
            }
            
           
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UserTableViewCell
        let myuser = self.usersArray[indexPath.row]
        cell.nameLbl.text = myuser.name
        cell.emailLbl.text = myuser.email
        cell.phoneLbl.text = myuser.phone
        cell.companyNmaeLbl.text = myuser.company
        cell.addressLbl.text = myuser.address
        cell.websiteLbl.text = myuser.website
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let nextController = self.storyboard!.instantiateViewController(withIdentifier: "DetailViewControllerID") as? DetailViewController {
           // self.present(nextController, animated: true, completion: nil)
            let myuser = self.usersArray[indexPath.row]
            nextController.nameStr = myuser.name
            nextController.emailStr = myuser.email
            nextController.phoneStr = myuser.phone
            nextController.addressStr = myuser.address
            nextController.companyStr = myuser.company
            nextController.websiteStr = myuser.website
            self.navigationController?.pushViewController(nextController, animated: true)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

