# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.8.0/lorawan-stack-cli_3.8.0_darwin_amd64.tar.gz"
    sha256 "3cda138e543a23e34c54904ca6fb129f44fb4443e1b74de6a203e9c3c5ee9620"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.8.0/lorawan-stack-cli_3.8.0_linux_amd64.tar.gz"
      sha256 "6dca08eb5b36e58996cad78d937b664c2d5580115a20a2a6d5646e4cbb8efd7e"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.8.0/lorawan-stack-cli_3.8.0_linux_arm64.tar.gz"
        sha256 "dfc3005879f1b1b13452adda1815112cdb65c80ca4f3039216173fc3a6c50cbc"
      else
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.8.0/lorawan-stack-cli_3.8.0_linux_armv6.tar.gz"
        sha256 "e7fb6ab19f9f4f9a4ded637364fcf02f08545b1cddead806323af2e78ce1b30a"
      end
    end
  end
  
  conflicts_with "ttn-lw-stack"

  def install
    bin.install "ttn-lw-cli"
  end
end
