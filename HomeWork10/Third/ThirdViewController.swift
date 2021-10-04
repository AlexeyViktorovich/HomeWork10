//
//  ThirdViewController.swift
//  HomeWork10
//
//  Created by Алексей Полин on 02.10.2021.
//

import UIKit

class ThirdViewController: UIViewController {
    let imageArr = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3")]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

extension ThirdViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ThirdCollectionViewCell
        
        cell.ImageIV.image = imageArr[indexPath.row]
        
        return cell
    }
    
    
}
