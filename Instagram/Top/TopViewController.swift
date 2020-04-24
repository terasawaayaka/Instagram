//
//  TopViewController.swift
//  Instagram
//
//  Created by ASW-研修２ on 2020/04/21.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
// MARK: - Property
class TopViewController: BaseViewController {
    @IBOutlet weak var topMainView: TopMainView!
    
    @IBOutlet weak var headerView: HeaderView!
}
// MARK: - Life cycle
extension TopViewController {
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
        getModel()
    }
}
// MARK: - Protocol
extension TopViewController: TopMainViewDelegate {
    func didSelectRowAt() {
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
        animatorManager.navigationType = .slide_push
    }
}

extension TopViewController: HeaderViewDelegate {
    func touchedRightButton(_ sender: UIButton) {
        let fourthViewController = FourthViewController()
        navigationController?.pushViewController(fourthViewController, animated: true)
        animatorManager.navigationType = .slide_push
    }
}

// MARK: - method
extension TopViewController {
    func setHeaderView() {
        headerView.setCenter(text: "Home", fontSize: 19, color: UIColor.black)
        headerView.setRight(text: "投稿", fontSize: 16, color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    }
    func setDelegate() {
        topMainView.delegate = self
        headerView.delegate = self
    }
    func getModel() {
        PostModel.reads { (postModels) in
//            for postModel in postModels {
//                print("DESC: ",postModel.description)
//            }
            self.topMainView.getModel(postModels: postModels)
        }
    }
}
