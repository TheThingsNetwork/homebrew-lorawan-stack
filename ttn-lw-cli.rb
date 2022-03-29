# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.18.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.18.2/lorawan-stack-cli_3.18.2_darwin_amd64.tar.gz"
      sha256 "b8c541fdbb9c0384e32c41d5b30af0c53f51e9994ed20e481fb0f3d6b17e5cb4"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.18.2/lorawan-stack-cli_3.18.2_darwin_arm64.tar.gz"
      sha256 "89aa81807d286f9caf93b1fc5efcd16b31baa4e31f7c99a7b6e927d5ea966964"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.18.2/lorawan-stack-cli_3.18.2_linux_amd64.tar.gz"
      sha256 "b491eb6ecc6ddc1696ee0dfb7a0765bc88a6fbac6b2742933522cebec1e821a6"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.18.2/lorawan-stack-cli_3.18.2_linux_armv6.tar.gz"
      sha256 "4ec90d19b5d2f460cbbbf729f08d97805148b5d815ff8db849d9f109133c9908"

      def install
        bin.install "ttn-lw-cli"
        bash_completion.install "config/completion/bash/ttn-lw-cli"
        zsh_completion.install "config/completion/zsh/_ttn-lw-cli"
        fish_completion.install "config/completion/fish/ttn-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.18.2/lorawan-stack-cli_3.18.2_linux_arm64.tar.gz"
      sha256 "84cd2ffa8f0701ea3ed0e3eaf98757b712a40a1e66b8ae8367389ea38513f5b9"

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
