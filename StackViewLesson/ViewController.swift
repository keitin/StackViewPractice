//
//  ViewController.swift
//  StackViewLesson
//
//  Created by 松下慶大 on 2016/03/20.
//  Copyright © 2016年 matsushita keita. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    var tweets: [Tweet] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 90
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.dataSource = self
        tableView.delegate   = self
        tableView.registerNib(UINib(nibName: "TweetCell", bundle: nil), forCellReuseIdentifier: "TweetCell")
        tweets = Tweet.generateTweets()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TweetCell", forIndexPath: indexPath) as! TweetCell
        let tweet = self.tweets[indexPath.row]
        cell.iconImageView.image = tweet.icon
        cell.nameLabel.text = tweet.name
        cell.timeLabel.text = tweet.time
        cell.tweetLabel.text = tweet.text
        cell.tweetImageView.hidden = true
        if let image = tweet.tweetImage {
            cell.tweetImageView.hidden = false
            cell.tweetImageView.image = image
        }
        return cell
    }


}

