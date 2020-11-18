
Pod::Spec.new do |spec|
  spec.name         = "FseOCTool" # 项目名称
  spec.version      = "1.0.6"     # 版本号 与 你仓库的 标签号 对应
  spec.summary      = "iOS 工具集合" # 项目简介
  spec.description  = <<-DESC
  这是一个iOS 工具集合
                   DESC
  spec.homepage     = "https://github.com/Fse1116/FseOCTool" # 你的主页
  spec.license      = "MIT" # 开源证书
  spec.author             = { "zbf" => "823074068@qq.com" } # 作者
  spec.source       = { :git => "https://github.com/Fse1116/FseOCTool.git", :tag => "#{spec.version}" }
    #你的仓库地址
  spec.source_files  = "FseOCTool"# 你代码的位置
  spec.platform     = :ios, "8.0" #平台及支持的最低版本
    
    
  s.frameworks   = "UIKit", "Foundation" #支持的框架
  # spec.frameworks = "SomeFramework", "AnotherFramework"
  # spec.requires_arc = true
  # s.dependency   = "AFNetworking" # 依赖库

end
