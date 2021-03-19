#  Be sure to run `pod spec lint YK_Views.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YK_Views"
  spec.version      = "1.1.12"
  spec.summary      = "A short description of YK_Views."
  spec.homepage     = "https://gitee.com/Edwrard/YK_Views.git"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "11.0"
    spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_Views.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security","WebKit"
  spec.resource_bundles ={
      'YK_Views' => 'YK_Views/Resources/**/*'
    }

      
  spec.source_files = 'YK_Views/Classes/*.{h,m}'
  
    
  spec.subspec 'YKNotificationKey' do |notification|
    notification.source_files = 'YK_Views/Classes/YKNotificationKey/*.{h,m}'
  end
  
  spec.subspec 'YKAlert' do |ykalert|
      ykalert.source_files = 'YK_Views/Classes/YKAlert/*.{h,m,xib}'
  end
  
  
  spec.subspec 'BaseClass' do |ss|
    ss.dependency "YK_ExectionModel/YKCore"
    ss.dependency "YK_BaseTools/YKNetWorking"
    ss.dependency "YK_BaseTools/YKDB"
    ss.dependency 'YK_Views/YKNotificationKey'
    ss.dependency 'YK_Views/YKAlert'
    ss.dependency "ReactiveObjC"
    ss.dependency "MJExtension"
    ss.dependency "Masonry"
    ss.dependency "FDFullscreenPopGesture"
    ss.source_files = 'YK_Views/Classes/BaseClass/*.{h,m}'
    
  end
  
  spec.subspec 'YKWeb' do |ykweb|
    ykweb.dependency 'YK_Views/BaseClass'
    ykweb.source_files = 'YK_Views/Classes/YKWebController/*.{h,m,xib}'
  end
  
  
  spec.subspec 'SdView' do |sdv|
    sdv.dependency 'YK_Views/BaseClass'
    sdv.dependency 'YK_Views/YKAlert'
    sdv.dependency "SDWebImage"
    sdv.source_files = 'YK_Views/Classes/Sdview/*.{h,m,xib}'
    
    sdv.subspec 'Fragment' do |fra|
       fra.source_files = 'YK_Views/Classes/Sdview/Fragment/*.{h,m,xib}'
    end
    
    sdv.subspec 'Banner' do |ban|
       ban.source_files = 'YK_Views/Classes/Sdview/Banner/*.{h,m,xib}'
    end
    
    sdv.subspec 'PhohoSelect' do |photoselect|
       photoselect.source_files = 'YK_Views/Classes/Sdview/PhohoSelect/*.{h,m}'
    end
    
  end
  
end



#  pod lib lint --sources=https://gitee.com/Edwrard/YKSpec.git,https://github.com/CocoaPods/Specs.git YK_Views.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_Views.podspec --allow-warnings
