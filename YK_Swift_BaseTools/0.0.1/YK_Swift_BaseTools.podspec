#
#  Be sure to run `pod spec lint YK_Swift_BaseTools.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = "YK_Swift_BaseTools"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of YK_Swift_BaseTools."
  spec.description      = <<-DESC

                       通用模块
                       
                       DESC
                       
  spec.homepage     = "https://gitee.com/Edwrard/YK_Swift_BaseTools"
  
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_Swift_BaseTools.git",:tag => spec.version.to_s }
  spec.ios.deployment_target = "9.0"
  spec.swift_version = '4.0'
  spec.framework  = "Foundation","AVFoundation","Photos","Security"
  
  #spec.resource_bundles ={
  #    'YK_Swift_BaseTools' => 'YK_Swift_BaseTools/Resources/**/*'
  #}
  spec.subspec 'SwiftyJSON' do |ss|
    ss.source_files = 'YK_Swift_BaseTools/Classes/SwiftyJSON/*.{swift}'
  end
  
  spec.source_files = 'YK_Swift_BaseTools/Classes/**/*.{swift}'


end



#  pod lib lint YK_Swift_BaseTools.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_Swift_BaseTools.podspec --allow-warnings
