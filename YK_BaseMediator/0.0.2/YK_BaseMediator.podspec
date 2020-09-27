#  Be sure to run `pod spec lint YYK_BaseViews.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YK_BaseMediator"
  spec.version      = "0.0.2"
  spec.summary      = "A short description of YK_BaseMediator."
  spec.homepage     = "https://gitee.com/Edwrard/YK_BaseMediator.git"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_BaseMediator.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
  spec.dependency "CTMediator"
  
  spec.subspec 'Model_YKBase' do |m_ykbase|
    m_ykbase.source_files = 'YK_BaseMediator/Classes/Model_YKBase/*.{h,m,xib}'
    m_ykbase.resources = "YK_BaseMediator/Resources/ic_askroom_image_delete@2x.png","YK_BaseMediator/Resources/ic_askroom_image_delete@3x.png"
  end
  spec.subspec 'MainModel_Mediator' do |m_media|
    m_media.source_files = 'YK_BaseMediator/Classes/MainModel_Mediator/*.{h,m,xib}'
  end
  #spec.subspec 'Exection' do |ex|
  
    #ex.subspec 'Third' do |third|
        #third.source_files = 'YK_BaseMediator/Classes/Exection/Third/*.{h,m,xib}'
        #third.dependency 'YK_BaseMediator/BaseClass'
    #end
    
  #end
  
end

#  pod lib lint YK_BaseMediator.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_BaseMediator.podspec --allow-warnings
