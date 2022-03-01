Pod::Spec.new do |spec|

  spec.name         = "YKDebugManager"
  spec.version      = "0.1.1"
  spec.summary      = "A short description of YKDebugManager."
  spec.homepage     = "https://gitee.com/Edwrard/YKDebugManager"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "11.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YKDebugManager.git",:tag => spec.version.to_s }
  spec.framework  = "Foundation","AVFoundation","Photos","QuickLook"
  
  spec.source_files = 'YKDebugManager/Classes/*.{h,m,xib}'
  spec.resources = "YKDebugManager/Assets/**/*"
  
end
