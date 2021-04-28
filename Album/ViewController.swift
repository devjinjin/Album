//
//  ViewController.swift
//  Album
//
//  Created by jylee-mac on 2021/04/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TestButton(_ sender: UIButton) {
        
        //팝업
        let alert = UIAlertController(title: "Hello", message: "Wow", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        //팝업
    }
    
}

