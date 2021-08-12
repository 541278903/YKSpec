#
#  Be sure to run `pod spec lint YKOCMediator.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YKOCMediator"
  spec.version      = "0.0.2"
  spec.summary      = "A short description of YKOCMediator."
  spec.description      = <<-DESC
                       组件主控
                       DESC
                       
  spec.homepage     = "https://gitee.com/Edwrard/YKOCMediator"
  
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.source       = { :git => "https://gitee.com/Edwrard/YKOCMediator.git",:tag => spec.version.to_s }
  spec.ios.deployment_target = "10.0"
  spec.framework  = "Foundation"
  
  spec.dependency "YK_ExectionModel/Core"
  spec.source_files = 'YKOCMediator/Classes/*.{h,m}'
  
  spec.resource_bundles = {
      'YKOCMediator' => 'YKOCMediator/Resources/**/*'
  }
  
  
end



#  pod lib lint --sources=https://gitee.com/Edwrard/YKSpec.git,https://github.com/CocoaPods/Specs.git YKOCMediator.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YKOCMediator.podspec --allow-warnings
