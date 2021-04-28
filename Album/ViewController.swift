//
//  ViewController.swift
//  Album
//
//  Created by jylee-mac on 2021/04/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getLoadImage()
    }
    
    //이미지 가져오기
    private func getLoadImage(){
        let url = NSURL.init(string: "https://avatars.githubusercontent.com/u/9835973?v=4")
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url! as URL) {
                if let image = UIImage.init(data: data) {
                           DispatchQueue.main.async {
                            self?.imageView.image = image
                           }
                       }
                   }
               }
    }
    
    //버튼 누른다음 값변경하기
    @IBAction func refresh(_ sender: Any) {
        //팝업
        let alert = UIAlertController(title: "Hello", message: "도전!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: { [weak self] in
            self?.label1.text = "5000"
        })
        //팝업
    }
    
}

