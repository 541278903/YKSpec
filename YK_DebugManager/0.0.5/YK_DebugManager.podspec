#
#  Be sure to run `pod spec lint YK_DebugManager.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YK_DebugManager"
  spec.version      = "0.0.5"
  spec.summary      = "A short description of YK_DebugManager."
  spec.homepage     = "https://gitee.com/Edwrard/YK_DebugManager"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "11.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_DebugManager.git",:tag => spec.version.to_s }
  spec.framework  = "Foundation","AVFoundation","Photos","Security"
  
  spec.source_files = 'YK_DebugManager/Classes/*.{h,m,xib}'
  #spec.resource_bundles = "YK_DebugManager/Resources/*"
  spec.resource_bundles ={
      'YK_DebugManager' => 'YK_DebugManager/Resources/**/*'
    }

end



#  pod lib lint YK_DebugManager.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_DebugManager.podspec --allow-warnings
