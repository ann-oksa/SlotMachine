//
//  ReusableView.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 04.11.2020.
//

import UIKit

protocol ReusableView {

    static var reuseIdentifier: String { get }

}

extension ReusableView {

    static var reuseIdentifier: String {
        return String(describing: self)
    }

}

extension UITableViewCell: ReusableView {}
