//
//  FourthMainView.swift
//  Instagram
//
//  Created by ASW-研修２ on 2020/04/22.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
protocol FourthMainViewDelegate: NSObjectProtocol{
}
extension FourthMainViewDelegate {
}
// MARK: - Property
class FourthMainView: BaseView {
    weak var delegate: FourthMainViewDelegate? = nil
    
    @IBOutlet weak var textField: UITextField!
    
}
// MARK: - Life cycle
extension FourthMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}
// MARK: - Protocol
extension FourthMainView {

}

// MARK: - method
extension FourthMainView {
}
