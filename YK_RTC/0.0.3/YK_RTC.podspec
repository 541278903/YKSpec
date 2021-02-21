#
#  Be sure to run `pod spec lint YK_RTC.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YK_RTC"
  spec.version      = "0.0.3"
  spec.summary      = "A short description of YK_RTC."
  spec.description      = <<-DESC
                       即构模块二次开发
                       后续将加入腾讯TRTC模块的二次开发
                       DESC
                       
  spec.homepage     = "https://gitee.com/Edwrard/YK_RTC"
  
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_RTC.git",:tag => spec.version.to_s }
  spec.ios.deployment_target = "11.0"
  spec.framework  = "Foundation","AVFoundation","Photos","Security"
  
  spec.resource_bundles ={
      'YK_RTC' => 'YK_RTC/Resources/**/*'
  }
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  
  # 是否是静态库 这个地方很重要 假如不写这句打出来的包 就是动态库 不能使用
  spec.static_framework  =  true
  
  spec.subspec 'Zego' do |zego|
    zego.dependency 'ZegoExpressEngine'
    zego.dependency 'MJExtension'
    zego.source_files = 'YK_RTC/Classes/Zego/*.{h,m}'
  end
  spec.subspec 'TRTC' do |trtc|
    trtc.dependency 'TXLiteAVSDK_TRTC'
    trtc.dependency 'AFNetworking'
    trtc.dependency 'MJExtension'
    trtc.source_files = 'YK_RTC/Classes/TRTC/*.{h,m}'
  end


end



#  pod lib lint YK_RTC.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_RTC.podspec --allow-warnings
