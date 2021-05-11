#  Be sure to run `pod spec lint YK_LogModule.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YK_LogModule"
  spec.version      = "0.0.2"
  spec.summary      = "A short description of YK_LogModule."
  spec.homepage     = "https://gitee.com/Edwrard/YK_LogModule.git"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_LogModule.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
  
  #spec.dependency 'YK_ExectionModel/YKUIKit'
  
  #spec.prefix_header_file = "YK_LogModule.pch"
  
  spec.source_files = 'YK_LogModule/Classes/*.{h,m,xib}'
  
  
end

#  pod lib lint YK_LogModule.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_LogModule.podspec --allow-warnings
