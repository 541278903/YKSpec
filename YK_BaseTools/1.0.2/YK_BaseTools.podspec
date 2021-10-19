#
#  Be sure to run `pod spec lint YK_BaseTools.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YK_BaseTools"
  spec.version      = "1.0.2"
  spec.summary      = "A short description of YK_BaseTools."
  spec.homepage     = "https://gitee.com/Edwrard/YK_BaseTools"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "11.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_BaseTools.git",:tag => spec.version.to_s }
  spec.framework  = "Foundation","AVFoundation","Photos","Security"
  
#  spec.source_files = 'YK_BaseTools/Classes/*.{h,m,xib}'
  
  spec.subspec 'UserDefault' do |ykud|
    ykud.source_files = 'YK_BaseTools/Classes/UserDefault/*.{h,m}'

  end
  spec.subspec 'Cache' do |ykcache|
      ykcache.dependency "YYCache"
      ykcache.source_files = 'YK_BaseTools/Classes/Cache/*.{h,m}'
    
  end
  spec.subspec 'MQManager' do |mq|
    mq.dependency "RMQClient"
    mq.source_files = 'YK_BaseTools/Classes/MQManager/*.{h,m}'
    
  end
  spec.subspec 'Socket' do |socket|
    socket.dependency "SocketRocket"
    socket.source_files = 'YK_BaseTools/Classes/Socket/*.{h,m}'
  end
  spec.subspec 'DesHelper' do |des|
    des.source_files = 'YK_BaseTools/Classes/DesHelper/*.{h,m}'
  end
  spec.subspec 'Task' do |task|
    task.source_files = 'YK_BaseTools/Classes/Task/*.{h,m}'
  end
  spec.subspec 'GDataXML-HTML' do |ss|
    ss.source_files = 'YK_BaseTools/Classes/GDataXML-HTML/*.{h,m}'
  end
  spec.subspec 'GTMBase64' do |ss|
    ss.source_files = 'YK_BaseTools/Classes/GTMBase64/*.{h,m}'
  end
  spec.subspec 'Record' do |ss|
    ss.source_files = 'YK_BaseTools/Classes/Record/*.{h,m}'
  end
  spec.subspec 'CountDownManager' do |ss|
    ss.source_files = 'YK_BaseTools/Classes/CountDownManager/*.{h,m}'
  end
  spec.subspec 'AudioManager' do |ss|
    ss.source_files = 'YK_BaseTools/Classes/AudioManager/*.{h,m}'
  end
  spec.subspec 'StatusMachine' do |ss|
    ss.source_files = 'YK_BaseTools/Classes/StatusMachine/*.{h,m}'
  end
  spec.subspec 'PushBannerManager' do |ss|
    ss.source_files = 'YK_BaseTools/Classes/PushBannerManager/*.{h,m}'
  end
  spec.subspec 'VersionManager' do |ss|
    ss.source_files = 'YK_BaseTools/Classes/VersionManager/*.{h,m}'
  end
  
end



#  pod lib lint YK_BaseTools.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_BaseTools.podspec --allow-warnings
