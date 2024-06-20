//
//  ViewController.swift
//  CD-StackViews
//
//  Created by Giovanni Rivera on 10/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let imageCount = 6
    var current = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        showImage(index: 0)
    }

    func showImage(index:Int) {
        label.text = "Image \(index)"
        imageView.image = UIImage(named: "image\(index)")
    }
    
    @IBAction func onPreviousButtonPressed(_ sender: Any) {
        if current == 0 {
            current = imageCount - 1
        } else {
            current -= 1
        }
        
        showImage(index: current)
    }
    
    @IBAction func onResetButtonPressed(_ sender: Any) {
        showImage(index: 0)
        current = 0
    }
    
    @IBAction func onNextButtonPressed(_ sender: Any) {
        current = (current + 1) % imageCount
        showImage(index: current)
    }
    
}

