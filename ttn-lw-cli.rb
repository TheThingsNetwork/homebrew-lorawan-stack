# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.4.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.4.1/lorawan-stack-cli_3.4.1_darwin_amd64.tar.gz"
    sha256 "f118d53b435601a0fddf7619ebfc8866ea07a19ff10b9accb1792fdf90a6277e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.4.1/lorawan-stack-cli_3.4.1_linux_amd64.tar.gz"
      sha256 "317fdd6ef61b70a088266325cb31a88e16bbc71b033f67819511026d4a88f232"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.4.1/lorawan-stack-cli_3.4.1_linux_arm64.tar.gz"
        sha256 "a977473a489eebb24edff8e93c7b62b2e9cf138e61b31641d1d1cfdda6e07dea"
      else
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.4.1/lorawan-stack-cli_3.4.1_linux_armv6.tar.gz"
        sha256 "aeee98ff604c927accaf5729df0ed63cc960a937465c761baac1785b49665406"
      end
    end
  end
  
  conflicts_with "ttn-lw-stack"

  def install
    bin.install "ttn-lw-cli"
    libexec.install doc
  end
end
