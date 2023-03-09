Pod::Spec.new do |s|
  s.name              = 'BrazePushStory'
  s.version           = '5.11.1'
  s.summary           = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazepushstory/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode-14-3-preview/releases/download/5.11.1/BrazePushStory.zip',
    :sha256 => 'be022ad6ad413ff3c852c3a6f283079bfd869a95b222a09bad02dc02035d0756'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '13.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
