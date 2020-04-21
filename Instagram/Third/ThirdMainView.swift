//
//  ThirdMainView.swift
//  Instagram
//
//  Created by ASW-研修２ on 2020/04/21.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
protocol ThirdMainViewDelegate: NSObjectProtocol{
}
extension ThirdMainViewDelegate {
}
// MARK: - Property
class ThirdMainView: BaseView {
    weak var delegate: ThirdMainViewDelegate? = nil
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    
    @IBOutlet weak var touchedButton: UIButton!
    
}
// MARK: - Life cycle
extension ThirdMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setDelegate()
        setLayout()
        collectionViewFlowLayout.estimatedItemSize = CGSize (width: collectionView.frame.width, height: collectionView.frame.height)
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "ThirdMainCollectionViewCell")
    }
}
// MARK: - Protocol
extension ThirdMainView:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ThirdMainCollectionViewCell", for: indexPath) as?
            ThirdMainCollectionViewCell else {return UICollectionViewCell() }
        return cell
    }
    
}

// MARK: - method
extension ThirdMainView {
    func setDelegate() {
        collectionView.dataSource = self
    }
    func setLayout() {
        touchedButton.layer.borderWidth = 1
        touchedButton.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        touchedButton.layer.cornerRadius = 10
    }
}
