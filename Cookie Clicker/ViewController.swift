//
//  ViewController.swift
//  Cookie Clicker
//
//  Created by Melinda Yao on 5/9/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clickOutput.text = "0"
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{
            
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
            
        }
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBOutlet weak var clickOutput: UILabel!
    
    var click = 0
    
    
    @IBAction func clickMeButton(_ sender: UIButton) {
        
        click = click + 1
        clickOutput.text = "\(click)"
        
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        click = 0
        clickOutput.text = "\(click)"
        view.backgroundColor = UIColor.white
        
    }
    
}
    


