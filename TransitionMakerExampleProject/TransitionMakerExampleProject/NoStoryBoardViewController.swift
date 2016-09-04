//
//  NoStoryBoardViewController.swift
//  ImageOpenTransitionExampleProject
//
//  Created by Matan Cohen on 7/20/16.
//  Copyright © 2016 Jive. All rights reserved.
//

import Foundation
import UIKit

class NoStoryBoardViewController : UIViewController {
    var imgCover: UIImageView!
    var imgAvatar: UIImageView!
    let lblDescription = UILabel()
    
    override func loadView() {
        super.loadView()
        
        let avatarImageSize : CGFloat = 60
        let avatarYPoint : CGFloat = 160
        let frameToAnimateToAvatar = CGRectMake((self.view.frame.size.width/2) - (avatarImageSize/2), avatarYPoint, avatarImageSize, avatarImageSize)
        let frameToAnimateToCover = CGRectMake(0, 0, self.view.frame.size.width, 200)

        self.imgCover = UIImageView()
        self.imgCover.image = UIImage(named: "windows-xp-background-image-jpg.jpg")
        self.imgCover.contentMode = UIViewContentMode.ScaleAspectFill
        self.imgCover.clipsToBounds = true
        self.imgCover.frame = frameToAnimateToCover
        self.view.addSubview(self.imgCover)
        
        self.imgAvatar = UIImageView()
        self.imgAvatar.image = UIImage(named: "crossroads-destiny-clip-4x3.jpg")
        self.imgAvatar.frame = frameToAnimateToAvatar
        self.imgAvatar.contentMode = UIViewContentMode.ScaleAspectFill
        self.imgAvatar.clipsToBounds = true
        self.view.addSubview(self.imgAvatar)
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        let descriptionPadding: CGFloat  = 10
        let avatarBottom = self.imgAvatar.frame.origin.y + self.imgAvatar.frame.size.height
        self.lblDescription.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        self.lblDescription.numberOfLines = 20
        self.view.addSubview(self.lblDescription)
        self.lblDescription.frame = CGRectMake(descriptionPadding, avatarBottom, self.view.frame.size.width - (descriptionPadding * 2), self.view.frame.size.height - avatarBottom)
    }
}