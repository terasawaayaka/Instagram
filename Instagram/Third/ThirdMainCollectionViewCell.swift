//
//  ThirdMainCollectionViewCell.swift
//  Instagram
//
//  Created by ASW-研修２ on 2020/04/21.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
protocol ThirdMainCollectionViewCellDelegate: NSObjectProtocol{
}
extension ThirdMainCollectionViewCellDelegate {
}
// MARK: - Property
class ThirdMainCollectionViewCell: BaseCollectionViewCell {
    weak var delegate: ThirdMainCollectionViewCellDelegate? = nil
    
    @IBOutlet weak var roundView: UIImageView!
 
}
// MARK: - Life cycle
extension ThirdMainCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
}
// MARK: - Protocol
extension ThirdMainCollectionViewCell {
}

// MARK: - method
extension ThirdMainCollectionViewCell {
    func setLayout() {
        roundView.layer.cornerRadius = roundView.frame.height / 2
    }
}
