#
#  Be sure to run `pod spec lint YKMediator_NormalModule.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YKMediator_NormalModule"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of YKMediator_NormalModule."
  spec.description      = <<-DESC
                       农场模块
                       DESC
                       
  spec.homepage     = "https://gitee.com/Edwrard/YKMediator_NormalModule"
  
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.source       = { :git => "https://gitee.com/Edwrard/YKMediator_NormalModule.git",:tag => spec.version.to_s }
  spec.ios.deployment_target = "11.0"
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
  spec.resource_bundles = {
      'YKMediator_NormalModule' => 'YKMediator_NormalModule/Resources/**/*'
  }
  spec.dependency "YK_Views/CommonViews"
  spec.dependency "YK_Views/YKAlert"
  spec.dependency "YK_ExectionModel"
  spec.dependency 'YK_TableRefresh'
  spec.dependency "ReactiveObjC"
  spec.dependency "MJExtension"
  spec.dependency "Masonry"
  spec.dependency "MJRefresh"
  spec.dependency "SDWebImage"
  spec.source_files = 'YKMediator_NormalModule/Classes/*.{*}'
  
  spec.subspec 'Model' do |model|
      model.source_files = 'YKMediator_NormalModule/Classes/Model/*.*'
  end
  spec.subspec 'ViewModel' do |viewModel|
      viewModel.dependency "YKMediator_NormalModule/Model"
      viewModel.source_files = 'YKMediator_NormalModule/Classes/ViewModel/*.*'
  end
  spec.subspec 'View' do |view|
        view.dependency "YKMediator_NormalModule/ViewModel"
        view.source_files = 'YKMediator_NormalModule/Classes/View/*.*'
  end
  spec.subspec 'Controller' do |controller|
      controller.dependency "YKMediator_NormalModule/View"
      controller.source_files = 'YKMediator_NormalModule/Classes/Controller/*.*'
  end
  
end



#  pod lib lint --sources=https://gitee.com/Edwrard/YKSpec.git,https://github.com/CocoaPods/Specs.git YKMediator_NormalModule.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YKMediator_NormalModule.podspec --allow-warnings
