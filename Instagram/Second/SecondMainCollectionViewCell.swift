//
//  SecondMainCollectionViewCell.swift
//  Instagram
//
//  Created by ASW-研修２ on 2020/04/21.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
protocol SecondMainCollectionViewCellDelegate: NSObjectProtocol{
}
extension SecondMainCollectionViewCellDelegate {
}
// MARK: - Property
class SecondMainCollectionViewCell: BaseCollectionViewCell {
    weak var delegate: SecondMainCollectionViewCellDelegate? = nil
    
    @IBOutlet weak var roundView: UIView!
}
// MARK: - Life cycle
extension SecondMainCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
}
// MARK: - Protocol
extension SecondMainCollectionViewCell {
}

// MARK: - method
extension SecondMainCollectionViewCell {
    func setLayout() {
        roundView.layer.cornerRadius = roundView.frame.height / 2
    }
}
