Pod::Spec.new do |s|
  s.name             = 'OSETYDAdapter'
  s.version          = '2.0.1.2'
  s.summary          = '有道移动广告 SDK 适配器'
  s.description      = '把 YDADSDK 3.0.1 的开屏、Native、NativeData 和激励视频接入 OSET 聚合层。'
  s.homepage         = 'https://github.com/OSETSDK/OSETYDAdapter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shenshi' => 'yaohaofei@shenshiads.com' }

  s.source           = { :git => 'https://github.com/OSETSDK/OSETYDAdapter.git', :tag => s.version.to_s }

  s.platform         = :ios, '12.0'
  s.swift_versions   = '5.0'
  s.vendored_frameworks = 'OSETYDAdapter.xcframework'
  s.frameworks        = 'Foundation', 'UIKit'

  # 保持既有已发布版本的 Core 下限，避免接入缺少所需协议的旧基座。
  s.dependency 'OSETCoreAd', '>= 7.0.3.2'
  s.dependency 'YDADSDK', '= 3.0.1'

  # Core 通过 NSClassFromString 查找适配器类；静态库必须把 Objective-C 类强制拉进宿主。
  s.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
end
