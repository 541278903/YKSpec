#  Be sure to run `pod spec lint YK_TableRefresh.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YK_TableRefresh"
  spec.version      = "0.0.4"
  spec.summary      = "A short description of YK_TableRefresh."
  spec.homepage     = "https://gitee.com/Edwrard/YK_TableRefresh.git"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "11.0"
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_TableRefresh.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
  
  spec.resource_bundles ={
      'YK_TableRefresh' => 'YK_TableRefresh/Resources/**/*'
  }
  spec.dependency 'YKOCBaseClass'
  spec.dependency "MJRefresh","3.1.17"
  spec.source_files = 'YK_TableRefresh/Classes/*.{h,m}'
  
   
  
end


#  pod lib lint --sources=https://gitee.com/Edwrard/YKSpec.git,https://github.com/CocoaPods/Specs.git YK_TableRefresh.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_TableRefresh.podspec --allow-warnings


