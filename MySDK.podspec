Pod::Spec.new do |s|
  s.name         = "MySDK"
  s.version      = "0.1.0"
  s.summary      = "私有SDK，内部封装Alamofire网络，对外屏蔽第三方库"
  s.homepage     = "https://github.com/likaif/MySDKRepo"
  s.license      = { :type => "MIT" }
  s.author       = { "likaif" => "26630859@qq.com" }

  s.source       = { :git => "https://github.com/likaif/MySDKRepo.git", :tag => s.version.to_s }

  s.platform     = :ios, '15.0'
  s.swift_version = '5.0'

  s.source_files  = "Sources/**/*.{swift,h,m}"

  # ========== 重点：SDK内部依赖Alamofire，主App不用写 ==========
  s.dependency "Alamofire", "~> 5.9"
end