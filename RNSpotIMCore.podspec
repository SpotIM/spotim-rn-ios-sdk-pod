Pod::Spec.new do |s|
  s.name             = 'RNSpotIMCore'
  s.version          = '1.18.6'
  s.swift_versions = ['5.0']
  s.summary          = 'OpenWeb SDK'
  s.description      = 'This SDK allows you to integrate OpenWeb iOS SDK into your RN app.'
  s.homepage        = "https://www.openweb.com"
  s.license         = { :type => 'CUSTOM', :file => 'LICENSE' }
  s.author          = { 'Alon Haiut' => 'alon.h@openweb.com' }
  s.platform        = :ios
  s.ios.deployment_target = '12.0'
  # Setting pod `BUILD_LIBRARY_FOR_DISTRIBUTION` to `YES`
  s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }

# the Pre-Compiled Framework:
  s.source          = { :git => 'https://github.com/SpotIM/spotim-ios-sdk-pod.git', :tag => s.version.to_s }
  s.ios.resources = 'SpotImAdsProvider/*.swift'
  s.ios.vendored_frameworks = 'SpotImCore.xcframework'
  s.dependency 'RxSwift', '~> 6.5'
  s.dependency 'RxCocoa', '~> 6.5'

end
