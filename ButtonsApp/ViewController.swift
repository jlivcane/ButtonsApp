//
//  ViewController.swift
//  ButtonsApp
//
//  Created by jekaterina.livcane on 23/08/2020.
//  Copyright © 2020 jekaterina.livcane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftButtonUp: UIButton!
    @IBOutlet weak var rightButtonUp: UIButton!
    @IBOutlet weak var leftButtonDown: UIButton!
    
    @IBOutlet weak var rightButtonDown: UIButton!
    
    @IBOutlet var styleOutletCollection: [UIButton]!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleUI()
    }
    func styleUI(){
        mainImageView.layer.cornerRadius = 10
        mainImageView.layer.borderWidth = 2
        mainImageView.layer.borderColor = UIColor.orange.cgColor
        
        myLabel.layer.cornerRadius = 10
        myLabel.layer.borderWidth = 2
        myLabel.layer.borderColor = UIColor.orange.cgColor
        
        styleOutletCollection.forEach {button in
            button.layer.borderWidth = 2
             button.layer.borderColor = UIColor.black.cgColor
        }
    }
    
    func chngeButtonImage(with image: String){
        leftButtonUp.setImage(UIImage(named: "home.png"), for: .normal)
        leftButtonUp.tintColor = .white
        leftButtonUp.imageEdgeInsets = UIEdgeInsets(top: 8, left: 2, bottom: 10, right: 15)
        self.view.backgroundColor = UIColor.black
    }
    func chngeButtonImageOne(with image: String){
        leftButtonDown.setImage(UIImage(named: "heart-131965017458786724_48.png"), for: .normal)
        leftButtonDown.imageEdgeInsets = UIEdgeInsets(top: 8, left: 2, bottom: 10, right: 15)
        self.view.backgroundColor = UIColor.orange
    }
    func chngeButtonImageTwo(with image: String){
        rightButtonUp.setImage(UIImage(named: "star.png"), for: .normal)
        rightButtonUp.imageEdgeInsets = UIEdgeInsets(top: 8, left: 2, bottom: 10, right: 15)
        self.view.backgroundColor = UIColor.green
    }
    func chngeButtonImageThree(with image: String){
        rightButtonDown.setImage(UIImage(named: "note-48.png"), for: .normal)
        rightButtonDown.imageEdgeInsets = UIEdgeInsets(top: 8, left: 2, bottom: 10, right: 15)
        self.view.backgroundColor = UIColor.systemPink
    }
    
    func changeLabelText(){
        myLabel.highlightedTextColor = .cyan
        myLabel.backgroundColor = .blue
    
    }
    
    func changeImageView(){
        mainImageView.tintColor = .lightGray
        
    }
    
    @IBAction func touchDownTap(_ sender: Any) {
        print("touchDownTap")
        chngeButtonImage(with: "home.png")
        changeImageView()
    }
    
    @IBAction func touchUpOutside(_ sender: Any) {
        print("touchUpOutside")
        chngeButtonImageOne(with: "heart-131965017458786724_48.png")
        changeLabelText()
    }
    
    @IBAction func touchDownRepeat(_ sender: Any) {
        print("touchDownRepeat")
        chngeButtonImageTwo(with: "star.png")
        }
    
    @IBAction func valueChangedTap(_ sender: Any) {
        print("valueChangedTap")
        chngeButtonImageThree(with: "note-48.png")
    }

}

