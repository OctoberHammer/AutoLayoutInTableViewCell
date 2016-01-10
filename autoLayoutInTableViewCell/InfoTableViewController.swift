//
//  InfoTableViewController.swift
//  ParseStarterProject-Swift
//
//  Created by Ocotober Hammer on 12/29/15.
//  Copyright © 2015 Parse. All rights reserved.
//

import UIKit

class InfoTableViewController: UITableViewController {
	
    @IBOutlet weak var leftMenu: UIBarButtonItem!
    
	@IBOutlet weak var aboutCorp: UILabel!
	

	override func viewDidLoad() {
		super.viewDidLoad()
		//MARK: NavigationBar
		let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 38, height: 38))
		imageView.contentMode = .ScaleAspectFit
		let image = UIImage(named: "logo-Happiness")
		imageView.image = image
		navigationItem.titleView = imageView
//		aboutCorp.text = "hello everyone"
		aboutCorp.sizeToFit()
		print("\(aboutCorp.frame.height)")
		tableView.estimatedRowHeight = 3000.0
		tableView.rowHeight = UITableViewAutomaticDimension;    
	}
	
	override func viewWillAppear(animated: Bool) {
		print("\(aboutCorp.frame.height)")
		tableView.estimatedRowHeight = aboutCorp.frame.height
		tableView.rowHeight = UITableViewAutomaticDimension;
	}
	
	
	@IBAction func showCatalog(sender: AnyObject) {
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		let controller = storyboard.instantiateViewControllerWithIdentifier("revealProductCatalog") as UIViewController
		
		self.presentViewController(controller, animated: true, completion: nil)
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// MARK: - Table view data source
	
	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		// #warning Incomplete implementation, return the number of sections
		return 1
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// #warning Incomplete implementation, return the number of rows
		return 1
	}
	
	override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		print("\(1300.0 + aboutCorp.frame.height)")
		return 1300.0 + aboutCorp.frame.height
	}
	
	/*
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
	let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
	
	// Configure the cell...
	
	return cell
	}
	*/
	
	/*
	// Override to support conditional editing of the table view.
	override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
	// Return false if you do not want the specified item to be editable.
	return true
	}
	*/
	
	/*
	// Override to support editing the table view.
	override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
	if editingStyle == .Delete {
	// Delete the row from the data source
	tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
	} else if editingStyle == .Insert {
	// Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
	}
	}
	*/
	
	/*
	// Override to support rearranging the table view.
	override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
	
	}
	*/
	
	/*
	// Override to support conditional rearranging of the table view.
	override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
	// Return false if you do not want the item to be re-orderable.
	return true
	}
	*/
	
	/*
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
	// Get the new view controller using segue.destinationViewController.
	// Pass the selected object to the new view controller.
	}
	*/
	
}
