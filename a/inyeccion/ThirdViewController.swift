//
//  ThirdViewController.swift
//  inyeccion
//
//  Created by Macbook on 2/20/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {



    @IBOutlet weak var nombrePersona: UITextField!
    @IBOutlet weak var contrasenaPersona: UITextField!
    @IBOutlet weak var confirmarContrasena: UITextField!
    
    @IBOutlet weak var etiqueta: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func registrarButton(_ sender: Any) {
        
        let persona = nombrePersona.text;
        let contrasena = contrasenaPersona.text;
        let confirmar = confirmarContrasena.text;
        
        if((persona?.isEmpty)! || (contrasena?.isEmpty)! || (confirmar?.isEmpty)!)
        {
            etiqueta.text = "Debes llenar todos los campos"
            return;
        }
        if(contrasena != confirmar)
        {
            etiqueta.text = "Las contraseñas no coinciden"
            return;
        }
        
        UserDefaults.standard.set(persona, forKey:"usuario")
        UserDefaults.standard.set(contrasena, forKey:"contrasena")
        UserDefaults.standard.synchronize()
        
        self.dismiss( animated: true, completion: nil)
        
    }
    
    
    @IBAction func Cancel(_ sender: Any) {
        self.dismiss( animated: true, completion: nil)
    }
    
    
    
    
}
