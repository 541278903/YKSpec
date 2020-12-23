#
#  Be sure to run `pod spec lint IFYunSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "IFYunSDK"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of IFYunSDK."
  spec.homepage     = "https://gitee.com/Edwrard/IFYunSDK"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "11.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/IFYunSDK.git",:tag => spec.version.to_s }
  spec.framework  = "Foundation","AVFoundation","Photos","VideoToolbox"
  
  
  spec.source_files = 'IFYunSDK/IFYunSDK/*'
  
  spec.libraries = "bz2.1.0","iconv","bz2.1.0.5","c++"
  spec.vendored_libraries = 'IFYunSDK/IFYunSDK/libstarRTC.a'
  
  
  
end



#  pod lib lint IFYunSDK.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec IFYunSDK.podspec --allow-warnings
