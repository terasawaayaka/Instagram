//
//  FourthViewController.swift
//  Instagram
//
//  Created by ASW-研修２ on 2020/04/22.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
// MARK: - Property
class FourthViewController: BaseViewController {
    @IBOutlet weak var fourthMainView: FourthMainView!
    @IBOutlet weak var headerView: HeaderView!
}
// MARK: - Life cycle
extension FourthViewController {
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
    }
}
// MARK: - Protocol
extension FourthViewController:HeaderViewDelegate {
    func touchedLeftButton(_ sender: UIButton) {
        _ = TopViewController()
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_pop
    }
    func touchedRightButton(_ sender: UIButton) {
        let postModel: PostModel = PostModel()
        
        if let text = fourthMainView.textField.text {
            postModel.description = text
        }
        
        PostModel.create(request: postModel) {
            self.navigationController?.popViewController(animated: true)
            self.animatorManager.navigationType = .pop
            
        }
    }
}


// MARK: - method
extension FourthViewController {
    func setHeaderView() {
        headerView.setLeft(text: "キャンセル", fontSize: 16, color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        headerView.setCenter(text: "新規投稿", fontSize: 19, color: UIColor.black)
        headerView.setRight(text: "シェア", fontSize: 16, color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    }
    func setDelegate() {
        headerView.delegate = self
    }
    
}
