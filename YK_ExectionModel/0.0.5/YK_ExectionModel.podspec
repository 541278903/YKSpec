#  Be sure to run `pod spec lint YK_ExectionModel.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YK_ExectionModel"
  spec.version      = "0.0.5"
  spec.summary      = "A short description of YK_ExectionModel."
  spec.homepage     = "https://gitee.com/Edwrard/YK_ExectionModel.git"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "9.0"
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_ExectionModel.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
  spec.source_files = 'YK_ExectionModel/Classes/*.{h,m}'
  
  spec.subspec 'Const' do |ss|
    ss.source_files = 'YK_ExectionModel/Classes/Const/*.{h,m,xib}'
  end
  
  spec.subspec 'Core' do |ss|
    ss.dependency "ReactiveObjC"
    ss.dependency "YK_ExectionModel/Const"
    ss.source_files = 'YK_ExectionModel/Classes/YKNSObject/Core/*.*',
    'YK_ExectionModel/Classes/YKUIKit/Core/*.*'
  end
   
  spec.subspec 'UIKit' do |ykuikit|
    ykuikit.dependency "YK_ExectionModel/Core"
    ykuikit.source_files = 'YK_ExectionModel/Classes/YKUIKit/*.{h,m,xib}'
  end
    
  spec.subspec 'NSObject' do |ykobject|
    ykobject.dependency "MJExtension"
    ykobject.source_files = 'YK_ExectionModel/Classes/YKNSObject/*.{h,m,xib}'
  end
  
end


