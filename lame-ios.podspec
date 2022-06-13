libmp3lame = 'libmp3lame'

NAME = "lame-ios"
VERSION = "3.100"

Pod::Spec.new do |s|

  s.name         = "#{NAME}"
  s.version      = "#{VERSION}"
  s.summary      = "A pod repo of 3.100 lame static libraries for ios."
  s.description  = "FFmpeg code base"

  s.homepage     = "https://github.com/limitLiu/lame-ios"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Limit" => "limitliu@qq.com" }
  s.requires_arc = false
  s.source       = { :git => "https://github.com/limitLiu/lame-ios", :tag => "#{s.version}" }

  s.ios.deployment_target = '10.0'
  s.ios.preserve_paths = "src/ios/#{s.version}/include"
  s.ios.header_mappings_dir = "src/ios/#{s.version}/include"

  s.ios.source_files        = "src/ios/#{s.version}/include/#{libmp3lame}/*.h"
  s.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libmp3lame}.a"
  s.ios.public_header_files = "src/ios/#{s.version}/include/#{libmp3lame}/*.h"

end
