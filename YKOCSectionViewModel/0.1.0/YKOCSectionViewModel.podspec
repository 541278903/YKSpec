#
# Be sure to run `pod lib lint YKOCSectionViewModel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YKOCSectionViewModel'
  s.version          = '0.1.0'
  s.summary          = 'A short description of YKOCSectionViewModel.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitee.com/Edwrard/YKOCSectionViewModel'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'edward' => '534272374@qq.com' }
  s.source           = { :git => 'https://gitee.com/Edwrard/YKOCSectionViewModel.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'YKOCSectionViewModel/Classes/*'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'YKOCSectionViewModel/Classes/Core/**/*.{*}'
    ss.resources = "YKOCSectionViewModel/Assets/ic_sectionvm_nodata_image.png"
  end
  
  s.subspec 'RACCore' do |ss|
    
    ss.subspec 'Main' do |sss|
      sss.dependency "ReactiveObjC"
      sss.source_files = 'YKOCSectionViewModel/Classes/RACCore/Main/**/*.{*}'
    end
    ss.subspec 'CollectionView' do |sss|
      sss.dependency 'YKOCSectionViewModel/RACCore/Main'
      sss.source_files = 'YKOCSectionViewModel/Classes/RACCore/CollectionView/**/*.{*}'
    end
    ss.subspec 'TableView' do |sss|
      sss.dependency 'YKOCSectionViewModel/RACCore/Main'
      sss.source_files = 'YKOCSectionViewModel/Classes/RACCore/TableView/**/*.{*}'
    end
  end
  
  
  # s.resource_bundles = {
  #   'YKOCSectionViewModel' => ['YKOCSectionViewModel/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
