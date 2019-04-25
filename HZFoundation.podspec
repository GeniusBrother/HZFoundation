Pod::Spec.new do |s|

  s.name         = "HZFoundation" 
  s.version      = "0.1.6"    
  s.summary      = "The Useful Utility Library For IOS"
  s.homepage     = "https://github.com/GeniusBrother/HZFoundation.git"
  s.license      = "MIT"
  s.author             = { "GeniusBrother" => "zuohong_xie@163.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/GeniusBrother/HZFoundation.git", :tag => s.version }    
  s.frameworks = "Foundation"

  s.public_header_files = 'HZFoundation/Classes/**/*.h'
  s.source_files = 'HZFoundation/Classes/**/*.{h,m}'

end
