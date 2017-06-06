//
//  ViewController.swift
//  Carta d'identita
//
//  Created by Francesco Stabile on 23/05/17.
//  Copyright © 2017 Francesco Stabile. All rights reserved.
//

import UIKit
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var testo: UITextField!
    @IBOutlet weak var saluto: UITextView!
    var a = ""
    var b = ""
    var istruttori: [Int : String] = [1: "pasquale", 2: "luca", 3:"lelio", 4:"giuseppe"]
    var trovato = false
    @IBAction func ilSaluto(_ sender: UIButton){
    a = String(testo.text!)!
    b = a.lowercased().trimmingCharacters(in: CharacterSet.whitespaces)
        for i in 1...istruttori.count{
            if(b==istruttori[i]){
                trovato = true
            }
        }
            if (trovato == true){
                saluto.text = "Ciao \(b.capitalized) sei un istruttore fantastico"
                trovato = false
            }
            else{
                saluto.text = "Ciao \(b.capitalized) ti auguro una buona giornata all Ios Foundation Program"
            }
        }
    @IBAction func togli(_ sender: UITapGestureRecognizer) {
        testo.resignFirstResponder()
    }
}
