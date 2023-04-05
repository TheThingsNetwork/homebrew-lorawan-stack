# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwStack < Formula
  desc "The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.25.0/lorawan-stack_3.25.0_darwin_arm64.tar.gz"
      sha256 "410161f7779c01fda056752478e70aa49cfa9e65098c3588b974f235b2e3df09"

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
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.25.0/lorawan-stack_3.25.0_darwin_amd64.tar.gz"
      sha256 "1d9839afe565fa0e21b312cf3954dc6db8a02cb69c95934dd887e02e30e260f4"

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
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.25.0/lorawan-stack_3.25.0_linux_amd64.tar.gz"
      sha256 "ef9606b58d1227940a46ee9536c5905c2bbb73d6987dde489e6429df0b2d1d13"

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
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.25.0/lorawan-stack_3.25.0_linux_armv6.tar.gz"
      sha256 "139f8ebd256dee6b9c5093b6d47d4623d9273afe7d6dbe784d454ae1d325b96f"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.25.0/lorawan-stack_3.25.0_linux_arm64.tar.gz"
      sha256 "d3c3eea8d1e0bace36073c51360f3e28847edbdda8cdb2a579a5081f8806161c"

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
  end

  conflicts_with "ttn-lw-cli"
end
