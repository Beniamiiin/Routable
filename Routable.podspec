Pod::Spec.new do |s|
  s.name             = "Routable"
  s.version          = "0.1.0"
  s.summary          = "Swift Lightweight Router"
  s.homepage         = "https://github.com/Beniamiiin/Routable"
  s.license          = { :type => "MIT", :file => "LICENSE.md" }
  s.author           = { "Beniamin Sarkisyan" => "beniamin.sarkisyan@gmail.com" }
  s.requires_arc     = true
  s.source           = { :git => "https://github.com/Beniamiiin/Routable.git", :branch => master }
  s.source_files     = 'Sources/**/*.swift'

  s.ios.deployment_target = '8.0'
end