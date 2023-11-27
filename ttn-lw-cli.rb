# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.28.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.28.1/lorawan-stack-cli_3.28.1_darwin_arm64.tar.gz"
      sha256 "1fb293edb2dcc268744e605c8d4875c14fbd0a00759cd24753983b520d826418"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.28.1/lorawan-stack-cli_3.28.1_darwin_amd64.tar.gz"
      sha256 "fd85a71465be6e01c82e7108b4c301a1d39bf911a9d7b758942d68b00b54196e"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.28.1/lorawan-stack-cli_3.28.1_linux_amd64.tar.gz"
      sha256 "9473392e8be7e6fb79514f1299271d745001707ab73e52bc36f46a099f7dbc8f"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.28.1/lorawan-stack-cli_3.28.1_linux_armv6.tar.gz"
      sha256 "b456fbe2960c5d83ad66ce6ded9ed8c03b3af4a86a3733ef1c10cd8f42c4696b"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.28.1/lorawan-stack-cli_3.28.1_linux_arm64.tar.gz"
      sha256 "d87ed3bb1cb42ce8fed8951a7fc44b6801e04ee14eaff53f3066bc6964154f05"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
  end

  conflicts_with "ttn-lw-stack"
end
