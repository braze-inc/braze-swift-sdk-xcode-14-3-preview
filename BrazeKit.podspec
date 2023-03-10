Pod::Spec.new do |s|
  s.name              = 'BrazeKit'
  s.version           = '5.11.2'
  s.summary           = 'Braze Main SDK library providing support for analytics and push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode-14-3-preview/releases/download/5.11.2/BrazeKit.zip',
    :sha256 => 'be4024de17b76d5fd2a044b63686e89159691815a060b492040ba3fef3be97fb'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '13.0'
  s.tvos.deployment_target  = '11.0'

  s.vendored_framework      = 'BrazeKit.xcframework'
  s.resource_bundles        = { 'BrazeKit' => ['Sources/BrazeKitResources/Resources/**/*'] }

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
