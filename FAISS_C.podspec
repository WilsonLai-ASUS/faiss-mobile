Pod::Spec.new do |s|
  version              = "1.7.4"
  s.name               = "FAISS_C"
  s.version            = "#{version}"
  s.summary            = "FAISS C library compiled for iOS, Mac, tvOS, watchOS"
  s.description        = "Faiss is a library — developed by Facebook AI — that enables efficient similarity search. So, given a set of vectors, we can index them using Faiss — then using another vector (the query vector), we search for the most similar vectors within the index."
  s.homepage           = "https://www.developermindset.com/faiss-mobile/"
  s.documentation_url  = "https://github.com/DeveloperMindset-com/faiss-mobile"
  s.author             = { "Eugene Hauptmann" => "eugene@reactivelions.com" }
  s.source             = { :git => 'https://github.com/DeveloperMindset-com/faiss-mobile.git', :tag => "v#{version}" }
  s.license            = { :type => 'MIT', :file => 'LICENSE' }

  s.requires_arc       = false
  s.platform           = :osx, '13.0'
  s.platform           = :ios, '13.0'
  s.swift_version      = "5.9"

  s.prepare_command = <<-CMD
    ./faiss.sh --version="#{version}"
  CMD

  s.ios.deployment_target         = "13.0"
  s.osx.deployment_target         = "13.0"
  s.vendored_frameworks           = "dist/faiss_c.xcframework"
  s.requires_arc                  = false
end
