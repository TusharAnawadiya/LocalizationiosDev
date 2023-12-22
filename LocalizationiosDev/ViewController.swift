//
//  ViewController.swift
//  LocalizationiosDev
//
//  Created by Arti on 11/10/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var seg: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
  
    
    // Segment Controller -----------------
    @IBAction func selectAtion(_ sender: Any) {
        if seg.selectedSegmentIndex == 0 {
            var path = Bundle.main.path(forResource:"en", ofType: "lproj")
            var bundle = Bundle(path: path!)
            label1.text = NSLocalizedString("label1Key",bundle: bundle!, comment: "")
            label2.text = NSLocalizedString("label2Key",bundle: bundle!, comment: "")
        }
        else {
            var path = Bundle.main.path(forResource:"es", ofType: "lproj")
            var bundle = Bundle(path: path!)
            label1.text = NSLocalizedString("label1Key",bundle: bundle!, comment: "")
            label2.text = NSLocalizedString("label2Key",bundle: bundle!, comment: "")
        }
    }
    
    
    // Select Action Button ------------------- 
    @IBAction func selectAction(_ sender: Any) {
                let alert:UIAlertController = UIAlertController(title:"Select language", message: "", preferredStyle: UIAlertController.Style.actionSheet)
        
                let En:UIAlertAction = UIAlertAction(title: "English", style: .default, handler: {_ in
                   
                        var path = Bundle.main.path(forResource: "en", ofType: "lproj")
                        var bundle = Bundle(path: path!)
                        self.label1.text = NSLocalizedString("label1Key", bundle: bundle!, comment: "")
                        self.label2.text = NSLocalizedString("label2Key",bundle: bundle!, comment: "")
        
                   
                    })
                
                let Spanish:UIAlertAction = UIAlertAction(title: "Spanish", style: .default){_ in
                    var path = Bundle.main.path(forResource: "es", ofType: "lproj")
                    var bundle = Bundle(path: path!)
                    self.label1.text = NSLocalizedString("label1Key", bundle: bundle!, comment: "")
                    self.label2.text = NSLocalizedString("label2Key",bundle: bundle!, comment: "")
                }
                alert.addAction(En)
                alert.addAction(Spanish)
                self.present(alert, animated: true)
    }
    
}

