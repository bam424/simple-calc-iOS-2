//
//  HistoryViewController.swift
//  SimpleCalc
//
//  Created by iGuest on 4/24/17.
//  Copyright © 2017 iGuest. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    var equation : String!
    var equationHistory : [String] = []
    
    
    @IBOutlet weak var equationHistoryView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var spacer: CGFloat = 50
        for equation in equationHistory {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 21 + spacer))
             label.text = equation
             self.view.addSubview(label)
             spacer = spacer + 5
            label.text! = equation
            label.backgroundColor = UIColor(red: 0/255, green: 159/255, blue: 184/255, alpha: 1.0)
            equationHistoryView.addSubview(label)
        }
        //self.equationHistoryView.text! = self.equation
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let history = segue.destination as! ViewController
        history.equationHistory = equationHistory
        //history.equation = equation
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
