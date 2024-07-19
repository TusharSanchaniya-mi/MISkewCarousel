Pod::Spec.new do |s|
  s.name             = 'MISkewCarousel'
  s.version          = '1.0.0'
  s.summary          = 'The MISkewCarousel is a customizable SwiftUI component that provides carousel card layout view.'
  s.description      = <<-DESC
                      The MISkewCarousel is a SwiftUI component that provides carousel card layout view wit 3D skew effect to left and right cards which are at the edge of screen.
                       DESC
  s.homepage         = 'https://github.com/TusharSanchaniya-mi/MISkewCarousel'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MindInventory' => 'tushar.sanchaniya@mindinventory.com' }
  s.source           = { :git => 'https://github.com/TusharSanchaniya-mi/MISkewCarousel.git', :tag => s.version.to_s }

  s.ios.deployment_target = '17.0'
  s.swift_version = '5.0'
  s.source_files = 'MISkewCarousel/Classes/**/*'
end
