# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.3.1/lorawan-stack-cli_3.3.1_darwin_amd64.tar.gz"
    sha256 "3cc87a75fff3477bbddc44fa16280d3e18ac75a1870678de26a0b2c127ba339f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.3.1/lorawan-stack-cli_3.3.1_linux_amd64.tar.gz"
      sha256 "82bf54e5d8d8a98c7ef263f2c287f552b30f8af89660f0db13ecfebaaf2d64dd"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.3.1/lorawan-stack-cli_3.3.1_linux_arm64.tar.gz"
        sha256 "4e6556f265eb6e51e619f92beb55f25f1682513e2258ce45227845bb19e54f11"
      else
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.3.1/lorawan-stack-cli_3.3.1_linux_armv6.tar.gz"
        sha256 "50d38d4a0a167e18550f36e1cf6717cf181ecf681839f55b243afb76763e0122"
      end
    end
  end
  
  conflicts_with "ttn-lw-stack"

  def install
    bin.install "ttn-lw-cli"
    libexec.install doc
  end
end
