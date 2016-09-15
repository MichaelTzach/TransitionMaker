//
//  ImageScaleTransitionUtils.swift
//  ImageOpenTransition
//
//  Created by Matan Cohen on 7/17/16.
//  Copyright © 2016 Jive. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func heightOfNavigationControllerAndStatusAtViewController()-> CGFloat {
        var height : CGFloat = 0
        if let isNavigationController = self.navigationController {
            height += isNavigationController.navigationBar.frame.height;
        }

        
        if UIApplication.sharedApplication().statusBarHidden == false {
            height += UIApplication.sharedApplication().statusBarFrame.height
        }

        
        return height
    }
}

extension UIImage {
    
    func copyImage()->UIImage {
        let newCgIm = CGImageCreateCopy(self.CGImage!)
        let newImage = UIImage(CGImage: newCgIm!, scale: self.scale, orientation: self.imageOrientation)
        return newImage
    }
}

extension UIView
{
    func copyView() -> UIView {

        UIGraphicsBeginImageContextWithOptions(bounds.size, false,  0.0)
        self.layer.renderInContext(UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        let imageView = UIImageView(frame: self.frame)
        imageView.image = image
        return imageView
        
    }
}
