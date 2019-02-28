//
//  SecondViewController.swift
//  inyeccion
//
//  Created by Macbook on 2/20/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nombrePersona: UITextField!
    @IBOutlet weak var contrasenaPersona: UITextField!
    @IBOutlet weak var etiqueta : UILabel!
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_sender: Any){
        
        let persona = nombrePersona.text;
        
        let contrasena = contrasenaPersona.text;
        
        let personaA =
            UserDefaults.standard.string(forKey: "usuario")
        let contrasenaA =
            UserDefaults.standard.string(forKey: "contrasena")
        
        if(personaA == persona)
        {
            if(contrasenaA == contrasena)
            {
                UserDefaults.standard.set(true, forKey: "logged")
                UserDefaults.standard.synchronize()
                self.dismiss(animated: true, completion: nil)
            }
        }
        
        if(personaA != persona || contrasenaA != contrasena)
        {
            etiqueta.text = "Usuario o contraseña están inconrrectos"
        }
            
        
    
    
    }
    
}
