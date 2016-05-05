Pod::Spec.new do |s|
  s.name         = "FPCrypto"
  s.version      = "1.0.0"
  s.summary      = "Crypto functions used in FitPaySDK for iOS"
  s.description  = "FitPaySDK. Supports OSX and iOS including Simulator (armv7,armv7s,arm64,i386,x86_64)."
  s.homepage     = "http://www.fit-pay.com"
  s.license      = 'MIT'
  s.source       = 'source/*.{h,m}'
  s.source_files = 'source/*.{h,m}'
  s.authors       =  {'Igor Kravchenko' => 'igman2005@gmail.com'}
  s.dependency 'OpenSSL-Universal', '~> 1.0'
  s.ios.platform          = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.osx.platform          = :osx, '10.9'
  s.osx.deployment_target = '10.8'
  s.requires_arc = false
end
