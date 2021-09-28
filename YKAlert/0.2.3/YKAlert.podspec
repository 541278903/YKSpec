#
# Be sure to run `pod lib lint YKAlert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YKAlert'
  s.version          = '0.2.3'
  s.summary          = 'A short description of YKAlert.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                      YKAlert
                       DESC

  s.homepage         = 'https://gitee.com/Edwrard/YKAlert'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'edward' => '534272374@qq.com' }
  s.source           = { :git => 'https://gitee.com/Edwrard/YKAlert.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'YKAlert/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YKAlert' => ['YKAlert/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

#  pod lib lint YKAlert.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YKAlert.podspec --allow-warnings
