# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.32.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.1/lorawan-stack-cli_3.32.1_darwin_arm64.tar.gz"
      sha256 "578bf84546dcecfa3ab4fcb3116dc0013076e63fc5a37faf8edea99a9e37f9b5"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.1/lorawan-stack-cli_3.32.1_darwin_amd64.tar.gz"
      sha256 "6879179a99f8b0061237fa136fa231a1afc0f642751cb28b1189c2ff54866275"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.1/lorawan-stack-cli_3.32.1_linux_arm64.tar.gz"
      sha256 "245fac186280f00145011b0a5e4f641ece274d303cf0d8266e2cdc9d604b4101"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.1/lorawan-stack-cli_3.32.1_linux_amd64.tar.gz"
      sha256 "1b9ae2ff2e5f651e5a43598173300b9d239fc16ea65c47a1ad907e7fa609ea00"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.1/lorawan-stack-cli_3.32.1_linux_armv6.tar.gz"
      sha256 "ee2489c2e6041eece236ab37889e105393abf11fbada2ca74df36230f54043c5"

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
