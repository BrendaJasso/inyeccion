//
//  ViewController.swift
//  inyeccion
//
//  Created by Macbook on 2/20/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        let logged = UserDefaults.standard.bool(forKey:"logged");
        if(!logged)
        {
            self.performSegue(withIdentifier: "loginView", sender: self)
        }
    }
    @IBAction func logOut(_ sender: Any)
     {
        UserDefaults.standard.set(false, forKey: "logged_")
        UserDefaults.standard.synchronize()
        self.performSegue(withIdentifier: "loginView", sender: self)
    }
        }



