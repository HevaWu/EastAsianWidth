Pod::Spec.new do |s|
  s.name             = 'UnicodeEastAsianWidth'
  s.version          = '2.1.0'
  s.summary          = 'Auto-generate Swift Unicode EastAsianWidth count checking.'

  s.description      = <<-DESC
  By checking official unicode site https://home.unicode.org, try to transfer East Asian Width part to Swift code which could directly checking fullwidth & halfwifth of the characters.
                       DESC

  s.homepage         = 'https://github.com/HevaWu/EastAsianWidth'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'He Wu(HevaWu)' => 'hewu9375@gmail.com' }
  s.source           = { :git => 'https://github.com/HevaWu/EastAsianWidth.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/hewu9375'

  s.ios.deployment_target = '9.0'
  s.source_files = 'Sources/EastAsianWidth/*'
  s.module_name = 'EastAsianWidth'
  s.swift_version = '5.5'

end
