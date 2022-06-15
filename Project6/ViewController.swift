//
//  ViewController.swift
//  Project6
//
//  Created by Olibo moni on 08/02/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        label1.text = "These"
        label1.backgroundColor = .red
        
        let label2 = UILabel()
        label2.text = "Are"
        label2.backgroundColor = .cyan
        
        let label3 = UILabel()
        label3.text = "Some"
        label3.backgroundColor = .green
        
        let label4 = UILabel()
        label4.text = "Awesome"
        label4.backgroundColor = .blue
        
        let label5 = UILabel()
        label5.text = "Labels"
        label5.backgroundColor = .systemPink
        
        let labels = [label1,label2,label3,label4,label5]
        for label in labels {
            view.addSubview(label)
            label.sizeToFit()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .center
            
            
            
        }
        
        var previous: UILabel?

        for label in [label1, label2, label3, label4, label5] {
            //label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            label.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2 , constant: -20).isActive = true
           // label.heightAnchor.constraint(equalToConstant: 88).isActive = true
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
            
            if let previous = previous{
                
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            } else {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }
            previous = label
        }
        
       
        
//        let viewsDictionary = ["label1":label1, "label2":label2, "label3":label3, "label4":label4, "label5":label5]
//        for label in viewsDictionary.keys {
//            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-(==20)-[\(label)]-(==20)-|", options: [], metrics: nil, views: viewsDictionary))
//        }
//
//        let metrics = ["labelHeight":80, "top":20]
//
//        view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "V:|-[label1(labelHeight@999)]-(top@999)-[label2(label1)]-(top@999)-[label3(label1)]-(top@999)-[label4(label1)]-(top@999)-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))
        
    }

    
    

}

