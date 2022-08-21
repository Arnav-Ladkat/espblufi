#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint espblufi.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'espblufi'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin for Blufi Communication.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Sikra' => 'arnav@hlth.dev' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  # Headers required for Blufi Library
  # Start
  s.private_header_files = 'Classes/BlufiLibrary/Security/openssl/include/openssl/*{.h,.cpp,.a}', 'Classes/BlufiLibrary/Security/openssl/include/*{.h,.cpp,.a}', 'Classes/BlufiLibrary/Security/openssl/*{.h,.cpp,.a}',
  'Classes/BlufiLibrary/**/*{.h,.cpp,.a}'
  #End
  s.dependency 'Flutter'
  # Platform and header config for Open SSL
  # Start
  s.platform = :ios, '11.0'
  s.ios.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SRCROOT)/../.symlinks/plugins/espblufi/ios/Classes/BlufiLibrary/Security/openssl/include" }
  s.ios.vendored_libraries = 'Classes/BlufiLibrary/Security/openssl/*{.a}'
  #End
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
