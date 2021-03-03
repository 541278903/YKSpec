#
#  Be sure to run `pod spec lint YK_BigData.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YK_BigData"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of YK_BigData."
  spec.homepage     = "https://gitee.com/Edwrard/YK_BigData"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "11.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_BigData.git",:tag => spec.version.to_s }
  spec.framework  = "Foundation","AVFoundation","Photos","Security","AssetsLibrary","CoreLocation","Contacts","EventKit"
  
  spec.source_files = 'YK_BigData/Classes/*.{h,m,xib}'
  spec.resource_bundles ={
      'YK_BigData' => 'YK_BigData/Resources/**/*'
    }

end



#  pod lib lint YK_BigData.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_BigData.podspec --allow-warnings
