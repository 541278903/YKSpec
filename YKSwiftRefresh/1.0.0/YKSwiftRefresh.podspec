#
# Be sure to run `pod lib lint YKSwiftRefresh.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YKSwiftRefresh'
  s.version          = '1.0.0'
  s.summary          = 'YKSwiftRefresh'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                YKSwiftRefresh
                       DESC

  s.homepage         = 'https://gitee.com/Edwrard/YKSwiftRefresh'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'edward' => 'edward' }
  s.source           = { :git => 'https://gitee.com/Edwrard/YKSwiftRefresh.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'YKSwiftRefresh/Classes/**/*'
  
  s.dependency 'MJRefresh'
end
