//
//  ResultScreenVC.swift
//  MiniGame
//
//  Created by Eren Ates on 28.07.2023.
//

import UIKit

class ResultScreenVC: UIViewController {

    
    @IBOutlet weak var imageViewResult: UIImageView!
    
    
    @IBOutlet weak var labelResult: UILabel!
    
    var result:Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Sonuç Ekranı"
       print(result!)
        
        if result! {
            labelResult.text = "Kazandınız"
            imageViewResult.image = UIImage(named: "cronaldohappy")
        }else {
            labelResult.text = "Kaybettin"
            imageViewResult.image = UIImage(named: "cronaldosad")
        }
        
        
    }
    
    @IBAction func playAgain(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    


}
