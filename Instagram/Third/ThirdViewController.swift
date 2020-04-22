//
//  ThirdViewController.swift
//  Instagram
//
//  Created by ASW-研修２ on 2020/04/21.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
// MARK: - Property
class ThirdViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!
}
// MARK: - Life cycle
extension ThirdViewController {
    override func loadView() {
        super.loadView()
        setHeaderView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
// MARK: - Protocol
extension ThirdViewController {
}
// MARK: - method
extension ThirdViewController {
    func setHeaderView() {
        headerView.setCenter(text: "My Page", fontSize: 19, color: UIColor.black)
    }
}
