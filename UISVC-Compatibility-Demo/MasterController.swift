//
//  MasterController.swift
//  UISVC-Compatibility-Demo
//
//  Created by Ryan Nystrom on 11/17/14.
//  Copyright (c) 2014 Ryan Nystrom. All rights reserved.
//

import UIKit

class MasterController: UITableViewController {

  let CellIdentifier = "CellIdentifier"
  let DetailSegueIdentifier = "DetailSegueIdentifier"

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == DetailSegueIdentifier {
      var dest: DetailController
      if let nav = segue.destinationViewController as? UINavigationController {
        dest = nav.topViewController as DetailController
      } else {
        dest = segue.destinationViewController as DetailController
      }

      if let path = tableView.indexPathForSelectedRow() {
        dest.selectedIndex = path.row
      }
    }
  }

  //MARK: UITableViewDataSource

  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }

  override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
    return 100
  }

  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier, forIndexPath: indexPath) as UITableViewCell
    cell.textLabel.text = "Cell item \(indexPath.row)"
    return cell
  }

  //MARK: UITableViewDelegate

  override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    return 80
  }
  
}
