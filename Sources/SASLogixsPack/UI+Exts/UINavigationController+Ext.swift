//
//  UINavigationController+Ext.swift
//  IDine
//
//  Created by Manu Puthoor on 03/07/20.
//  Copyright © 2020 appventurez. All rights reserved.
//

import UIKit

public extension UINavigationController {
    func pushViewController(_ viewController: UIViewController, animated: Bool, completion: @escaping () -> Void) {
        pushViewController(viewController, animated: animated)

        if animated, let coordinator = transitionCoordinator {
//            coordinator.animateAlongsideTransition(in: nil, animation: nil) { (_) in
//                completion()
//            }
            coordinator.animate(alongsideTransition: nil) { _ in
                completion()
            }
        } else {
            completion()
        }
    }

    func popViewController(animated: Bool, completion: @escaping () -> Void) {
        popViewController(animated: animated)

        if animated, let coordinator = transitionCoordinator {
            coordinator.animate(alongsideTransition: nil) { _ in
                completion()
            }
        } else {
            completion()
        }
    }
}
