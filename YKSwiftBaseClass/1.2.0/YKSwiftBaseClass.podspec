
Pod::Spec.new do |s|
  s.name             = 'YKSwiftBaseClass'
  s.version          = '1.2.0'
  s.summary          = 'A short description of YKSwiftBaseClass.'

  s.description      = <<-DESC
              YKMVVM基础组件
                       DESC

  s.homepage         = 'https://gitee.com/Edwrard/YKSwiftBaseClass'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'edward' => '534272374@qq.com' }
  s.source           = { :git => 'https://gitee.com/Edwrard/YKSwiftBaseClass.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  s.source_files = 'YKSwiftBaseClass/Classes/**/*'
  
  s.dependency  "YKSwiftNetworking"
  
  s.resources = "YKSwiftBaseClass/Assets/*.png"
  
end
