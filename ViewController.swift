//
//  ViewController.swift
//  URL
//
//  Created by Temp on 30/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        

    }


    @IBAction func getPhoto(_ sender: Any) {
        
        let API = "https://picsum.photos/400/400"
        guard let urlAPI = URL(string: API) else {
            fatalError("some error")
        }
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: urlAPI) { (data, response, error) in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: data)
            }
        }
        task.resume()
    }
}






