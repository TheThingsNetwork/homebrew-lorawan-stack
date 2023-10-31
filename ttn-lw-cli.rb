# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.28.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.28.0/lorawan-stack-cli_3.28.0_darwin_amd64.tar.gz"
      sha256 "2d4f55be095b023413dadfbac1b383ebe4e63e829f1bc823fa1b4384d2cff7bc"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.28.0/lorawan-stack-cli_3.28.0_darwin_arm64.tar.gz"
      sha256 "ca049f63b6fda2ce4e3ae32eef7042ac1e75f65e514bdf37dc9637896d2a8f6d"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.28.0/lorawan-stack-cli_3.28.0_linux_amd64.tar.gz"
      sha256 "1fbd7a30e57d9528df69776c99c62bc0b6a3a73d7cd89a4c55e88493ddce8be3"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.28.0/lorawan-stack-cli_3.28.0_linux_arm64.tar.gz"
      sha256 "10dbf1dd345b2b7937f7edb7c77222617230a9f0c01d7cae23c2e3a5beed5d00"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.28.0/lorawan-stack-cli_3.28.0_linux_armv6.tar.gz"
      sha256 "7682b6570aee8b451abe217899f91fcb78ef644ed6485e0defb4177ab0618635"

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
