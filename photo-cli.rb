require_relative "dotnet_requirement"

class PhotoCli < Formula
  desc "A photo organizer for your file system without sticking to any application or vendor. Extract when and where (reverse geocoding) your photos are taken, copy into a new organized folder with various folder & file naming strategies, export into CSV files."
  homepage "https://github.com/photo-cli/photo-cli"
  url "https://nuget.org/api/v2/package/photo-cli/0.3.3"
  sha256 "eb07b9316aff236aa84563e323e6a0d436abec274154f6fc1d87fbf55a61976b"

  depends_on DotnetRequirement

  def install
    system "dotnet", "tool", "install", "photo-cli", "--add-source", "#{Dir.pwd}", "--tool-path", "#{libexec}/bin"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
end
