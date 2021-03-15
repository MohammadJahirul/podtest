//
//  ViewController.swift
//  CinematicFWAssetTest
//
//  Created by Mohammad Jahir on 3/11/21.
//

import UIKit


class ViewController: UIViewController {
    
    lazy var testImage: UIImageView = {
        let img = UIImageView()
        img.image = ImageProvider.image(named: "home-orange") //getImage() //#imageLiteral(resourceName: "home-orange")
        img.translatesAutoresizingMaskIntoConstraints = false
       // img.addTarget(self, action: #selector(invokedTestImage), for: .touchUpInside)
        return img
    }()
    
//    func getImage() -> UIImage {
//        return UIImage(named:"home-orange", in:Bundle(for: self), compatibleWith:nil)
//        }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        view.addSubview(testImage)
        testImage.widthAnchor.constraint(equalToConstant: 180).isActive = true
        testImage.heightAnchor.constraint(equalToConstant: 180).isActive = true
        testImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        testImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 28).isActive = true
        // Do any additional setup after loading the view.
    }

    @objc func invokedTestImage(){
        
        let manager = Manager()
        let vc = manager.viewController()
        self.present(vc, animated: true, completion: nil)
    }

}


 class ImageProvider {
    // convenient for specific image
     static func picture() -> UIImage {
        if #available(iOS 13.0, *) {
            return UIImage(named: "home-orange", in: Bundle(for: self), with: nil) ?? UIImage()
        } else {
            // Fallback on earlier versions
        }
        return UIImage()
    }

    // for any image located in bundle where this class has built
     static func image(named: String) -> UIImage? {
        return UIImage(named: named, in:Bundle(for: self), compatibleWith:nil)//UIImage(named: named, in: Bundle(for: self), with: nil)
    }
}
