require 'json'

Pod::Spec.new do |s|
  package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

  s.name          = "RNFastImage"
  s.version       = package['version']
  s.summary       = package['description']
  s.authors       = { "Taymoor" => "taymoor.khan@magiceden.com" }
  s.homepage      = "https://github.com/metaymoor/react-native-fast-image-tk"
  s.license       = "MIT"
  s.platforms     = { :ios => "8.0", :tvos => "9.0" }
  s.framework     = 'UIKit'
  s.requires_arc  = true
  s.source        = { :git => "https://github.com/metaymoor/react-native-fast-image-tk.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React-Core'
  s.dependency 'SDWebImage', '~> 5.19.1'
  s.dependency 'SDWebImageWebPCoder', '~> 0.14.6'
end
