//
//  DetailController.swift
//  UISVC-Compatibility-Demo
//
//  Created by Ryan Nystrom on 11/17/14.
//  Copyright (c) 2014 Ryan Nystrom. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
  var selectedIndex = -1
  @IBOutlet weak var textLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    var selectionText: String
    if selectedIndex >= 0 {
      selectionText = "Selected item \(selectedIndex)"
    } else {
      selectionText = "Nothing selected!"
    }
    textLabel.text = selectionText

    if splitViewController?.respondsToSelector("displayModeButtonItem") == true {
      navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
      navigationItem.leftItemsSupplementBackButton = true
    }
  }
}
