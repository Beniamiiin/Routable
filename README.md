# Routable
Swift Lightweight Router

### Cocoapods
```
pod 'Routable',  :git => 'https://github.com/Beniamiiin/Routable.git'
```

### How to use

#### You can add a controller as a child view controller.

```
add(fromStoryboard: "StoryboardName")
```

This method for adding an initial view controller of a storyboard as a child view controller.

```
add(fromStoryboard: "StoryboardName", withIdentifier: "ControllerSegueIdentifier")
```

This method for adding a view controller with passed identifier as a child view controller.

```
add(in: containerView, fromStoryboard: "StoryboardName")
```

This method for adding an initial view controller of a storyboard as a child view controller but in `containerView` instead of `parent.view`.

```
add(in: containerView, fromStoryboard: "StoryboardName", withIdentifier: "ControllerSegueIdentifier")
```

This method for adding a view controller with passed identifier as a child view controller but in `containerView` instead of `parent.view`.

#### Also you can pass any parameters to child view controller.

```
add(fromStoryboard: "StoryboardName", ViewControllerB.self) { moduleB in
    moduleB.setupModule()
}

add(fromStoryboard: "StoryboardName", withIdentifier: "ControllerSegueIdentifier", ViewControllerB.self) { moduleB in
    moduleB.setupModule()
}

add(in: containerView, fromStoryboard: "StoryboardName", ViewControllerB.self) { moduleB in
    moduleB.setupModule()
}

add(in: containerView, fromStoryboard: "StoryboardName", withIdentifier: "ControllerSegueIdentifier", ViewControllerB.self) { moduleB in
    moduleB.setupModule()
}
```

#### You can push a controller.

```
show(fromStoryboard: "StoryboardName")
```

This method for pushing an initial view controller of a storyboard.

```
show(fromStoryboard: "StoryboardName", withIdentifier: "ControllerSegueIdentifier")
```

This method for pushing a view controller with passed identifier.

#### Also you can pass any parameters to controller which you gonna push.

```
show(fromStoryboard: "StoryboardName", ViewControllerB.self) { moduleB in
    moduleB.setupModule()
}

show(fromStoryboard: "StoryboardName", withIdentifier: "ControllerSegueIdentifier", ViewControllerB.self) { moduleB in
    moduleB.setupModule()
}
```

#### You can present a controller.

```
present(fromStoryboard: "StoryboardName")
```

This method for presenting an initial view controller of a storyboard.

```
present(fromStoryboard: "StoryboardName", presentationStyle: .currentContext, transitionStyle: .crossDissolve)
```

This method for presenting an initial view controller of a storyboard and with custom `presentationStyle` and `transitionStyle`.

```
present(fromStoryboard: "StoryboardName", withIdentifier: "ControllerSegueIdentifier")
```

This method for presenting a view controller with passed identifier.

```
present(fromStoryboard: "StoryboardName", withIdentifier: "ControllerSegueIdentifier", presentationStyle: .currentContext, transitionStyle: .crossDissolve)
```

This method for adding a view controller with passed identifier and with custom `presentationStyle` and `transitionStyle`.

#### Also you can pass any parameters to controller which you gonna present.

```
present(fromStoryboard: "StoryboardName", ViewControllerB.self) { moduleB in
    moduleB.setupModule()
}

present(fromStoryboard: "StoryboardName", ViewControllerB.self, presentationStyle: .currentContext, transitionStyle: .crossDissolve) { moduleB in
    moduleB.setupModule()
}

present(fromStoryboard: "StoryboardName", withIdentifier: "ControllerSegueIdentifier", ViewControllerB.self) { moduleB in
    moduleB.setupModule()
}

present(fromStoryboard: "StoryboardName", withIdentifier: "ControllerSegueIdentifier", ViewControllerB.self, presentationStyle: .currentContext, transitionStyle: .crossDissolve) { moduleB in
    moduleB.setupModule()
}
```

### Tips

Create routable protocols for user stories. For example:

```
protocol PostStoryRoutable: Routable {
    
    func showPostModule(with article: Article)
    
}

extension PostStoryRoutable where Self: UIViewController {
    
    func showPostModule(with article: Article) {
        guard let postType = article.sectionType else {
            return
        }
        
        show(fromStoryboard: Storyboards.PostStory.storyboardName, PostModuleInput.self) { moduleInput in
            moduleInput.setup(with: article, postType: postType)
        }
    }
    
}
```

And it's so easy to use in the view controller.

```
final class ViewControllerA: UIViewController, PostStoryRoutable {
    
    @IBAction private func showPost() {
        guard let article = article else {
            return
        }
        
        showPostModule(with: article)
    }
    
}

final class ViewControllerB: UIViewController, PostStoryRoutable {
    
    @IBAction private func showPost() {
        guard let article = article else {
            return
        }
        
        showPostModule(with: article)
    }
    
}
```

It's much better than to use routing directly in the view controller. And also you don't have to write a code for routing repeatedly. You wrote it once in routable protocol and you can use it from everywhere.
