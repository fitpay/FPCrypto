Pod::Spec.new do |s|
  s.name         = "FPCrypto"
  s.version      = "1.0.0"
  s.summary      = "Internal module for FitPaySDK"
  s.description  = "Crypto functions used in FitPaySDK for iOS"
  s.homepage     = "http://www.fit-pay.com"
  s.license      = 'MIT'
  s.authors      =  {'Igor Kravchenko' => 'igman2005@gmail.com'}
  #s.source       = { :git => 'https://github.com/fitpay/FPCrypto.git', :tag => '1.0.0' }
  s.source       = { :git => '.', :commit => '309c3828e1cc4decd9e39bd67616510652bace62' }
  s.source_files = 'source/*.{h,m,map}'
  s.module_map   = 'source/module.map'
  core.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => $(PODS_ROOT)/FPCrypto/source }
  core.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/FPCrypto/source' }
  s.dependency 'OpenSSL-Universal', '~> 1.0'
  s.ios.platform          = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.osx.platform          = :osx, '10.9'
  s.osx.deployment_target = '10.8'
  s.requires_arc = false
end
