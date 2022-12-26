Pod::Spec.new do |s|
  s.name         = "DLSFTPClient"
  s.version      = "1.0.6"
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

  s.source_files = 'DLSFTPClient/Classes/*.{h,m}'
  s.dependency 'OpenSSL-Universal'
  s.libraries = 'z'
  s.framework	 = 'Foundation', 'CFNetwork'
end
