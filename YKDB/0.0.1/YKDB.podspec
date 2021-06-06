#  Be sure to run `pod spec lint YKDB.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YKDB"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of YKDB."
  spec.homepage     = "https://gitee.com/Edwrard/YKDB.git"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YKDB.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
    
  spec.dependency "FMDB"
  spec.dependency "MJExtension"
  
  #spec.prefix_header_file = "YKDB.pch"
  
  spec.source_files = 'YKDB/Classes/*.{h,m,xib}'
  
  
end

#  pod lib lint YKDB.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YKDB.podspec --allow-warnings
