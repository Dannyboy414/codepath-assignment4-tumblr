//
//  ComposeViewController.swift
//  tumblr
//
//  Created by Daniel Kim on 2/25/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    @IBOutlet weak var animationView: UIView!
    @IBOutlet weak var quoteImageView: UIImageView!
    @IBOutlet weak var textImageView: UIImageView!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var linkImageView: UIImageView!
    @IBOutlet weak var chatImageView: UIImageView!
    @IBOutlet weak var videoImageView: UIImageView!
    
    @IBAction func nevermindButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: {})
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        animateIcons()
    }
    
    func animateIcons() {
        //animation icons
        self.textImageView.center.y = 500
        self.textImageView.alpha = 0
        self.quoteImageView.center.y = 500
        self.quoteImageView.alpha = 0
        self.photoImageView.center.y = 500
        self.photoImageView.alpha = 0
        self.linkImageView.center.y = 500
        self.linkImageView.alpha = 0
        self.chatImageView.center.y = 500
        self.chatImageView.alpha = 0
        self.videoImageView.center.y = 500
        self.videoImageView.alpha = 0
        
        UIView.animateWithDuration(0.3) {
            self.quoteImageView.center.y = 210
            self.quoteImageView.alpha = 1
            self.photoImageView.center.y = 210
            self.photoImageView.alpha = 1
            self.chatImageView.center.y = 330
            self.chatImageView.alpha = 1
            
        }
        
        UIView.animateWithDuration(0.1) {
            self.textImageView.center.y = 210
            self.textImageView.alpha = 1
            self.linkImageView.center.y = 330
            self.linkImageView.alpha = 1
            self.videoImageView.center.y = 330
            self.videoImageView.alpha = 1
            
        }
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
