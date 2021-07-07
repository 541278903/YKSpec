#  Be sure to run `pod spec lint YK_SectionViewModel.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YK_SectionViewModel"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of YK_SectionViewModel."
  spec.homepage     = "https://gitee.com/Edwrard/YK_SectionViewModel.git"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_SectionViewModel.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
  
  #spec.dependency 'YK_ExectionModel/YKUIKit'
  
  #spec.prefix_header_file = "YK_SectionViewModel.pch"
  
  spec.dependency "ReactiveObjC"
  spec.source_files = 'YK_SectionViewModel/Classes/**/*.{h,m,xib}'
  
  
end

#  pod lib lint YK_SectionViewModel.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_SectionViewModel.podspec --allow-warnings
