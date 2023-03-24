Pod::Spec.new do |s|
  s.name              = 'BrazeLocation'
  s.version           = '5.13.0'
  s.summary           = 'Braze location library providing support for location analytics and geofence monitoring.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazelocation/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode-14-3-preview/releases/download/5.13.0/BrazeLocation.zip',
    :sha256 => '7558e2c529ca1b376392d419b2ec327031f566716f2132fbe0352f9479bb5412'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '13.0'
  s.tvos.deployment_target  = '11.0'

  s.vendored_framework      = 'BrazeLocation.xcframework'

  # Depends on BrazeKit because BrazeKit includes the internal _BrazeLocationClient symbols required
  # for linking against BrazeLocation.
  s.dependency 'BrazeKit', '5.13.0'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
