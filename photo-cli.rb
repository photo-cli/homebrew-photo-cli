require_relative "dotnet_requirement"

class PhotoCli < Formula
  desc "A photo organizer for your file system without sticking to any application or vendor. Extract when and where (reverse geocoding) your photos are taken, copy into a new organized folder with various folder & file naming strategies, export into CSV files."
  homepage "https://github.com/photo-cli/photo-cli"
  url "https://nuget.org/api/v2/package/photo-cli/0.3.1"
  sha256 "00ab73f12578ca87ef72094460720715bd1eefb8e617956e8836779be149dd2d"

  depends_on DotnetRequirement

  def install
    system "dotnet", "tool", "install", "photo-cli", "--add-source", "#{Dir.pwd}", "--tool-path", "#{libexec}/bin"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
end
