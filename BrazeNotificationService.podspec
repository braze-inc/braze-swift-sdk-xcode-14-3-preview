Pod::Spec.new do |s|
  s.name              = 'BrazeNotificationService'
  s.version           = '5.11.1'
  s.summary           = 'Braze notification service extension library providing support for Rich Push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazenotificationservice/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode-14-3-preview/releases/download/5.11.1/BrazeNotificationService.zip',
    :sha256 => '893d29230f43557fb0c8ed5bac8021db8b2c5071c29bc4ddce6dc81d40f59f6d'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '13.0'

  s.vendored_framework      = 'BrazeNotificationService.xcframework'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
