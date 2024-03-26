# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwStack < Formula
  desc "The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.29.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.29.2/lorawan-stack_3.29.2_darwin_amd64.tar.gz"
      sha256 "e4e2bfb96fc5e2551de2eb7a6151e508a9bdc41bbe028bbb6437be702e6fb805"

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
    if Hardware::CPU.arm?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.29.2/lorawan-stack_3.29.2_darwin_arm64.tar.gz"
      sha256 "e41034a748b976959014b9ef098772c7ccb6b5614f59f7617686d29ca8e93671"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.29.2/lorawan-stack_3.29.2_linux_arm64.tar.gz"
      sha256 "a05f65b7722db94e60764ae8258faf068cad0aef975e52eb561b7ecd7a9569f3"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.29.2/lorawan-stack_3.29.2_linux_armv6.tar.gz"
      sha256 "629d6994a94ad32888081c4ff7c510a907a362abf979002f1e948b63a2fb3a34"

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
      url "https://github.com/TheThingsNetwork/lorawan-stack/releases/download/v3.29.2/lorawan-stack_3.29.2_linux_amd64.tar.gz"
      sha256 "5bdb6ad3db667431500adcf085b0b2049b4edc3a30b92638797b282e7df6672a"

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
