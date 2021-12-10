#  Be sure to run `pod spec lint YK_SectionViewModel.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "YK_SectionViewModel"
  spec.version      = "0.0.2"
  spec.summary      = "A short description of YK_SectionViewModel."
  spec.homepage     = "https://gitee.com/Edwrard/YK_SectionViewModel.git"
  spec.license      = "MIT"
  spec.author       = { "edward" => "534272374@qq.com" }
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://gitee.com/Edwrard/YK_SectionViewModel.git",:tag => spec.version.to_s }
  spec.framework  = "UIKit","Foundation","AVFoundation","Photos","Security"
  
  
  spec.subspec 'Core' do |ss|
    ss.source_files = 'YK_SectionViewModel/Classes/Core/**/*.{*}'
    ss.resources = "YK_SectionViewModel/Classes/Assets/ic_sectionvm_nodata_image.png"
  end
  
  spec.subspec 'RACCore' do |ss|
    
    ss.subspec 'Main' do |sss|
      sss.dependency "ReactiveObjC"
      sss.source_files = 'YK_SectionViewModel/Classes/RACCore/Main/**/*.{*}'
    end
    ss.subspec 'CollectionView' do |sss|
      sss.dependency 'YK_SectionViewModel/RACCore/Main'
      sss.source_files = 'YK_SectionViewModel/Classes/RACCore/CollectionView/**/*.{*}'
    end
    ss.subspec 'TableView' do |sss|
      sss.dependency 'YK_SectionViewModel/RACCore/Main'
      sss.source_files = 'YK_SectionViewModel/Classes/RACCore/TableView/**/*.{*}'
    end
  end
  
end

#  pod lib lint YK_SectionViewModel.podspec --allow-warnings --verbose
#  push  tag
#  pod repo push YKSpec YK_SectionViewModel.podspec --allow-warnings
