#
# Be sure to run `pod lib lint YKPushManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YKPushManager'
  s.version          = '1.0.0'
  s.summary          = 'A short description of YKPushManager.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
            推送工具 依赖个推及友盟
                       DESC

  s.homepage         = 'https://gitee.com/Edwrard/YKPushManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'edward' => '534272374@qq.com' }
  s.source           = { :git => 'https://gitee.com/Edwrard/YKPushManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.3'
  s.static_framework = true
  s.framework  = "Foundation","UserNotifications","UIKit"

  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
#  s.source_files = 'YKPushManager/Classes/**/*'
  s.subspec 'YKGeTuiManager' do |ss|
    ss.dependency 'GTSDK','2.5.9.0'
    ss.source_files = 'YKPushManager/Classes/YKGeTuiManager/*'
  end
  s.subspec 'YKUmengManager' do |ss|
    ss.dependency 'UMCCommon','7.3.0'
    ss.source_files = 'YKPushManager/Classes/YKUmengManager/*'
  end
  
  # s.resource_bundles = {
  #   'YKPushManager' => ['YKPushManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

#  pod lib lint YKPushManager.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YKPushManager.podspec --allow-warnings
