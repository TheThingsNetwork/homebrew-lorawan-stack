# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.1.1/lorawan-stack-cli_3.1.1_darwin_amd64.tar.gz"
    sha256 "a4f1490f775236470e66f24ba960d5f81f406bc5a883c16f9be1e2a28af796fa"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.1.1/lorawan-stack-cli_3.1.1_linux_amd64.tar.gz"
      sha256 "7a7f58cfac8dfcb598840b0898f42746a987ffce196ed805b0a1518bd7253eed"
    end
  end
  
  conflicts_with "ttn-lw-stack"

  def install
    bin.install "ttn-lw-cli"
    libexec.install doc
  end
end
