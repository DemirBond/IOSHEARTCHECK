//
//  UITableView+Extensions.swift
//  CVDEvaluator
//
//  Created by Hoang on 4/19/19.
//  Copyright © 2019 IgorKhomiak. All rights reserved.
//

import UIKit
import Foundation

private var ResettingKey: UInt8 = 0 

extension UITableView {

	func reloadDataThenPerform(_ closure: @escaping (() -> Void)) {
		CATransaction.begin()
		self.reloadData()
		CATransaction.commit()
		CATransaction.setCompletionBlock(closure)
	}
	//asdf


	var isResetting: Bool {
		get {
			return (objc_getAssociatedObject(self, &ResettingKey) as? Bool) ?? false
		}
		set {
			objc_setAssociatedObject(self, &ResettingKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_ASSIGN)
		}
	}
}
