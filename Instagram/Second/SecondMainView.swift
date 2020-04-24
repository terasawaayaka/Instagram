//
//  SecondMainView.swift
//  Instagram
//
//  Created by ASW-研修２ on 2020/04/21.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
protocol SecondMainViewDelegate: NSObjectProtocol{
}
extension SecondMainViewDelegate {
}
// MARK: - Property
class SecondMainView: BaseView {
    weak var delegate: SecondMainViewDelegate? = nil
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    
    @IBOutlet weak var descriptionLabel: UILabel!
}
// MARK: - Life cycle
extension SecondMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setDelegate()
        collectionViewFlowLayout.estimatedItemSize = CGSize (width: collectionView.frame.width, height: collectionView.frame.height)
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "SecondMainCollectionViewCell")
    }
}
// MARK: - Protocol
extension SecondMainView:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondMainCollectionViewCell", for: indexPath) as?
            SecondMainCollectionViewCell else {return UICollectionViewCell() }
        return cell
    }
    
}

// MARK: - method
extension SecondMainView {
    func setDelegate() {
        collectionView.dataSource = self
    }
}
