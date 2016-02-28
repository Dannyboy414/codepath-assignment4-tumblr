//
//  TabViewController.swift
//  tumblr
//
//  Created by Daniel Kim on 2/25/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class TabViewController: UIViewController {

    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var tabBarView: UIView!
    
    var searchViewController: UIViewController!
    var homeViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    
    @IBOutlet weak var exploreBubble: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as! HomeViewController
        
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController") as! SearchViewController
            addChildViewController(searchViewController)
            searchView.addSubview(searchViewController.view)
            searchViewController.didMoveToParentViewController(self)
            searchViewController.view.frame = contentView.frame
        
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController") as! ComposeViewController
       
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController") as! AccountViewController
        
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController") as! TrendingViewController

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.animateKeyframesWithDuration(1.0, delay: 0.5, options: .Repeat, animations: { () -> Void in
            var originalBubbleFrame = self.exploreBubble.frame
            var raisedBubbleFrame = originalBubbleFrame
            raisedBubbleFrame.origin.y = raisedBubbleFrame.origin.y - 2
            
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.5, animations: { () -> Void in
                self.exploreBubble.frame = raisedBubbleFrame
            })
            UIView.addKeyframeWithRelativeStartTime(0.5, relativeDuration: 0.5, animations: { () -> Void in
                self.exploreBubble.frame = originalBubbleFrame
            })
            }, completion: nil)
    }
    
    func clearButtons() {
        searchButton.selected = false
        homeButton.selected = false
        accountButton.selected = false
        trendingButton.selected = false
        
        exploreBubble.hidden = false
    }
    
    @IBAction func onHomeButton(sender: UIButton) {
        homeViewController.view.frame = contentView.frame
        contentView.addSubview(homeViewController.view)
        
        clearButtons()
        
        sender.selected = true

    }

    @IBAction func onSearchButton(sender: UIButton) {
        searchViewController.view.frame = contentView.frame
        contentView.addSubview(searchViewController.view)
        clearButtons()
        
        sender.selected = true
        
        exploreBubble.hidden = true
    }
    
    @IBAction func onComposeButton(sender: UIButton) {
//        composeViewController.view.frame = contentView.frame
        
        self.modalPresentationStyle = .CurrentContext
        self.presentViewController(composeViewController, animated: true, completion: nil)
    }
    
    @IBAction func onAccountButton(sender: UIButton) {
        accountViewController.view.frame = contentView.frame
        contentView.addSubview(accountViewController.view)
        clearButtons()
        
        sender.selected = true
    }
    
    @IBAction func onTrendingButton(sender: UIButton) {
        trendingViewController.view.frame = contentView.frame
        contentView.addSubview(trendingViewController.view)
        clearButtons()
        
        sender.selected = true
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
