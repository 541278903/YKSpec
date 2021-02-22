#  Be sure to run `pod spec lint YYK_BaseViews.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YYK_BaseViews"
  spec.version      = "1.1.9"
  spec.summary      = "A short description of YYK_BaseViews."
  spec.homepage     = "https://gitee.com/Edwrard/YYK_BaseViews.git"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "11.0"
    spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YYK_BaseViews.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
  spec.resources = "YYKPodLib_Sec/Resources/*"
      
  spec.source_files = 'YYKPodLib_Sec/Classes/*.{h,m}'
  
    
  spec.subspec 'YKNotificationKey' do |notification|
    notification.source_files = 'YYKPodLib_Sec/Classes/YKNotificationKey/*.{h,m}'
  end
  
  spec.subspec 'YKAlert' do |ykalert|
      ykalert.source_files = 'YYKPodLib_Sec/Classes/YKAlert/*.{h,m,xib}'
  end
  
  
  spec.subspec 'BaseClass' do |ss|
    ss.dependency "YK_ExectionModel/YKCore"
    ss.dependency "YK_BaseTools/YKNetWorking"
    ss.dependency "YK_BaseTools/YKDB"
    ss.dependency 'YYK_BaseViews/YKNotificationKey'
    ss.dependency 'YYK_BaseViews/YKAlert'
    ss.dependency "ReactiveObjC"
    ss.dependency "MJExtension"
    ss.dependency "Masonry"
    ss.source_files = 'YYKPodLib_Sec/Classes/BaseClass/*.{h,m}'
    
  end
  
  
  spec.subspec 'SdView' do |sdv|
    sdv.dependency 'YYK_BaseViews/BaseClass'
    sdv.dependency 'YYK_BaseViews/YKAlert'
    sdv.dependency "SDWebImage"
    sdv.source_files = 'YYKPodLib_Sec/Classes/Sdview/*.{h,m,xib}'
    
    sdv.subspec 'Fragment' do |fra|
       fra.source_files = 'YYKPodLib_Sec/Classes/Sdview/Fragment/*.{h,m,xib}'
    end
    
    sdv.subspec 'Banner' do |ban|
       ban.source_files = 'YYKPodLib_Sec/Classes/Sdview/Banner/*.{h,m,xib}'
    end
    
    sdv.subspec 'PhohoSelect' do |photoselect|
       photoselect.source_files = 'YYKPodLib_Sec/Classes/Sdview/PhohoSelect/*.{h,m}'
    end
    
  end
  
end



#  pod lib lint --sources=https://gitee.com/Edwrard/YKSpec.git,https://github.com/CocoaPods/Specs.git YYK_BaseViews.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YYK_BaseViews.podspec --allow-warnings
