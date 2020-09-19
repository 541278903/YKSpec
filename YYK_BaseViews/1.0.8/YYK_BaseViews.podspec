#  Be sure to run `pod spec lint YYK_BaseViews.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YYK_BaseViews"
  spec.version      = "1.0.8"
  spec.summary      = "A short description of YYK_BaseViews."
  spec.homepage     = "https://gitee.com/Edwrard/YYK_BaseViews.git"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YYK_BaseViews.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
  
  spec.dependency "ReactiveObjC"
  spec.dependency "MJExtension"
  spec.dependency "Masonry"
  spec.dependency "MJRefresh"
  spec.dependency "SDWebImage"
  #spec.source_files = 'YYKPodLib_Sec/Classes/**/**/*.{h,m,xib}'
  #spec.default_subspec = 'BaseClass'
  
  
  spec.subspec 'BaseClass' do |ss|
    ss.source_files = 'YYKPodLib_Sec/Classes/BaseClass/**/*.{h,m,xib}'
    
  end
  
  spec.subspec 'SdView' do |sdv|
  
    sdv.source_files = 'YYKPodLib_Sec/Classes/Sdview/**/*.{h,m,xib}'
    sdv.dependency 'YYK_BaseViews/BaseClass'
  end
  
  spec.subspec 'Exection' do |ex|
  
    #ex.source_files = 'YYKPodLib_Sec/Classes/Exection/**/*.{h,m,xib}'
    #ex.dependency 'YYK_BaseViews/BaseClass'
    
    
    ex.subspec 'Third' do |third|
        third.source_files = 'YYKPodLib_Sec/Classes/Exection/Third/*.{h,m,xib}'
        third.dependency 'YYK_BaseViews/BaseClass'
    end
    
    ex.subspec 'YYKUIK' do |ykuik|
        ykuik.source_files = 'YYKPodLib_Sec/Classes/Exection/YYKUIK/*.{h,m,xib}'
        ykuik.dependency 'YYK_BaseViews/BaseClass'
    end
    
    ex.subspec 'YYKNSObject' do |ykobject|
        ykobject.source_files = 'YYKPodLib_Sec/Classes/Exection/YYKNSObject/*.{h,m,xib}'
        ykobject.dependency 'YYK_BaseViews/BaseClass'
    end
    
  end
  
end



#  pod lib lint YYK_BaseViews.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YYK_BaseViews.podspec --allow-warnings
