# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwStack < Formula
  desc "The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.32.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.2/lorawan-stack_3.32.2_darwin_arm64.tar.gz"
      sha256 "d1b7aaa45ea57e27fabd738e7df48c84af537a7b13bbf123294abfad84047e16"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.2/lorawan-stack_3.32.2_darwin_amd64.tar.gz"
      sha256 "b617e79819636f818f5476678fce6a17f83c21abd7636bee29e7a15a9372ed27"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.2/lorawan-stack_3.32.2_linux_amd64.tar.gz"
      sha256 "74ab72646f885d118276c9de83197e7b4e6c36490379f040b7bb5c9081c7f60b"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.2/lorawan-stack_3.32.2_linux_arm64.tar.gz"
      sha256 "a905b593c8f08df81448d49407cb02d076ff3a8cecb18adc4c2ba88c78707ce8"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.32.2/lorawan-stack_3.32.2_linux_armv6.tar.gz"
      sha256 "4ab231633fa6327532016032f151e35e21872be7c23749ea034a8c11a51acb42"

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
