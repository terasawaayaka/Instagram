//
//  EditMainView.swift
//  Instagram
//
//  Created by ASW-研修２ on 2020/04/27.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
protocol EditMainViewDelegate: NSObjectProtocol{
}
extension EditMainViewDelegate {
}
// MARK: - Property
class EditMainView: BaseView {
    weak var delegate: EditMainViewDelegate? = nil
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var deleteButton: UIButton!
}
// MARK: - Life cycle
extension EditMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
// MARK: - Protocol
extension EditMainView {
}

// MARK: - method
extension EditMainView {
    func updateView(postModel: PostModel) {
        textField.text = postModel.description
    }
}
