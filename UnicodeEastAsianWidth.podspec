Pod::Spec.new do |s|
  s.name             = 'UnicodeEastAsianWidth'
  s.version          = '2.0.0'
  s.summary          = 'Transfer to check Unicode EastAsianWidth by Swift'

  s.description      = <<-DESC
  By checking official unicode site https://home.unicode.org, try to transfer East Asian Width part to Swift code which could directly checking fullwidth & halfwifth of the characters.
                       DESC

  s.homepage         = 'https://github.com/HevaWu/EastAsianWidth'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'He Wu(HevaWu)' => 'hewu9375@gmail.com' }
  s.source           = { :git => 'https://github.com/HevaWu/EastAsianWidth.git', :tag => s.version.to_s }
  s.social_media_url = 'https://www.facebook.com/hevawu'

  s.ios.deployment_target = '9.0'
  s.source_files = 'Sources/EastAsianWidth/*'
  s.module_name = 'EastAsianWidth'


end
