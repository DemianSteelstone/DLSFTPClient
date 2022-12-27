Pod::Spec.new do |s|
  s.name         = "DLSFTPClient"
  s.version      = "1.0.7"
  s.summary      = "DLSFTPClient is an SFTP Client library for iOS, using libssh2"
  s.homepage     = "https://github.com/dleehr/DLSFTPClient"
  s.social_media_url = 'https://twitter.com/leehro'
  s.license      = { :type => 'BSD', :url => 'https://github.com/dleehr/DLSFTPClient/blob/master/LICENSE' }
  s.author       = { "Dan Leehr" => "dan@hammockdistrict.com" }
  s.source       = {
    :git => "https://github.com/DemianSteelstone/DLSFTPClient.git",
    :tag => s.version.to_s
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'DLSFTPClient/Classes/*.{h,m}'
    core.framework	  = 'Foundation', 'CFNetwork'
  end

  s.subspec 'StaticDependency' do |static|
    static.dependency 'DLSFTPClient/Core'
    static.vendored_libraries = 'DLSFTPClient/Libraries/lib/libssh2.a', 
                                'DLSFTPClient/Libraries/lib/libssl.a', 
                                'DLSFTPClient/Libraries/lib/libcrypto.a'
    static.libraries = 'z'
  end

  s.subspec 'DynamicDependency' do |dynamic|
    dynamic.dependency 'DLSFTPClient/Core'
    dynamic.dependency 'OpenSSL-Universal'
  end
  
end
