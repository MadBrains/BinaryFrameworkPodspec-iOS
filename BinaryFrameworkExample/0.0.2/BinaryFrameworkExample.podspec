Pod::Spec.new do |s|

  s.name = 'BinaryFrameworkExample'
  s.version = '0.0.2'
  
  s.author = { 'Mad Brains' => 'madbrains.ru@gmail.com' }
  s.homepage = 'https://madbrains.ru/'
  s.license = { :type => 'MIT' }
  s.summary = 'Binary Framework Example for iOS'
  
  s.ios.deployment_target = '12.1'
  s.swift_version = '5.0'
  s.source = { :git => 'https://github.com/MadBrains/BinaryFrameworkPod-iOS.git', :tag => s.version.to_s }

  s.dependency 'RealmSwift', '10.25.0'
  s.dependency 'Alamofire', '5.5.0'

  s.vendored_frameworks = "BinaryFrameworkExample.xcframework"

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end