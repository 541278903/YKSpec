#
#  Be sure to run `pod spec lint YK_RTC.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YK_RTC"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of YK_RTC."
  spec.description      = <<-DESC
                       即构模块
                       DESC
                       
  spec.homepage     = "https://gitee.com/Edwrard/YK_RTC"
  
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_RTC.git",:tag => spec.version.to_s }
  spec.ios.deployment_target = "10.0"
  spec.framework  = "Foundation","AVFoundation","Photos","Security"
  
  
  spec.dependency 'ZegoExpressEngine'
  spec.source_files = 'YK_RTC/Classes/**/*.{h,m}'
  
  
  #spec.framework  = "Foundation"
  #spec.platform = :ios, '8.0'
  
  #spec.resource_bundles ={
  #    'YK_RTC' => 'YK_RTC/Resources/**/*'
  #  }
  #spec.static_framework = true


end



#  pod lib lint YK_RTC.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_RTC.podspec --allow-warnings
