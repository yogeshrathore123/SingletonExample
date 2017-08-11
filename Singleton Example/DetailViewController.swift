//
//  DetailViewController.swift
//  Singleton Example
//
//  Created by Yogesh Rathore on 11/08/17.
//  Copyright © 2017 Sybrant Technologies. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var companyLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var websiteLbl: UILabel!
    
    var nameStr = String()
    var emailStr = String()
    var phoneStr = String()
    var companyStr = String()
    var addressStr = String()
    var websiteStr = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Detail \(nameStr)")
        
        nameLbl.text = nameStr
        emailLbl.text = emailStr
        phoneLbl.text = phoneStr
        companyLbl.text = companyStr
        addressLbl.text = addressStr
        websiteLbl.text = websiteStr
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
