//
//  ViewController.swift
//  Unwind with Swift
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToViewController(sender: UIStoryboardSegue) {
        if (sender.identifier != nil) {
            if sender.identifier == "colorSelected" {
                
                let colorViewController = sender.sourceViewController as! ColorTableViewController
                
                self.view.backgroundColor = colorViewController.selectedColor;
            }
        }
    }
}

