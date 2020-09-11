//
//  ViewControllerDestino.swift
//  ejemploProtocolos
//
//  Created by Salvador Lopez on 10/09/20.
//  Copyright © 2020 Salvador Lopez. All rights reserved.
//

import UIKit

//Crear protocolo
protocol btnProtocol {
  func sendData(str: String)
}

class ViewControllerDestino: UIViewController {
  
  //Declararlo
  var delegateBtnProcol: btnProtocol!

  @IBAction func btnRed(_ sender: Any) {
    //Enviar informacion
    delegateBtnProcol.sendData(str: "Red")
    //Hacer el regreso desde aqui (ViewControllerDestino)
    self.dismiss(animated: true, completion: nil)
  }
  
  @IBAction func btnBlue(_ sender: Any) {
    //Enviar informacion
    delegateBtnProcol.sendData(str: "Blue")
    //Hacer el regreso desde aqui (ViewControllerDestino)
    self.dismiss(animated: true, completion: nil)
  }
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
