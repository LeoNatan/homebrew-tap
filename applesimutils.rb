class Applesimutils < Formula
  desc 'Apple Simulator Utilities'
  homepage 'https://github.com/LeoNatan/AppleSimulatorUtils'
  url 'https://github.com/LeoNatan/AppleSimulatorUtils/releases/download/1.1/AppleSimulatorUtils-1.1.tar.gz'
  sha256 '15564fdfcf06417a4b1dc4b5723354cafd8fd3542736e411291e7b575905de9a'
  head 'https://github.com/LeoNatan/AppleSimulatorUtils.git'

  depends_on xcode: ['12.0', :build]
  
  bottle do
    root_url 'https://github.com/LeoNatan/AppleSimulatorUtils/releases/download/1.1'
    sha256 catalina: '2387ac3c1b4604504686f43ce3c403af6dae93d518f001c96a68cf738fa1358c'
    sha256 mojave: '2387ac3c1b4604504686f43ce3c403af6dae93d518f001c96a68cf738fa1358c'
    sha256 high_sierra: '2387ac3c1b4604504686f43ce3c403af6dae93d518f001c96a68cf738fa1358c'
    sha256 sierra: '2387ac3c1b4604504686f43ce3c403af6dae93d518f001c96a68cf738fa1358c'
    sha256 big_sur: '2387ac3c1b4604504686f43ce3c403af6dae93d518f001c96a68cf738fa1358c'
    sha256 arm64_big_sur: '2387ac3c1b4604504686f43ce3c403af6dae93d518f001c96a68cf738fa1358c'
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
