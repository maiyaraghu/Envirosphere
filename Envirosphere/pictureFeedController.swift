//
//  ViewController.swift
//  pictureFeed
//
//  Created by  Scholar on 7/21/21.
//


import UIKit

class pictureViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    
    var models = [FeedPost]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        
        models.append(FeedPost(numberOfLikes: 4920,
                               username: "@ecowarriors",
                               userImageName: "stockimagepfp",
                               postImageName: "loveyourmother",
                               captionLabel:"Reminder to be kind to mother nature today, tomorrow, and everyday"))
        
        models.append(FeedPost(numberOfLikes: 28,
                               username: "@stephanielang",
                               userImageName: "hikerpfp",
                               postImageName: "canyon",
                               captionLabel:"Visited this beautiful canyon with Mike!"))
    
        models.append(FeedPost(numberOfLikes: 192,
                               username: "@wanderingnomad",
                               userImageName: "hikerpfp2",
                               postImageName: "dragonfly",
                               captionLabel:"dragonfly spotted"))
       
        models.append(FeedPost(numberOfLikes: 2945,
                               username: "@envirosphere",
                               userImageName: "otherlogo",
                               postImageName: "climatejustice",
                               captionLabel:"What one thing you can do to protect Mother Earth today?"))
        
        models.append(FeedPost(numberOfLikes: 100,
                               username: "@travellingfoodie",
                               userImageName: "stockimagepfp",
                               postImageName: "countryside",
                               captionLabel:"Travelled through in the Tuscany today"))
    
    }
    
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return models.count
    }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
            cell.configure(with: models[indexPath.row])
            return cell
    }
        
        func tableView(_ tableView: UITableView, didSelectRowAt: IndexPath) {
        
    }
    
}

struct FeedPost {
    let numberOfLikes: Int
    let username: String
    let userImageName: String
    let postImageName: String
    let captionLabel: String
}
