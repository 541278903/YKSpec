
Pod::Spec.new do |s|
  s.name             = 'YKUMSDK'
  s.version          = '0.1.0'
  s.summary          = '针对友盟SDK的一次封装，将各种UM功能集成使用到一个包内，利用subspec进行分工'


  s.description      = <<-DESC
        针对友盟SDK的一次封装，将各种UM功能集成使用到一个包内，利用subspec进行分工
                       DESC

  s.homepage         = 'https://gitee.com/Edwrard/YKUMSDK'
  
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'edward' => '1130484708@qq.com' }
  s.source           = { :git => 'https://gitee.com/Edwrard/YKUMSDK.git', :tag => s.version.to_s }
  

  s.ios.deployment_target = '9.0'

  
  s.default_subspec = 'BaseModule'
  s.static_framework = true
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  
  s.subspec "BaseModule" do |ss|
      ss.source_files = 'YKUMSDK/Classes/BaseModule/*'

      ss.dependency 'UMCommon'
      ss.dependency 'UMDevice'
  end

  s.subspec 'Log' do |ss|
      ss.source_files = 'YKUMSDK/Classes/LogModule/*'
      ss.dependency 'YKUMSDK/BaseModule'
      ss.dependency 'UMCCommonLog'
  end

  s.subspec 'APM' do |ss|
    ss.source_files = 'YKUMSDK/Classes/APMModule/*'
    ss.dependency 'YKUMSDK/BaseModule'
    ss.dependency 'UMAPM'
  end
  
end
