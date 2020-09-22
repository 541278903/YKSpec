#  Be sure to run `pod spec lint YYK_BaseViews.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YK_BaseMediator"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of YK_BaseMediator."
  spec.homepage     = "https://gitee.com/Edwrard/YK_BaseMediator.git"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_BaseMediator.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
  spec.dependency "CTMediator"
  
  spec.subspec 'TextModel' do |test_mo|
    test_mo.source_files = 'YK_BaseMediator/Classes/TextModel/*.{h,m,xib}'
    test_mo.resources = "YK_BaseMediator/Resources/ic_askroom_image_delete@2x.png","YK_BaseMediator/Resources/ic_askroom_image_delete@3x.png"
  end
  spec.subspec 'TextModel_Mediator' do |test_me|
    test_me.source_files = 'YK_BaseMediator/Classes/TextModel_Mediator/*.{h,m,xib}'
    
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
