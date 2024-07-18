Pod::Spec.new do |s|
  s.name             = 'MISkewScrollView'
  s.version          = '1.0.0'
  s.summary          = 'The MISkewScrollView is a customizable SwiftUI component that provides carousel card layout view.'
  s.description      = <<-DESC
                      The MISkewScrollView is a customizable SwiftUI component that provides carousel card layout view.
                       DESC
  s.homepage         = 'https://github.com/TusharSanchaniya-mi/MISkewCarousel'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MindInventory' => 'tushar.sanchaniya@mindinventory.com' }
  s.source           = { :git => 'https://github.com/TusharSanchaniya-mi/MISkewCarousel.git', :tag => s.version.to_s }

  s.ios.deployment_target = '17.0'

  s.source_files = 'MISkewScrollView/Classes/**/*'
end
