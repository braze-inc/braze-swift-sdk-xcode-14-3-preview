Pod::Spec.new do |s|
  s.name              = 'BrazeNotificationService'
  s.version           = '5.11.0'
  s.summary           = 'Braze notification service extension library providing support for Rich Push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazenotificationservice/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode-14-3-preview/releases/download/5.11.0/BrazeNotificationService.zip',
    :sha256 => 'aa92988b4589da848e0dc486fff908e49be2b98d134038b4089b073e7a84be50'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '13.0'

  s.vendored_framework      = 'BrazeNotificationService.xcframework'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
