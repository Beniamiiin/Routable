//
//  Routable.swift
//  Routable
//
//  Created by Beniamin Sarkisyan on 24/05/2018.
//  Copyright © 2018 bsarkisian.me. All rights reserved.
//

import UIKit
import Foundation

private enum TransitionType {
    case show
    case present
}

public protocol Routable {
    
    func show(fromStoryboard name: String)
    func show(fromStoryboard name: String, withIdentifier identifier: String)
    
    func present(fromStoryboard name: String)
    func present(fromStoryboard name: String, withIdentifier identifier: String)
    
    func show<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    func show<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    
    func present<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    func present<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    
}

extension Routable where Self: UIViewController {
    
    func show(fromStoryboard name: String) {
        open(fromStoryboard: name, withIdentifier: nil, transitionType: .show)
    }

    func show(fromStoryboard name: String, withIdentifier identifier: String) {
        open(fromStoryboard: name, withIdentifier: identifier, transitionType: .show)
    }

    func present(fromStoryboard name: String) {
        open(fromStoryboard: name, withIdentifier: nil, transitionType: .present)
    }

    func present(fromStoryboard name: String, withIdentifier identifier: String) {
        open(fromStoryboard: name, withIdentifier: identifier, transitionType: .present)
    }

    func show<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) {
        open(fromStoryboard: name, withIdentifier: nil, type, transitionType: .show, configuration: configuration)
    }

    func show<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) {
        open(fromStoryboard: name, withIdentifier: identifier, type, transitionType: .show, configuration: configuration)
    }

    func present<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) {
        open(fromStoryboard: name, withIdentifier: nil, type, transitionType: .present, configuration: configuration)
    }

    func present<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) {
        open(fromStoryboard: name, withIdentifier: identifier, type, transitionType: .present, configuration: configuration)
    }
    
}

// MARK: - Helpers

extension Routable where Self: UIViewController {
    
    private func open(fromStoryboard name: String, withIdentifier identifier: String?, transitionType: TransitionType) {
        let viewController = controller(fromStoryboard: name, withIdentifier: identifier)
        open(controller: viewController, transitionType: transitionType)
    }
    
    private func open<T>(fromStoryboard name: String, withIdentifier identifier: String?, _ type: T.Type, transitionType: TransitionType, configuration: @escaping (_ moduleInput: T) -> ()) {
        let viewController = controller(fromStoryboard: name, withIdentifier: identifier)
        
        if let moduleInput = viewController as? T {
            configuration(moduleInput)
        } else {
            fatalError("\(viewController) does not conform to protocol \(type)")
        }
        
        open(controller: viewController, transitionType: transitionType)
    }
    
    private func controller(fromStoryboard name: String, withIdentifier identifier: String? = nil) -> UIViewController {
        let storyboard = UIStoryboard(name: name, bundle: nil)
        
        let controller: UIViewController?
        
        if let identifier = identifier {
            controller = storyboard.instantiateViewController(withIdentifier: identifier)
        } else {
            controller = storyboard.instantiateInitialViewController()
        }
        
        guard let viewController = controller else {
            fatalError("ViewController can't be nil")
        }
        
        return viewController
    }
    
    private func open(controller: UIViewController, transitionType: TransitionType) {
        if transitionType == .show {
            show(controller, sender: nil)
        } else {
            present(controller, animated: true, completion: nil)
        }
    }
    
}
