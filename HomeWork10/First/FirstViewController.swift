//
//  FirstViewController.swift
//  HomeWork10
//
//  Created by Алексей Полин on 23.09.2021.
//

import UIKit

class FirstViewController: UIViewController {
    
    struct Things{
        let images: UIImage!
        let oldPrice: String
        let newPrice: String
        let name: String
        let discountNumber: String
    }
    
    let things = [
        Things(images: UIImage(named: "1"), oldPrice: "5345", newPrice: "2523", name: "name 1", discountNumber: "10"),
        Things(images: UIImage(named: "2"), oldPrice: "643643", newPrice: "244", name: "name 2", discountNumber: "20"),
        Things(images: UIImage(named: "3"), oldPrice: "3635", newPrice: "5745", name: "name 3", discountNumber: "30"),
        Things(images: UIImage(named: "4"), oldPrice: "1111", newPrice: "3654", name: "name 4", discountNumber: "40"),
        Things(images: UIImage(named: "5"), oldPrice: "458578", newPrice: "656", name: "name 5", discountNumber: "50"),
        Things(images: UIImage(named: "6"), oldPrice: "346634", newPrice: "588", name: "name 6", discountNumber: "60"),
        Things(images: UIImage(named: "7"), oldPrice: "4884", newPrice: "346", name: "name 7", discountNumber: "70"),
        Things(images: UIImage(named: "8"), oldPrice: "32456", newPrice: "456", name: "name 8", discountNumber: "80")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension FirstViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return things.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! FirstCollectionViewCell
        
        cell.pictureI.image = things[indexPath.row].images
        cell.oldPriceL.text = things[indexPath.row].oldPrice
        cell.newPriceL.text = things[indexPath.row].newPrice
        cell.nameL.text = things[indexPath.row].name
        cell.discountNumberL.text = things[indexPath.row].discountNumber
        
        return cell
    }
    

}
