Pod::Spec.new do |s|
  s.name         = "Inkpad"
  s.version      = "0.0.1"
  s.summary      = "Vector illustration library for iOS"
  s.homepage     = "https://github.com/pocketworks/Inkpad"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = "MIT"
  s.author             = { "Ramesh Vel" => "rameshvel@gmail.com" }
  s.source       = { :git => "https://github.com/pocketworks/Inkpad.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}","Inkpad-Core","Inkpad-Core/**/*.{h,m,mm,cpp}"
  s.resources = "PLists/*","Help/*","Icons/*","Images/*","Base.lproj/*"
  s.exclude_files = "Classes/Exclude"
  s.dependency "WYPopoverController"
  s.ios.deployment_target = '6.0'
end
