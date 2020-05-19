#
#  Be sure to run `pod spec lint DispatchTimer.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "FGLogger"
  s.version      = "0.0.3"
  s.summary      = "A local logger for iOS."
  s.homepage     = "https://github.com/FlameGrace/FGLogger"
  s.license      = { :type => "Apache", :file => "LICENSE" }
  s.author             = { "FlameGrace" => "flamegrace@hotmail.com" }
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/FlameGrace/FGLogger.git", :tag => "0.0.3" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.public_header_files = "Classes/**/*.h"
end
