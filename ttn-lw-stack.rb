# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwStack < Formula
  desc "The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.9.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.9.4/lorawan-stack_3.9.4_darwin_amd64.tar.gz"
    sha256 "ff1cdd97e051d5fbc32e4bab962d914fd5c58834a93295ff61e521e28f736cd5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.9.4/lorawan-stack_3.9.4_linux_amd64.tar.gz"
      sha256 "5272efe617b9fd9da0cbaa96432a2be09d7584c3d7f1e40d113aa1b2cc9848fc"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.9.4/lorawan-stack_3.9.4_linux_arm64.tar.gz"
        sha256 "b3ea7c942d0d5a3beb0c417ec7e2b6821bb1635ad6d57fc08fe5002525a9bcbf"
      else
        url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.9.4/lorawan-stack_3.9.4_linux_armv6.tar.gz"
        sha256 "819d53cdebb1ccc34c671c7418bf671dc9ba2b4d09f58abe36e1426fd80f9e87"
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
