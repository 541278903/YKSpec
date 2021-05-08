#
#  Be sure to run `pod spec lint YK_Swift_CommandModule.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YK_Swift_CommandModule"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of YK_Swift_CommandModule."
  spec.description      = <<-DESC

                       通用模块
                       
                       DESC
                       
  spec.homepage     = "https://gitee.com/Edwrard/YK_Swift_CommandModule"
  
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_Swift_CommandModule.git",:tag => spec.version.to_s }
  spec.ios.deployment_target = "9.0"
  spec.swift_version = '4.0'
  spec.framework  = "Foundation","AVFoundation","Photos","Security"
  
  #spec.resource_bundles ={
  #    'YK_Swift_CommandModule' => 'YK_Swift_CommandModule/Resources/**/*'
  #}
  
  spec.source_files = 'YK_Swift_CommandModule/Classes/**/*.{swift}'


end



#  pod lib lint YK_Swift_CommandModule.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_Swift_CommandModule.podspec --allow-warnings
