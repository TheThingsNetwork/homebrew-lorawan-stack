# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.9.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.9.4/lorawan-stack-cli_3.9.4_darwin_amd64.tar.gz"
    sha256 "0cf525b92a1a82fd45dd89ae9196028c0eab3fc86f3e813463ff108a651ad979"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.9.4/lorawan-stack-cli_3.9.4_linux_amd64.tar.gz"
      sha256 "39a22c9e55307022abba3170f3a9f58417ef68677e75769f42a5b6cdcc8fb39b"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.9.4/lorawan-stack-cli_3.9.4_linux_arm64.tar.gz"
        sha256 "023939ed11dd9d84cd796b724470f58f780d62610efd03ecb5782be4c100ed7a"
      else
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.9.4/lorawan-stack-cli_3.9.4_linux_armv6.tar.gz"
        sha256 "30cc14918ebc6c51a5835518836b493e9353640529ecb4b2194f6bed68db9c8e"
      end
    end
  end
  
  conflicts_with "ttn-lw-stack"

  def install
    bin.install "ttn-lw-cli"
    bash_completion.install "config/completion/bash/ttn-lw-cli"
    zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
    fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
  end
end
