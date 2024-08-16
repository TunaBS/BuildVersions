//
//  ViewController.swift
//  BuildVersions
//
//  Created by BS00880 on 14/8/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var modeName: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    #if STAGING
        modeName.text = "Staging mode"
        image.image = UIImage(named: "Staging")
    #elseif DEBUG
        modeName.text = "Debug mode"
        image.image = UIImage(named: "Debug")
    #elseif RELEASE
        modeName.text = "Release mode"
        image.image = UIImage(named: "Release")
    #endif

        
    }


    @IBAction func buttonPress(_ sender: Any) {
        if let baseUrlString = Bundle.main.infoDictionary?["BASE_URL"] as? String {
//            baseUrl.text = baseUrlString
            if let url = URL(string: baseUrlString) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                print("Invalid URL string: \(baseUrlString)")
            }
        }
    }
    
    
}

