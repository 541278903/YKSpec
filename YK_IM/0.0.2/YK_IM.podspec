#
#  Be sure to run `pod spec lint YK_IM.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YK_IM"
  spec.version      = "0.0.2"
  spec.summary      = "A short description of YK_IM."
  spec.description      = <<-DESC
                       IM登录验证模块
                       DESC
                       
  spec.homepage     = "https://gitee.com/Edwrard/YK_IM"
  
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_IM.git",:tag => spec.version.to_s }
  spec.ios.deployment_target = "11.0"
  spec.framework  = "Foundation","AVFoundation","Photos","Security"
  
  spec.resource_bundles ={
      'YK_IM' => 'YK_IM/Resources/**/*'
  }
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  
  # 是否是静态库 这个地方很重要 假如不写这句打出来的包 就是动态库 不能使用
  spec.static_framework  =  true
  
  spec.dependency 'TXIMSDK_iOS'
  spec.source_files = 'YK_IM/Classes/**/*.{h,m}'


end



#  pod lib lint YK_IM.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_IM.podspec --allow-warnings
