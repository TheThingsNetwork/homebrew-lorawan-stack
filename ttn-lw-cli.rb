# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.4.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.4.2/lorawan-stack-cli_3.4.2_darwin_amd64.tar.gz"
    sha256 "3e13f157bddbc9bb3b352c7e414b2241b8a98af931426720cedd2091f5b99a6c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.4.2/lorawan-stack-cli_3.4.2_linux_amd64.tar.gz"
      sha256 "11f7f1dbea3d655cd6122f672df3d9b7d4f5a6e3137c87767c357c639a4bc2db"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.4.2/lorawan-stack-cli_3.4.2_linux_arm64.tar.gz"
        sha256 "be21c257a7f1c25c80adee43eef157664e3e05776d8cbbe01b3944416e157567"
      else
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.4.2/lorawan-stack-cli_3.4.2_linux_armv6.tar.gz"
        sha256 "a62e97867a7d387a43acaaadbc2e223ed3fc70f5b3f544f2d1f6974d588d6971"
      end
    end
  end
  
  conflicts_with "ttn-lw-stack"

  def install
    bin.install "ttn-lw-cli"
    libexec.install doc
  end
end
