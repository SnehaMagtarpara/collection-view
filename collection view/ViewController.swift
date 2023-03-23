//
//  ViewController.swift
//  collection view
//
//  Created by R93 on 02/01/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var cv: UICollectionView!
    @IBOutlet weak var collectionview: UICollectionView!
    
    var array = ["Mens","Women","Kids","Electric","Home","Kitchen","Jewellery","Beauty","Footwear", "Healthcare"]
    var image = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10"),]
    
    var price: [String] = ["200","500","145","300","150","350","1000","200","400","100","200","500","145","300","150","350","100","200","400","300"]
    var offer = ["101 with 2 special offer","108 with 2 special offer","110 with 2 special offer","200 with 2 special offer","201 with 2 special offer","301 with 2 special offer","151 with 2 special offer","101 with 2 special offer","108 with 2 special offer","110 with 2 special offer","200 with 2 special offer","201 with 2 special offer","301 with 2 special offer","151 with 2 special offer","201 with 2 special offer","150 with 2 special offer","101 with 2 special offer","321 with 2 special offer","301 with 2 special offer","251 with 2 special offer"]
    
    
    var img = [UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13"),UIImage(named: "14"),UIImage(named: "15"),UIImage(named: "16"),UIImage(named: "17"),UIImage(named: "18"),UIImage(named: "19"),UIImage(named: "20"),UIImage(named: "21"),UIImage(named: "22"),UIImage(named: "23"),UIImage(named: "24"),UIImage(named: "25"),UIImage(named: "26"),UIImage(named: "27"),UIImage(named: "28"),UIImage(named: "29"),UIImage(named: "30"),]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionview{
        return array.count
        }
        else if collectionView == self.cv
        {
            return image.count
         //   return price.count
        }
        else
        {
            return img.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionview{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
            cell.menuLabel.text =  array[indexPath.row]
            return cell
        }
        else if collectionView == self.cv{
            let cell2 = cv.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell
            
            cell2.image.image = image[indexPath.row]
            //cell2.priceLabel.text = price[indexPath.row]
            return cell2
        }
        else
        {
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell2
            cell3.img.image = img[indexPath.row]
            cell3.priceLabel.text = price[indexPath.row]
            cell3.offerlabel.text = offer[indexPath.row]
            cell3.layer.borderColor = UIColor.black.cgColor
            cell3.layer.borderWidth = 1
           
            return cell3
        }
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.collectionview
        {
            return CGSize(width: 100, height: 30)
        }
        else if collectionView == self.cv
        {
            return CGSize(width: 136, height: 100)
        }
        else
        {
            return CGSize(width: 185
                          , height: 200)
        }
        
       
    }
    }
    
    




