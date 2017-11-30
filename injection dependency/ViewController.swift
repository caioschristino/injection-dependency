//
//  ViewController.swift
//  injection dependency
//
//  Created by Caio Sanchez Christino on 28/11/17.
//  Copyright © 2017 Caio Sanchez Christino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Injectable {
    var data: [[String]]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Quando este método é ativado, o view controller de destino e todos os seus filhos já foram instanciados,
        // apesar de nada ainda ser exibido. Podemos tirar vantagem disto para injetar as dependências. A vantagem de
        // usar este método é que nào importa como o segue foi disparado. Este método sempre é chamado antes da próxima
        // cena ser apresentada ao usuário.
        let injector = Injector<Injectable, [[String]]>(callback: {(controller, data) in
            controller.data = data
        })
        injector.inject(into: segue.destination, data: data)
    }
}

