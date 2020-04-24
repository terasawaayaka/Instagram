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
    
    @IBOutlet weak var descriptionLabel: UILabel!
    var postModel: PostModel = PostModel()
}
// MARK: - Life cycle
extension SecondMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
// MARK: - Protocol
extension SecondMainView {
}

// MARK: - method
extension SecondMainView {
    func getModel(postModel: PostModel) {
        updataCell(postModel: postModel)

    }
    func updataCell(postModel: PostModel) {
        descriptionLabel.text = postModel.description
    }
}
