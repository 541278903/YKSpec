#  Be sure to run `pod spec lint YK_BaseMediator.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YK_BaseMediator"
  spec.version      = "0.0.8"
  spec.summary      = "A short description of YK_BaseMediator."
  spec.homepage     = "https://gitee.com/Edwrard/YK_BaseMediator.git"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "11.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_BaseMediator.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
  spec.dependency "CTMediator"
  spec.dependency "ReactiveObjC"
  spec.dependency "MJExtension"
  spec.dependency "Masonry"
  spec.dependency "MJRefresh"
  spec.dependency "SDWebImage"
  spec.dependency "YYK_BaseViews/BaseClass"
  spec.dependency "YYK_BaseViews/YKAlert"
  spec.dependency "YKUserManager"
  
  spec.subspec 'MainModel_Mediator' do |m_media|
    m_media.source_files = 'YK_BaseMediator/Classes/MainModel_Mediator/*.{h,m,xib}'
  end
  
  spec.subspec 'Model_YKBase' do |m_ykbase|
      m_ykbase.resources = "YK_BaseMediator/Resources/*.png"
      m_ykbase.source_files = 'YK_BaseMediator/Classes/Model_YKBase/*.{h,m,xib}'
            
      m_ykbase.subspec 'Model' do |model|
            model.source_files = 'YK_BaseMediator/Classes/Model_YKBase/Model/*.{h,m,xib}'
      end
      m_ykbase.subspec 'ViewModel' do |viewModel|
          viewModel.dependency "YK_BaseMediator/Model_YKBase/Model"
          viewModel.source_files = 'YK_BaseMediator/Classes/Model_YKBase/ViewModel/*.{h,m,xib}'
      end
      m_ykbase.subspec 'View' do |view|
            view.dependency "YK_BaseMediator/Model_YKBase/ViewModel"
            view.source_files = 'YK_BaseMediator/Classes/Model_YKBase/View/*.{h,m,xib}'
      end
      m_ykbase.subspec 'Controller' do |controller|
          controller.dependency "YK_BaseMediator/Model_YKBase/View"
          controller.source_files = 'YK_BaseMediator/Classes/Model_YKBase/Controller/*.{h,m,xib}'
      end
    
  end
  
  
end

#  pod lib lint --sources=https://gitee.com/Edwrard/YKSpec.git,https://github.com/CocoaPods/Specs.git YK_BaseMediator.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_BaseMediator.podspec --allow-warnings
