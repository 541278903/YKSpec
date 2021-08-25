#  Be sure to run `pod spec lint YK_Views.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YK_Views"
  spec.version      = "1.3.0"
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

      
  #spec.source_files = 'YK_Views/Classes/*.{h,m}'
  
    
  spec.subspec 'NotificationKey' do |notification|
    notification.source_files = 'YK_Views/Classes/YKNotificationKey/*.{h,m}'
  end
  
  
  
  spec.subspec 'CommonViews' do |ss|
    ss.source_files = 'YK_Views/Classes/CommonViews/*.{h,m}'
    
  end
  
  spec.subspec 'Web' do |ss|
    ss.dependency 'YK_Views/CommonViews'
    ss.dependency 'FDFullscreenPopGesture'
    ss.source_files = 'YK_Views/Classes/YKWeb/*.{h,m,xib}'
  end
  
  spec.subspec 'SdView' do |sdv|
    sdv.dependency 'YKAlert'
    sdv.dependency "SDWebImage"
    sdv.dependency "YK_ExectionModel/Core"
    sdv.dependency "Masonry"
    sdv.dependency "ReactiveObjC"
    sdv.source_files = 'YK_Views/Classes/Sdview/*.{h,m,xib}'
  end
  spec.subspec 'Banner' do |ss|
    ss.dependency "Masonry"
    ss.dependency "SDWebImage"
    ss.source_files = 'YK_Views/Classes/Banner/*.{h,m,xib}'
  end
  
  spec.subspec 'PhohoSelect' do |ss|
    ss.dependency "Masonry"
    ss.dependency "ReactiveObjC"
    ss.dependency "SDWebImage"
    ss.dependency "YK_ExectionModel/Core"
    ss.dependency 'YK_Views/CommonViews'
    ss.source_files = 'YK_Views/Classes/PhohoSelect/*.{h,m}'
  end
  
  spec.subspec 'Button' do |ss|
    ss.dependency "Masonry"
    ss.source_files = 'YK_Views/Classes/YKButton/*.{h,m}'
  end
  spec.subspec 'popUtit' do |ykpop|
    ykpop.dependency 'ReactiveObjC'
    ykpop.dependency 'pop'
    ykpop.source_files = 'YK_Views/Classes/popUtit/*.{h,m}'
  end
  
  spec.subspec 'ImageBrowser' do |ss|
    
    ss.dependency "YK_ExectionModel/UIKit"
    ss.dependency 'YKAlert'
    ss.dependency "SDWebImage"
    ss.source_files = 'YK_Views/Classes/ImageBrowser/*.{h,m}'
  end
  
  spec.subspec 'TextView' do |ss|
    ss.dependency "ReactiveObjC"
    ss.dependency "Masonry"
    ss.dependency "YK_ExectionModel/Core"
    ss.source_files = 'YK_Views/Classes/YKTextView/*.{h,m}'
    
  end
  
  spec.subspec 'VideoPlayer' do |ss|
    ss.framework = "AVKit"
    ss.dependency 'Masonry'
    ss.dependency 'Aspects'
    ss.dependency 'ReactiveObjC'
    ss.dependency 'YK_Views/CommonViews'
    ss.dependency 'YK_ExectionModel/Core'
    ss.source_files = 'YK_Views/Classes/VideoPlayer/*.{h,m}'
  end
  
  spec.subspec 'CityView' do |ss|
    ss.source_files = 'YK_Views/Classes/CityView/*'
  end
  spec.subspec 'TimePicker' do |ss|
    ss.dependency "YK_ExectionModel/UIKit"
    ss.source_files = 'YK_Views/Classes/TimePicker/*'
  end
  spec.subspec 'TagsView' do |ss|
    ss.dependency "YK_ExectionModel/Core"
    ss.dependency "ReactiveObjC"
    ss.source_files = 'YK_Views/Classes/TagsView/*'
  end
  spec.subspec 'Fragment' do |ss|
    ss.source_files = 'YK_Views/Classes/Fragment/*'
  end
  
    
  
end



  #  pod lib lint --sources=https://gitee.com/Edwrard/YKSpec.git,https://github.com/CocoaPods/Specs.git YK_Views.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_Views.podspec --allow-warnings
