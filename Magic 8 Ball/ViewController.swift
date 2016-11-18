//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Alexander Nathanail on 14/11/2016.
//  Copyright © 2016 Alexander Nathanail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ballArray : Array = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber : Int = 0
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }

}

