//
//  AppSplitViewDelegate.swift
//  UISVC-Compatibility-Demo
//
//  Created by Ryan Nystrom on 11/17/14.
//  Copyright (c) 2014 Ryan Nystrom. All rights reserved.
//

import Foundation
import UIKit

class AppSplitViewDelegate: NSObject, UISplitViewControllerDelegate {

  // MARK: - UISplitViewControllerDelegate

  func splitViewController(
    splitViewController: UISplitViewController,
    collapseSecondaryViewController secondaryViewController: UIViewController!,
    ontoPrimaryViewController primaryViewController: UIViewController!) -> Bool
  {
    return true
  }

}