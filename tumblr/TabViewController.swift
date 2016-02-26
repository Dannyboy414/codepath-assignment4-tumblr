//
//  TabViewController.swift
//  tumblr
//
//  Created by Daniel Kim on 2/25/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class TabViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!

    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController =
            storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as! UIViewController
        searchViewController =
            storyboard.instantiateViewControllerWithIdentifier("SearchViewController") as! UIViewController
        composeViewController =
            storyboard.instantiateViewControllerWithIdentifier("ComposeViewController") as! UIViewController
        accountViewController =
            storyboard.instantiateViewControllerWithIdentifier("AccountViewController") as! UIViewController
        trendingViewController =
            storyboard.instantiateViewControllerWithIdentifier("TrendingViewController") as! UIViewController

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onHomeButton(sender: AnyObject) {
        contentView.addSubview(homeViewController.view)
    }

    @IBAction func onSearchButton(sender: AnyObject) {
        contentView.addSubview(searchViewController.view)
    }
    
    @IBAction func onComposeButton(sender: AnyObject) {
        contentView.addSubview(composeViewController.view)
    }
    
    @IBAction func onAccountButton(sender: AnyObject) {
        contentView.addSubview(accountViewController.view)
    }
    
    @IBAction func onTrendingButton(sender: AnyObject) {
        contentView.addSubview(trendingViewController.view)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    

        
        
        
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
