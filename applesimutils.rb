class Applesimutils < Formula
  desc 'Apple Simulator Utilities'
  homepage 'https://github.com/LeoNatan/AppleSimulatorUtils'
  url 'https://github.com/LeoNatan/AppleSimulatorUtils/releases/download/1.0/AppleSimulatorUtils-1.0.tar.gz'
  sha256 '6637b2a4cb2bd25639380d919b5bf788a31fa5ba5e7642819d716ff29b20034f'
  head 'https://github.com/LeoNatan/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/LeoNatan/AppleSimulatorUtils/releases/download/1.0'
    sha256 'ef3bfb0106aa8e6beaef15eb619a901ca401e9e1d94a8aea154a2116a370e465' => :catalina
    sha256 'ef3bfb0106aa8e6beaef15eb619a901ca401e9e1d94a8aea154a2116a370e465' => :mojave
    sha256 'ef3bfb0106aa8e6beaef15eb619a901ca401e9e1d94a8aea154a2116a370e465' => :high_sierra
    sha256 'ef3bfb0106aa8e6beaef15eb619a901ca401e9e1d94a8aea154a2116a370e465' => :sierra
    sha256 'ef3bfb0106aa8e6beaef15eb619a901ca401e9e1d94a8aea154a2116a370e465' => :big_sur
    sha256 'ef3bfb0106aa8e6beaef15eb619a901ca401e9e1d94a8aea154a2116a370e465' => :arm64_big_sur
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
