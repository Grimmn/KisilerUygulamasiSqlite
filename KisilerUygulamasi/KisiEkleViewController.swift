//
//  KisiEkleViewController.swift
//  KisilerUygulamasi
//
//  Created by Kasım Adalan on 29.07.2019.
//  Copyright © 2019 info. All rights reserved.
//

import UIKit

class KisiEkleViewController: UIViewController {

    @IBOutlet weak var kisiAdTextfield: UITextField!
    @IBOutlet weak var kisiTelTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ekle(_ sender: Any) {
        
        if let ad = kisiAdTextfield.text, let tel = kisiTelTextfield.text {
            
            Kisilerdao().kisiEkle(kisi_ad: ad, kisi_tel: tel)
            
            
        }
        navigationController?.popToRootViewController(animated: true)
    }
    

}
