Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "Erik"
  s.version      = "1.0.0"
  s.summary      = "An headless brother written in Swift"
  s.description  = <<-DESC
                    Erik is an headless browser based on WebKit and HTML parser Kanna.
                    An headless browser allow to run functional tests, to access and manipulate webpages.
                   DESC
  s.homepage     = "https://github.com/phimage/Erik"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = "MIT"

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "phimage" => "eric.marchand.n7@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/phimage/Erik.git", :tag => s.version }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.default_subspec = 'Core'

  s.subspec "Core" do  |sp|
    sp.source_files = "Erik/*.swift"
  end

  s.dependency 'Kanna'
  s.dependency 'Eki'

end