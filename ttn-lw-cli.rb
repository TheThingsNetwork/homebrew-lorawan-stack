# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.22.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.22.2/lorawan-stack-cli_3.22.2_darwin_arm64.tar.gz"
      sha256 "22c9a25ec6f6a913cde57da68dbfff056d55ddc731a39552a1c4f0abab250a96"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.22.2/lorawan-stack-cli_3.22.2_darwin_amd64.tar.gz"
      sha256 "e125495ea119673327d34419e517284444450d233fcfe349041ddd3f9dfee629"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.22.2/lorawan-stack-cli_3.22.2_linux_armv6.tar.gz"
      sha256 "689bc1a70a1731954c58cb400d7ee84fead22b3972adb1c8dc7ea04370f1b711"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.22.2/lorawan-stack-cli_3.22.2_linux_arm64.tar.gz"
      sha256 "a91a811ae0ce06314a12d7339f768c50d325c96f3be268934ae09767b90a447f"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.22.2/lorawan-stack-cli_3.22.2_linux_amd64.tar.gz"
      sha256 "cb81f4ab4f9fcb2ec5981119e8c8098586a11272366f3226354e74c45cf310d9"

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
