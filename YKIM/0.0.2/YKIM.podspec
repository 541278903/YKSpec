#
#  Be sure to run `pod spec lint YKIM.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YKIM"
  spec.version      = "0.0.2"
  spec.summary      = "A short description of YKIM."
  spec.homepage     = "https://gitee.com/Edwrard/YKIM"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "11.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YKIM.git",:tag => spec.version.to_s }
  spec.framework  = "Foundation","AVFoundation","Photos","VideoToolbox"
  
  #spec.source_files = 'YKIM/BaseSDK/*'
  
  spec.default_subspec = 'YKIMManager'
  
  spec.libraries = "bz2.1.0","iconv","bz2.1.0.5","c++"
  spec.vendored_libraries = 'YKIM/IFYunSDK/libstarRTC.a'
  #spec.vendored_libraries = 'YKIM/BaseSDK/libMobileIMSDK4i_tcp.a'
  
  spec.subspec 'IFYunSDK' do |ifYunSDK|
      ifYunSDK.source_files = 'YKIM/IFYunSDK/*'
  end
  
  spec.subspec 'YKIMManager' do |im|
    im.dependency 'YKIM/IFYunSDK'
    im.source_files = 'YKIM/YKIMManager/*'
  end
  
end



#  pod lib lint YKIM.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YKIM.podspec --allow-warnings
