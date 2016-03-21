//
//  Tweet.swift
//  StackViewLesson
//
//  Created by 松下慶大 on 2016/03/20.
//  Copyright © 2016年 matsushita keita. All rights reserved.
//

import UIKit

class Tweet: NSObject {
    
    var name: String
    var text: String
    var time: String
    var icon: UIImage
    var tweetImage: UIImage?
    
    init(name: String, text: String, time: String, icon: UIImage, tweetImage: UIImage?) {
        self.name = name
        self.text = text
        self.time = time
        self.icon = icon
        self.tweetImage = tweetImage
    }
    
    class func generateTweets() -> [Tweet] {
        var tweets: [Tweet] = []
        for num in 1...10 {
            let name = "keita"
            var text = "Hello World Hello World Hello World Hello World Hello World Hello World"
            var time = "3min"
            var tweetImage = UIImage(named: "")
            if num % 2 == 0 {
                text = "Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World"
                time = "120min"
                tweetImage = UIImage(named: "sky")
            }
            let icon = UIImage(named: "omoto")
            let tweet = Tweet(name: name, text: text, time: time, icon: icon!, tweetImage: tweetImage)
            tweets.append(tweet)
        }
        return tweets
    }

}
