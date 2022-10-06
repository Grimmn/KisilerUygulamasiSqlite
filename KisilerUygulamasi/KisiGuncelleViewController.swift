//
//  KisiGuncelleViewController.swift
//  KisilerUygulamasi
//
//  Created by Kasım Adalan on 29.07.2019.
//  Copyright © 2019 info. All rights reserved.
//

import UIKit

class KisiGuncelleViewController: UIViewController {
    @IBOutlet weak var kisiAdTextfield: UITextField!
    
    @IBOutlet weak var kisiTelTextfield: UITextField!
    
    var kisi:Kisiler?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            kisiAdTextfield.text = k.kisi_ad
            kisiTelTextfield.text = k.kisi_tel
        }
    }

    @IBAction func guncelle(_ sender: Any) {
        if let k = kisi,let ad = kisiAdTextfield.text,let tel = kisiTelTextfield.text {
            
            
            Kisilerdao().kisiGuncelle(kisi_id: k.kisi_id!, kisi_ad: ad, kisi_tel: tel)
            
            
        }
        navigationController?.popToRootViewController(animated: true)
    }
}
