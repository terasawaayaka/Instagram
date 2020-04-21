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
// MARK: - method
extension TopViewController {
    func setHeaderView() {
        headerView.setCenter(text: "Home", fontSize: 19, color: UIColor.black)
        headerView.setRight(text: "投稿", fontSize: 16, color: UIColor.blue)
    }
    func setDelegate() {
        topMainView.delegate = self
    }
}
