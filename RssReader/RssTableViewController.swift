//
//  RssTableViewController.swift
//  RssReader
//
//  Created by Кирилл Делимбетов on 18.02.17.
//  Copyright © 2017 Кирилл Делимбетов. All rights reserved.
//

import FeedKit
import UIKit

class RssTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearsSelectionOnViewWillAppear = false
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rssFeedManager.items.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constant.rssNewsCellReuseIdentifier, for: indexPath)
        
        // Configure the cell...
        
        return cell
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    //MARK: private
    private struct Constant {
        static let rssNewsCellReuseIdentifier = "Rss news"
    }
    
    //MARK: model
    private let rssFeedManager = RssFeedManager()
}