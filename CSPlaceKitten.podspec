Pod::Spec.new do |s|
  s.name     = 'CSPlaceKitten'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'A simple library for adding kittens to your placeholder views.'
  s.homepage = 'https://github.com/cnstoll/CSPlaceKitten'
  s.authors  = { 'Conrad Stoll' => 'conrad.stoll@mutualmobile.com' }
  s.source   = { :git => 'https://github.com/cnstoll/CSPlaceKitten.git', :tag => s.version.to_s }
  s.requires_arc = true
  
  s.default_subspec = 'Core'

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  
  s.subspec 'Core' do |core|
    core.source_files = 'CSPlaceKitten/*.{h,m}'
	core.dependency 'AFNetworking', '~> 1.0'
  end  
end
