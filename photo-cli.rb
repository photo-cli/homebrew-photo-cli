require_relative "dotnet_requirement"

class PhotoCli < Formula
  desc "A photo organizer for your file system without sticking to any application or vendor. Extract when and where (reverse geocoding) your photos are taken, copy into a new organized folder with various folder & file naming strategies, export into CSV files."
  homepage "https://github.com/photo-cli/photo-cli"
  url "https://nuget.org/api/v2/package/photo-cli/0.3.0"
  sha256 "bb93aedd61fa3f13d8c9bce62036c49c709575973d2f86c6a95b66c359aa9e31"

  depends_on DotnetRequirement

  def install
    system "dotnet", "tool", "install", "photo-cli", "--add-source", "#{Dir.pwd}", "--tool-path", "#{libexec}/bin"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
end
