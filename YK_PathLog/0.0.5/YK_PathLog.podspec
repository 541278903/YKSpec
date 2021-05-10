#
#  Be sure to run `pod spec lint YK_PathDig.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YK_PathLog"
  spec.version      = "0.0.5"
  spec.summary      = "A short description of YK_PathDig."
  spec.description      = <<-DESC
                       埋点记录
                       DESC
                       
  spec.homepage     = "https://gitee.com/Edwrard/YK_PathLog"
  
  #spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_PathLog.git",:tag => spec.version.to_s }
  spec.ios.deployment_target = "11.0"
  spec.framework  = "Foundation","UIKit"
  #spec.source_files = 'YK_PathLog/*.{h,m}'
    spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  
  # 是否是静态库 这个地方很重要 假如不写这句打出来的包 就是动态库 不能使用
  spec.static_framework  =  true
  spec.vendored_frameworks = 'YK_PathLog.framework'


end



#  pod lib lint YK_PathLog.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_PathLog.podspec --allow-warnings
