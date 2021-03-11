class Applesimutils < Formula
  desc 'Apple Simulator Utilities'
  homepage 'https://github.com/LeoNatan/AppleSimulatorUtils'
  url 'https://github.com/LeoNatan/AppleSimulatorUtils/releases/download/1.1/AppleSimulatorUtils-1.1.tar.gz'
  sha256 '15564fdfcf06417a4b1dc4b5723354cafd8fd3542736e411291e7b575905de9a'
  head 'https://github.com/LeoNatan/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/LeoNatan/AppleSimulatorUtils/releases/download/1.1'
    sha256 '2387ac3c1b4604504686f43ce3c403af6dae93d518f001c96a68cf738fa1358c' => :catalina
    sha256 '2387ac3c1b4604504686f43ce3c403af6dae93d518f001c96a68cf738fa1358c' => :mojave
    sha256 '2387ac3c1b4604504686f43ce3c403af6dae93d518f001c96a68cf738fa1358c' => :high_sierra
    sha256 '2387ac3c1b4604504686f43ce3c403af6dae93d518f001c96a68cf738fa1358c' => :sierra
    sha256 '2387ac3c1b4604504686f43ce3c403af6dae93d518f001c96a68cf738fa1358c' => :big_sur
    sha256 '2387ac3c1b4604504686f43ce3c403af6dae93d518f001c96a68cf738fa1358c' => :arm64_big_sur
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
