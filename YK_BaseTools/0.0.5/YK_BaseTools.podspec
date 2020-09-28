#
#  Be sure to run `pod spec lint YK_BaseTools.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YK_BaseTools"
  spec.version      = "0.0.5"
  spec.summary      = "A short description of YYK_BaseViews."
  spec.homepage     = "https://gitee.com/Edwrard/YK_BaseTools"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "11.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_BaseTools.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
  
  spec.dependency "ReactiveObjC"
  spec.dependency "AFNetworking"
  spec.dependency "RMQClient"
  spec.dependency "FMDB"
  spec.dependency "SocketRocket"
  spec.source_files = 'YK_BaseTools/Classes/**/*.{h,m,xib}'
  
end



#  pod lib lint YK_BaseTools.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_BaseTools.podspec --allow-warnings
