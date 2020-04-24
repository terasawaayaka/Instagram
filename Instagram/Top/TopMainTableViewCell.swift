//
//  TopMainTableViewCell.swift
//  Instagram
//
//  Created by ASW-研修２ on 2020/04/21.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
protocol TopMainTableViewCellDelegate: NSObjectProtocol{
}
extension TopMainTableViewCellDelegate {
}
// MARK: - Property
class TopMainTableViewCell: BaseTableViewCell {
    weak var delegate: TopMainTableViewCellDelegate? = nil
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
}
// MARK: - Life cycle
extension TopMainTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setDelegate()
        collectionViewFlowLayout.estimatedItemSize = CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "TopMainCollectionViewCell")
    }
}
// MARK: - Protocol
extension TopMainTableViewCell:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopMainCollectionViewCell", for: indexPath) as?
            TopMainCollectionViewCell else {return UICollectionViewCell() }
        return cell
    }
    
}

// MARK: - method
extension TopMainTableViewCell {
    func setDelegate() {
        collectionView.dataSource = self
    }
    func updateCell(postModel: PostModel) {
        descriptionLabel.text = postModel.description
    }
}
