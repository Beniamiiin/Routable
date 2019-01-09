//
//  BaseRoutable.swift
//  Routable
//
//  Created by Beniamin Sarkisian on 24/05/2018.
//  Copyright © 2018 bsarkisian.me. All rights reserved.
//

import UIKit

public protocol BaseRoutable: class {
    
}

extension BaseRoutable where Self: UIViewController {
    
    internal func show(fromStoryboard name: String, withIdentifier identifier: String?, transitionType: TransitionType, presentationStyle: UIModalPresentationStyle? = nil, transitionStyle: UIModalTransitionStyle? = nil) {
        _ = _show(fromStoryboard: name, withIdentifier: identifier, transitionType: transitionType, presentationStyle: presentationStyle, transitionStyle: transitionStyle)
    }
    
    internal func _show(in view: UIView? = nil, fromStoryboard name: String, withIdentifier identifier: String?, transitionType: TransitionType, presentationStyle: UIModalPresentationStyle? = nil, transitionStyle: UIModalTransitionStyle? = nil) -> UIViewController {
        let viewController = controller(fromStoryboard: name, withIdentifier: identifier, presentationStyle: presentationStyle, transitionStyle: transitionStyle)
        
        show(in: view, controller: viewController, transitionType: transitionType)
        
        return viewController
    }
    
    internal func show<T>(fromStoryboard name: String, withIdentifier identifier: String?, _ type: T.Type, transitionType: TransitionType, presentationStyle: UIModalPresentationStyle? = nil, transitionStyle: UIModalTransitionStyle? = nil, configuration: @escaping (_ moduleInput: T) -> ()) {
        _ = _show(fromStoryboard: name, withIdentifier: identifier, type, transitionType: transitionType, presentationStyle: presentationStyle, transitionStyle: transitionStyle, configuration: configuration)
    }
    
    internal func _show<T>(in view: UIView? = nil, fromStoryboard name: String, withIdentifier identifier: String?, _ type: T.Type, transitionType: TransitionType, presentationStyle: UIModalPresentationStyle? = nil, transitionStyle: UIModalTransitionStyle? = nil, configuration: @escaping (_ moduleInput: T) -> ()) -> UIViewController {
        let viewController = controller(fromStoryboard: name, withIdentifier: identifier, presentationStyle: presentationStyle, transitionStyle: transitionStyle)
        
        if let moduleInput = viewController as? T {
            configuration(moduleInput)
        } else if let navigationController = viewController as? UINavigationController, let moduleInput = navigationController.topViewController as? T {
            configuration(moduleInput)
        } else {
            fatalError("\(viewController) does not conform to protocol \(type)")
        }
        
        show(in: view, controller: viewController, transitionType: transitionType)
        
        return viewController
    }
    
    internal func controller(fromStoryboard name: String, withIdentifier identifier: String? = nil, presentationStyle: UIModalPresentationStyle?, transitionStyle: UIModalTransitionStyle?) -> UIViewController {
        let storyboard = UIStoryboard(name: name, bundle: nil)
        
        let controller: UIViewController?
        
        if let identifier = identifier {
            controller = storyboard.instantiateViewController(withIdentifier: identifier)
        } else {
            controller = storyboard.instantiateInitialViewController()
        }
        
        if let presentationStyle = presentationStyle {
            controller?.modalPresentationStyle = presentationStyle
        }
        
        if let transitionStyle = transitionStyle {
            controller?.modalTransitionStyle = transitionStyle
        }
        
        guard let viewController = controller else {
            fatalError("ViewController can't be nil")
        }
        
        return viewController
    }
    
    internal func show(in view: UIView? = nil, controller: UIViewController, transitionType: TransitionType) {
        switch transitionType {
        case .add:
            let containerView = view ?? self.view
            addChild(controller)
            containerView?.addSubview(controller.view)
            controller.didMove(toParent: self)
        case .set:
            guard let window = UIApplication.shared.keyWindow ?? UIApplication.shared.windows.first else {
                fatalError("Window can't be nil")
            }

            window.rootViewController = controller
        case .show:
            show(controller, sender: nil)
        case .present:
            present(controller, animated: true, completion: nil)
        }
    }
    
}

