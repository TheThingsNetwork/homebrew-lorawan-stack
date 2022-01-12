# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.17.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.17.1/lorawan-stack-cli_3.17.1_darwin_arm64.tar.gz"
      sha256 "6e5ef7f928c04dfe51a9d9098581b2546707363a93a93b789c469206241fb9a1"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.17.1/lorawan-stack-cli_3.17.1_darwin_amd64.tar.gz"
      sha256 "2d8484f42e6770663956976f06ca2f535010b1d7dc9d6cea57e8ea5a86a4dae3"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.17.1/lorawan-stack-cli_3.17.1_linux_arm64.tar.gz"
      sha256 "76a67609a982a5f70374e9347f5f37f67b4b576bdb94bf6ccc896744ad525033"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.17.1/lorawan-stack-cli_3.17.1_linux_armv6.tar.gz"
      sha256 "ce9f72f03ccaeb6914d29de1a3727f0183aab896730e7c6a66628824e857056e"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.17.1/lorawan-stack-cli_3.17.1_linux_amd64.tar.gz"
      sha256 "ec67a5ea06bcc54c2784ecfd7608d2b6cc23fa48f4752b12c8ae37926237df4c"

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
