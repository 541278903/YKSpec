#  Be sure to run `pod spec lint YYK_BaseViews.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YYK_BaseViews"
  spec.version      = "1.0.4"
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
  spec.default_subspec = 'BaseClass'
  spec.subspec 'BaseClass' do |ss|
    ss.source_files = 'YYKPodLib_Sec/Classes/BaseClass/**/*.{h,m,xib}'
    
    #ss.resource_bundles = {
    #  'DoraemonKit' => 'iOS/DoraemonKit/Resource/**/*'
    #}
    #ss.dependency 'GCDWebServer'
    #ss.dependency 'GCDWebServer/WebUploader'
    #ss.dependency 'GCDWebServer/WebDAV'
    #ss.dependency 'FMDB'
  end
  
end



#  pod lib lint YYK_BaseViews.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YYK_BaseViews.podspec --allow-warnings
