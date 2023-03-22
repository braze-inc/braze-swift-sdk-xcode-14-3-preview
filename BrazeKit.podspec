Pod::Spec.new do |s|
  s.name              = 'BrazeKit'
  s.version           = '5.12.0'
  s.summary           = 'Braze Main SDK library providing support for analytics and push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode-14-3-preview/releases/download/5.12.0/BrazeKit.zip',
    :sha256 => 'd1b08c7c705b43a3c2a3d7e226955c054efaf05919f423a45794e788890744b1'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '13.0'
  s.tvos.deployment_target  = '11.0'

  s.vendored_framework      = 'BrazeKit.xcframework'
  s.resource_bundles        = { 'BrazeKit' => ['Sources/BrazeKitResources/Resources/**/*'] }

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
