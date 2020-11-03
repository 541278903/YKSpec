#  Be sure to run `pod spec lint YYK_BaseViews.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YKUserManager"
  spec.version      = "0.0.4"
  spec.summary      = "A short description of YK_BaseMediator."
  spec.homepage     = "https://gitee.com/Edwrard/YKUserManager.git"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YKUserManager.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
  spec.dependency "MJExtension"
  spec.source_files = 'YKUserManager/Class/*.{h,m}'
  
  
  
  
  
end

#  pod lib lint --sources=https://gitee.com/Edwrard/YKSpec.git,https://github.com/CocoaPods/Specs.git YKUserManager.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YKUserManager.podspec --allow-warnings
