//
//  ViewController.swift
//  CustomCollectionViewDemo
//
//  Created by Shaikat on 14/4/21.
//  Copyright © 2021 Shayla.18. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    
    @IBOutlet weak var shaylaCollectionView: UICollectionView!
    
    var array: [String] = ["a", "b", "c", "d", "e", "f"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let nib = UINib(nibName: "CustomCell", bundle: nil)
        shaylaCollectionView.register(nib, forCellWithReuseIdentifier: "Cell")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CustomCell {
            cell.titleLabel.text = array[indexPath.row]
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
}

