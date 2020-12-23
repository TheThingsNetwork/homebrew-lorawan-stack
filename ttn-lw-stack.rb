# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwStack < Formula
  desc "The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.10.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.10.5/lorawan-stack_3.10.5_darwin_amd64.tar.gz"
    sha256 "897c58a4fbfbd5ee80a83541c806ce5c076ba915c935d8768ee941fcf6678486"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.10.5/lorawan-stack_3.10.5_linux_amd64.tar.gz"
      sha256 "0f61f8af87bed8af72af07f968692e18681cfb359f7aef99cfb434faacdb75f7"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.10.5/lorawan-stack_3.10.5_linux_arm64.tar.gz"
        sha256 "23ba75f5734727ed853244b3523d08eda6fcab2c8dc148e1bb4791f994994005"
      else
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.10.5/lorawan-stack_3.10.5_linux_armv6.tar.gz"
        sha256 "6d378a37334070f19ff8f1d4499cbdd01fb6d0944e098dda5d60741509f61860"
      end
    end
  end
  
  conflicts_with "ttn-lw-cli"

  def install
    bin.install "ttn-lw-cli"
    libexec.install %w[ttn-lw-stack public]
    env = {
        :TTN_LW_HTTP_STATIC_SEARCH_PATH => libexec/"public"
    }
    (bin/"ttn-lw-stack").write_env_script libexec/"ttn-lw-stack", env
    bash_completion.install "config/completion/bash/ttn-lw-cli"
    zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
    fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
    bash_completion.install "config/completion/bash/ttn-lw-stack"
    zsh_completion.install "config/completion/zsh/_ttn-lw-stack"
    fish_completion.install "config/completion/fish/ttn-lw-stack.fish"
  end
end
