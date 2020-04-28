//
//  SecondViewController.swift
//  Instagram
//
//  Created by ASW-研修２ on 2020/04/21.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
// MARK: - Property
class SecondViewController: BaseViewController {
    
    @IBOutlet weak var secondMainView: SecondMainView!
    @IBOutlet weak var headerView: HeaderView!
    var postModel: PostModel = PostModel()
}
// MARK: - Life cycle
extension SecondViewController {
    override func loadView() {
        super.loadView()
        setHeaderView()
        setDelegate()
//        print("DESC: ",postModel.description)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getModel()
    }
}
// MARK: - Protocol
extension SecondViewController:HeaderViewDelegate {
    func touchedLeftButton(_ sender: UIButton) {
        _ = TopViewController()
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_pop
    }
    func touchedRightButton(_ sender: UIButton) {
        let editViewController = EditViewController()
        editViewController.postModel = postModel
        editViewController.modalPresentationStyle = .fullScreen
        present(editViewController, animated: true, completion: nil)
    }
}
// MARK: - method
extension SecondViewController {
    func setHeaderView() {
        headerView.setCenter(text: "投稿詳細", fontSize: 19, color: UIColor.black)
        headerView.setLeft(text: "<", fontSize: 16, color: UIColor.gray)
        if let image = UIImage(named: "three") {
            headerView.setRight(image: image)
        }
    }
    func setDelegate() {
        headerView.delegate = self
    }
    func getModel() {
            self.secondMainView.getModel(postModel: postModel)

    }
}
