# YKSpec

[![Platform](https://img.shields.io/badge/platform-iOS-red.svg)](https://developer.apple.com/iphone/index.action) [![Language](http://img.shields.io/badge/language-OC-yellow.svg?style=flat )](https://en.wikipedia.org/wiki/Objective-C) [![License](https://img.shields.io/badge/license-MIT-blue.svg)](http://mit-license.org) [![CocoaPods Compatible](https://img.shields.io/badge/cocoapod-last-green.svg)](https://gitee.com/Edwrard/YKSpec)

## 添加本源
在本地cocopods库中添加本源

```
pod repo add YKSpec https://github.com/541278903/YKSpec.git
```


在Podfile顶部添加

```
source 'https://github.com/541278903/YKSpec.git'
source 'https://github.com/CocoaPods/Specs.git'

```

## <a name="oc">核心仓库</a>

- 'YKSwiftNetworking' 
- 主要为网络请求封装（基于Alamofire）。
- 链式编程
- 源地址:https://github.com/541278903/YKSwiftNetworking.git
```
pod 'YKSwiftNetworking'
```

- 'YKSwiftRefresh' 
- 主要为swift组件化基础库。
- 二次封装，随心更换核心源
- 源地址:https://github.com/541278903/YKSwiftRefresh.git
```
pod 'YKSwiftRefresh'
```

- 'YKSwiftSectionViewModel' 
- 可适用于mvvm框架下的，分布式层级管理view
- 源地址:https://github.com/541278903/YKSwiftSectionViewModel.git
```
pod 'YKSwiftSectionViewModel'
```

- 'YKStoreKit' 
- 支付组件
- 源地址:https://github.com/541278903/YKStoreKit.git
```
pod 'YKStoreKit'
```



## <a name="oc">主要仓库(OC)</a>


- YKOCTools    
- 主要为工具类的封装，如BASE64等，另外封装录音机，播放器，长链接等实用工具
- 源地址:https://gitee.com/Edwrard/YKOCTools.git
```
pod 'YKOCTools'
pod 'YKOCTools/Socket'
pod 'YKOCTools/Cache'
```
- YKOCMediator 
- 主要为组件库，封装一些组件页面提供使用。
- 源地址:https://gitee.com/Edwrard/YKOCMediator.git
```
pod 'YKOCMediator'
```

- YKDebugManager 
- 主要为模仿哆啦A梦编写的debug工具类。
- 源地址:https://gitee.com/Edwrard/YKDebugManager.git
```
pod 'YKDebugManager'

```
- YKOCExection 
- 主要为拓展类库，提供各种便捷的分类方法，给业务开发快速提供支持。
- 源地址:https://gitee.com/Edwrard/YKOCExection.git
```
pod 'YKOCExection'
```

- YKOCSectionViewModel 
- 主要为负责度较高且能服用的模块设计。
- 源地址:https://gitee.com/Edwrard/YKOCSectionViewModel.git
```
pod 'YKOCSectionViewModel'
```

- YKOpenUDID 
- 主要为负责获取唯一值。
- 源地址:https://gitee.com/Edwrard/YKOpenUDID
```
pod 'YKOpenUDID'
```

## <a name="swift">主要仓库(swift)</a>

- YKSwiftCommandModule 
- 主要为常规组件 一些重复琐碎的项目必有内容 如自定义AppDelegate。
- 源地址:https://gitee.com/Edwrard/YKSwiftCommandModule.git
```
pod 'YKSwiftCommandModule'
```

- YKSwiftBaseTools 
- 主要为工具类的封装（UserDefault,加解密，队列)。
- 源地址:https://gitee.com/Edwrard/YKSwiftBaseTools.git
```
pod 'YKSwiftBaseTools'
```

- YKSwiftExectionModel 
- 主要为swift的分类。
- 源地址:https://gitee.com/Edwrard/YKSwiftExectionModel.git
```
pod 'YKSwiftExectionModel'
```


