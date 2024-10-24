# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwStack < Formula
  desc "The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.32.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.1/lorawan-stack_3.32.1_darwin_arm64.tar.gz"
      sha256 "84394642f18d5ad944d4c973521ed3ef5a45ee93ab25007aac0f589725cfdf4a"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.1/lorawan-stack_3.32.1_darwin_amd64.tar.gz"
      sha256 "93ffbe24591c6dcbc5b6ac09e649d8b9622c8387de414ce6dacb7b80f1b01db0"

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
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.1/lorawan-stack_3.32.1_linux_armv6.tar.gz"
      sha256 "67d9651b81ac5c57b9b2be098ebc8626eefec899a47d8dd3f8d30ddfc17aa2d5"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.1/lorawan-stack_3.32.1_linux_amd64.tar.gz"
      sha256 "ecc654302790413b73399a0ad6d5f2e52678428e750f76f49f16c61e1175adb9"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.1/lorawan-stack_3.32.1_linux_arm64.tar.gz"
      sha256 "41b579a76fa248a2b074ced187f80ead25f5c430f3df957e0fd2c0d351f3a8f6"

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
