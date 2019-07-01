//
//  ViewController.swift
//  PizzaHistory
//
//  Created by Steven Lipton on 6/23/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    let pizzaHistory = PizzaHistoryModel()
    //MARK:- Actions
    
    @IBAction func button(_ sender: UIButton) {
        let title = sender.titleLabel?.text ?? "PizzaDefault"
        imageView.image = UIImage(named: title)
        titleLabel.text = title
        textView.text = pizzaHistory.history[title]
    }
    //MARK:- Life Cycle#
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view.
    }


}

