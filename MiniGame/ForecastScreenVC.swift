//
//  ForecastScreenVC.swift
//  MiniGame
//
//  Created by Eren Ates on 28.07.2023.
//

import UIKit

class ForecastScreenVC: UIViewController {

    @IBOutlet weak var labelAvailable: UILabel!
    
    @IBOutlet weak var textFieldEntry: UITextField!
    
    var age = 38
    var availableChance = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAvailableChances()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let result = sender as? Bool, let toGoVC = segue.destination as? ResultScreenVC {
            toGoVC.result = result
        }
    }
    
    @IBAction func forecast(_ sender: Any) {
        availableChance -= 1

        if let data = textFieldEntry.text, let guess = Int(data) {
            if availableChance > 0 {
                if guess == age {
                    performSegue(withIdentifier: "guessToResult", sender: true)
                }
                updateAvailableChances()
            } else {
                performSegue(withIdentifier: "guessToResult", sender: false)
            }
            textFieldEntry.text = ""
        }
    }
    
    private func updateAvailableChances() {
        labelAvailable.text = "Kalan Hak : \(availableChance)"
    }
    
}
