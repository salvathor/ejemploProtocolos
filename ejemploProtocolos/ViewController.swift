//
//  ViewController.swift
//  ejemploProtocolos
//
//  Created by Salvador Lopez on 10/09/20.
//  Copyright © 2020 Salvador Lopez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBAction func showDestino(_ sender: Any) {
    var storyBoard = UIStoryboard(name: "Main", bundle: .main)
    var vcd = storyBoard.instantiateViewController(identifier: "vcd") as! ViewControllerDestino
    // Asignar el ViewController al protocolo
    // El ViewController es el encargado de realizar el protocolo
    vcd.delegateBtnProcol = self
    self.present(vcd, animated: true, completion: nil)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

// Implementarlo (Recibir valores y hacer algo con ellos)
extension ViewController: btnProtocol{
  
  func sendData(str: String) {
    if str == "Red"{
      print("Rojo")
      self.view.backgroundColor = UIColor.red
    }else{
      print("Azul")
      self.view.backgroundColor = UIColor.blue
    }
  }
  
}

