require_relative "dotnet_requirement"

class PhotoCli < Formula
  desc "A photo organizer for your file system without sticking to any application or vendor. Extract when and where (reverse geocoding) your photos are taken, copy into a new organized folder with various folder & file naming strategies, export into CSV files."
  homepage "https://github.com/photo-cli/photo-cli"
  url "https://nuget.org/api/v2/package/photo-cli/0.3.2"
  sha256 "738977afd6095807e61c9330c7a697d38751bcdf006d36a8021b9bd4673962f2"

  depends_on DotnetRequirement

  def install
    system "dotnet", "tool", "install", "photo-cli", "--add-source", "#{Dir.pwd}", "--tool-path", "#{libexec}/bin"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
end
