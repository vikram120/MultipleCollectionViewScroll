//
//  ViewController.swift
//  MultipleCollectionViewScroll
//
//  Created by Vikram Kunwar on 07/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var collecton1: UICollectionView!
    
    @IBOutlet weak var collecton2: UICollectionView!
    
    @IBOutlet weak var collecton3: UICollectionView!
    

    var coll1Item = ["TODAY","YESTERDAY","WEEK","MONTH","LAST MONTH","YEAR"]
    
    var coll2Item = ["TODAY","YESTERDAY","WEEK","MONTH","LAST MONTH","YEAR"]
    
    var coll3Item = ["TODAY","YESTERDAY","WEEK","MONTH","LAST MONTH","YEAR"]



    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
       
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard scrollView == collecton1 || scrollView == collecton2 || scrollView == collecton3 else {
            return
        }
        
        let xOffset = scrollView.contentOffset.x
        
        collecton1.contentOffset.x = xOffset
        collecton2.contentOffset.x = xOffset
        collecton3.contentOffset.x = xOffset
    }



}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collecton1{
            return coll1Item.count
        }else if collectionView == self.collecton2{
            return coll2Item.count
        }else if collectionView == self.collecton3{
            return coll3Item.count
        }
        
        return 0

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collecton1{
            let cell1 = collecton1.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! MyCollectionCell1
            cell1.label.text = coll1Item[indexPath.row]
            return cell1
        }
        else if collectionView == self.collecton2{
            let cell2 = collecton2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! MyCollectionCell2
            cell2.label2.text = coll2Item[indexPath.row]
            return cell2
            
        }
        else if collectionView == self.collecton3{
            let cell3 = collecton3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! MyCollectionCell3
            cell3.label3.text = coll3Item[indexPath.row]
            return cell3
            
        }
        return UICollectionViewCell()
    }
}

