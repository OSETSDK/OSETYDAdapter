Pod::Spec.new do |s|
  s.name         = "OSETYDAdapter"
  s.version      = "2.0.1.0"
  s.summary      = "AdSet广告对接适配器类"
  s.description  = <<-DESC
                    OSETYDAdapter 是一个专业的广告聚合SDK，提供高效的广告展示和收益优化功能。
                    DESC
  s.homepage     = "https://github.com/OSETSDK/OSETYDAdapter"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { 'shenshi' => 'yaohaofei@shenshiads.com' }
  
  # 设置最低支持版本
  s.ios.deployment_target = '12.0'
  
  # 源文件配置
  s.source       = {
    :git => 'https://github.com/OSETSDK/OSETYDAdapter.git',
    :tag => s.version.to_s
  }
  
  # 主框架文件
  # 检查 AdSetQD*Adapter.podspec 关键字段
  s.vendored_frameworks = 'OSETYDAdapter.xcframework'
  
  # 系统框架依赖
  s.frameworks = "Foundation", "UIKit"
  
  # 资源文件
  # Swift版本设置
  s.swift_version = '5.0'
  
  # ================= 第三方依赖库 =================

  s.dependency 'OSETCoreAd','>= 7.0.3.2'
  s.dependency 'YDADSDK', '= 3.0.1'

  s.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

end
