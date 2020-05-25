#
#  Be sure to run `pod spec lint DispatchTimer.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "FGLogger"
  s.version      = "0.0.4"
  s.summary      = "A local logger for iOS."
  s.homepage     = "https://github.com/FlameGrace/FGLogger"
  s.license      = { :type => "Apache", :file => "LICENSE" }
  s.author             = { "FlameGrace" => "flamegrace@hotmail.com" }
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/FlameGrace/FGLogger.git", :tag => "0.0.4" }
  s.source_files  = "Classes", "Classes/**/FGLog.{h,m}"
  s.public_header_files = "Classes/**/FGLog.h"

  s.subspec 'Application' do |ss|
    ss.public_header_files = 'Classes/Application/**/*.h'
    ss.source_files = 'Classes/Application/**/*.*{h,m}'
  end
  
  s.subspec 'Logger' do |ss|
    ss.public_header_files = 'Classes/Logger/**/*.h'
    ss.source_files = 'Classes/Logger/**/*.*{h,m}'
  end
end
