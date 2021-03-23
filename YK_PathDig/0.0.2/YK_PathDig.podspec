#
#  Be sure to run `pod spec lint YK_PathDig.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YK_PathDig"
  spec.version      = "0.0.2"
  spec.summary      = "A short description of YK_PathDig."
  spec.description      = <<-DESC
                       埋点记录
                       DESC
                       
  spec.homepage     = "https://gitee.com/Edwrard/YK_PathDig"
  
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_PathDig.git",:tag => spec.version.to_s }
  spec.ios.deployment_target = "10.0"
  spec.framework  = "Foundation"
  
  
  spec.source_files = 'YK_PathDig/Classes/**/*.{h,m}'


end



#  pod lib lint YK_PathDig.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_PathDig.podspec --allow-warnings
