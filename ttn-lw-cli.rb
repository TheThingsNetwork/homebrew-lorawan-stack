# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.7.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.7.0/lorawan-stack-cli_3.7.0_darwin_amd64.tar.gz"
    sha256 "c0adee2a223a6181287cf42c5d87c6f9e384c65ec5d58fbdace83cc8e299c3a6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.7.0/lorawan-stack-cli_3.7.0_linux_amd64.tar.gz"
      sha256 "9bf7f8356f2711142bde979aec52b7afb7abd613f4358b824273672d99162e41"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.7.0/lorawan-stack-cli_3.7.0_linux_arm64.tar.gz"
        sha256 "2d1927a3312cf5e2639af39083058feaa1f9109ba9038d15042a9c66868d56f9"
      else
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.7.0/lorawan-stack-cli_3.7.0_linux_armv6.tar.gz"
        sha256 "0e3a5fca01eab6c52860b86cf052ec4e023a8250b18aec45ed55d8a62f78f18b"
      end
    end
  end
  
  conflicts_with "ttn-lw-stack"

  def install
    bin.install "ttn-lw-cli"
  end
end
