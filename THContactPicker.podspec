Pod::Spec.new do |s|
  s.name         = 'THContactPicker'
  s.version      = '1.0.6'
  s.summary      = "Contact picker view controller"
  s.homepage     = 'https://github.com/urbanappetite/THContactPicker'

  s.license      = 'MIT'
  s.author       = { 'Tristan Himmelman' => '' }
  s.source       = { :git => 'https://github.com/urbanappetite/THContactPicker.git', :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'Classes/**/*.{h,m}'
  
  s.framework    = 'QuartzCore'
  s.framework    = 'CoreGraphics'  
end
