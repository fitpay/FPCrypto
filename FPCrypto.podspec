Pod::Spec.new do |s|
  s.name         = "FPCrypto"
  s.version      = "1.0.0"
  s.summary      = "Internal module for FitPaySDK"
  s.description  = "Crypto functions used in FitPaySDK for iOS"
  s.homepage     = "http://www.fit-pay.com"
  s.license      = 'MIT'
  s.authors      =  {'Igor Kravchenko' => 'igman2005@gmail.com'}
  s.source       = { :git => 'https://github.com/fitpay/FPCrypto.git', :tag => '1.0.0' }
  #s.source       = { :git => '.', :commit => '6eb63c78857d67f962073c12e01121d21fc36793' }
  s.source_files = 'source/*.{h,_modulemap}'
  #s.module_map   = 'module.modulemap'
  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/FPCrypto/source' }
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/FPCrypto/source' }
  s.dependency 'OpenSSL-Universal', '~> 1.0'
  s.ios.platform          = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.osx.platform          = :osx, '10.9'
  s.osx.deployment_target = '10.8'
  s.requires_arc = false
end

post_install do |installer|
  system("mv $(PODS_ROOT)/FPCrypto/source/module._modulemap $(PODS_ROOT)/FPCrypto/source/module.modulemap")
end
