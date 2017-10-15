//
//  CustomAnimatorDismisser.swift
//  Instagram
//
//  Created by Amar Bhatia on 10/14/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import UIKit
class CustomAnimationDismisser: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        // my custom transition animation code logic
        
        let containerView = transitionContext.containerView
        // fromView = CameraController
        guard let fromView = transitionContext.view(forKey: .from) else { return }
        // toView = HomeController
        guard let toView = transitionContext.view(forKey: .to) else { return }

        containerView.addSubview(toView)
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            //animation
            
            fromView.frame = CGRect(x: -fromView.frame.width, y: 0, width: fromView.frame.width, height: fromView.frame.height)
            toView.frame = CGRect(x: 0, y: 0, width: toView.frame.width, height: toView.frame.height)
            
        }) { (_) in
            transitionContext.completeTransition(true)
        }
        
    }
}