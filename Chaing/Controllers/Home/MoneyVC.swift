//
//  MoneyVC.swift
//  Chaing
//
//  Created by AppleMac on 02/08/20.
//  Copyright © 2020 AppleMac. All rights reserved.
//

import UIKit

class MoneyVC: UIViewController {
    
    @IBOutlet weak var backImg : UIImageView!
    @IBOutlet weak var backBtn : UIButton!
    @IBOutlet weak var titleLbl : UILabel!
    @IBOutlet weak var profileImg : UIImageView!
    @IBOutlet weak var addCardBtn : UIButton!
    @IBOutlet weak var addCardLbl : UILabel!
    @IBOutlet weak var cardColection : UICollectionView!
    @IBOutlet weak var BlntitleLbl : UILabel!
    @IBOutlet weak var myCardtitleLbl : UILabel!
    @IBOutlet weak var lastMonthBtn : UIButton!
    @IBOutlet weak var lastMonthLbl : UILabel!
    @IBOutlet weak var lastMonthImg : UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.setupCollectionView()
    }
    
    func setupView(){
        self.backImg.setImage(.back, .yes, .primaryColor)
        self.lastMonthImg.setImage(.downarrow, .yes, .primaryColor)
        self.titleLbl.setText("Cash Card", 20, fontStyle: .bold, isTitle: .yes, textColor: .primaryColor)
    }

}

extension MoneyVC : UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID.CardViewCell.rawValue, for: indexPath) as! CardViewCell
         
            return cell
        }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        cell.alpha = 0
        cell.layer.transform = CATransform3DMakeScale(0.5, 0.5, 0.5)
        UIView.animate(withDuration: 0.5) {
            cell.alpha = 1
            cell.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
        }
    }
    
   
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID.CardViewCell.rawValue, for: indexPath) as! CardViewCell
        return CGSize(width: self.cardColection.frame.width-50, height: 200)
       
        
    }
    
    func setupCollectionView(){
        self.cardColection.delegate = self
        self.cardColection.dataSource = self
        self.cardColection.registerCell(withId: cellID.CardViewCell)
    }
    
    
}
