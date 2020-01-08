# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwStack < Formula
  desc "The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.4.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.4.2/lorawan-stack_3.4.2_darwin_amd64.tar.gz"
    sha256 "0410acc45922e0b0fcdd90f8032d2ec9ab6abc7cc5854e50b965a30b11f958ee"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.4.2/lorawan-stack_3.4.2_linux_amd64.tar.gz"
      sha256 "a5df9b870d7cb2fb69553417e0a3534aea434c42f2c985588c1f1e73a0432150"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.4.2/lorawan-stack_3.4.2_linux_arm64.tar.gz"
        sha256 "ecbb92203524d5673fd851dcd3f6af5fa5ec66dcffda68ecf83174c97f6c7546"
      else
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.4.2/lorawan-stack_3.4.2_linux_armv6.tar.gz"
        sha256 "9af556cf371f49cd2e32bd296ba623b86b86a10b58e82d670c62a0b3d25c4703"
      end
    end
  end
  
  conflicts_with "ttn-lw-cli"

  def install
    bin.install "ttn-lw-cli"
    libexec.install %w[ttn-lw-stack public doc]
    env = {
        :TTN_LW_HTTP_STATIC_SEARCH_PATH => libexec/"public"
    }
    (bin/"ttn-lw-stack").write_env_script libexec/"ttn-lw-stack", env
  end
end
