# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwStack < Formula
  desc "The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.16.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.16.1/lorawan-stack_3.16.1_darwin_arm64.tar.gz"
      sha256 "7e31aa23d7c91f7abea4818f9037bea9614f409163c9b081ae07a79b5098ec3f"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.16.1/lorawan-stack_3.16.1_darwin_amd64.tar.gz"
      sha256 "729a48f12340829f5847ce28a791acef60cd66f4a81c555ba9675ffabb6f8885"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.16.1/lorawan-stack_3.16.1_linux_amd64.tar.gz"
      sha256 "ce56a49e1766599140bf6952f78c7987527a2780c79195b2b0c31f31a08042e0"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.16.1/lorawan-stack_3.16.1_linux_armv6.tar.gz"
      sha256 "c362692606efcae06ec5c3a7356c2ad0b29f137d5c3e02ed050efc23fd7bcd74"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.16.1/lorawan-stack_3.16.1_linux_arm64.tar.gz"
      sha256 "7c97d1c178c8cd01e514d96d3f428e41b25e7629fa62138a7d0dc1584a4a6d3c"

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
