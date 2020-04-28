//
//  EditViewController.swift
//  Instagram
//
//  Created by ASW-研修２ on 2020/04/27.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
// MARK: - Property
class EditViewController: BaseViewController {
    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var editMainView: EditMainView!
    
    var postModel: PostModel = PostModel()
}
// MARK: - Life cycle
extension EditViewController {
    override func loadView() {
        super.loadView()
        setHeaderView()
        setDelegate()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        giveModel()
    }
}
// MARK: - Protocol
extension EditViewController:HeaderViewDelegate {
    func touchedLeftButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    func touchedRightButton(_ sender: UIButton) {
        if let text = editMainView.textField.text {
            postModel.description = text }
        PostModel.update(request: postModel) {
            self.dismiss(animated: true, completion: nil)
        }
    }
}
// MARK: - method
extension EditViewController {
    func setHeaderView() {
        headerView.setLeft(text: "キャンセル", fontSize: 16, color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        headerView.setRight(text: "完了", fontSize: 16, color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
    }
    func setDelegate() {
        headerView.delegate = self
    }
    func giveModel() {
        editMainView.updateView(postModel: postModel)
    }
}
