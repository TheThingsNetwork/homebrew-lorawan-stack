# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwMigrate < Formula
  desc "Migrate from other LoRaWAN network servers to The Things Stack"
  homepage "https://www.thethingsnetwork.org"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheThingsNetwork/lorawan-stack-migrate/releases/download/v0.9.0/lorawan-stack-migrate_0.9.0_darwin_arm64.tar.gz"
      sha256 "c77c28f8a658999ff1d1b5a81a62645dfcefd92b4424f07d969f347882b42c5e"

      def install
        bin.install "ttn-lw-migrate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack-migrate/releases/download/v0.9.0/lorawan-stack-migrate_0.9.0_darwin_amd64.tar.gz"
      sha256 "0ca1e1cde67879931ed9f491e8835ad8c7d9c7c9f48a119997595a6569d164c1"

      def install
        bin.install "ttn-lw-migrate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack-migrate/releases/download/v0.9.0/lorawan-stack-migrate_0.9.0_linux_arm64.tar.gz"
      sha256 "1373fedf3d3071c61466e0d2171e5d49ed8fc850371d63638d93056ed7831566"

      def install
        bin.install "ttn-lw-migrate"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/TheThingsNetwork/lorawan-stack-migrate/releases/download/v0.9.0/lorawan-stack-migrate_0.9.0_linux_armv6.tar.gz"
      sha256 "76721eb125a567cef4740ae8286c10c1fb67fc5c205c12b2b8d46aab4e7d1aee"

      def install
        bin.install "ttn-lw-migrate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsNetwork/lorawan-stack-migrate/releases/download/v0.9.0/lorawan-stack-migrate_0.9.0_linux_amd64.tar.gz"
      sha256 "23f03ad7ddb7f15ba91d08085e23eafe582c8e7fd7d251d2b4c83311185b147a"

      def install
        bin.install "ttn-lw-migrate"
      end
    end
  end
end
