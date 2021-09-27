# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwMigrate < Formula
  desc "Migrate from other LoRaWAN network servers to The Things Stack"
  homepage "https://www.thethingsnetwork.org"
  version "0.7.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/TheThingsNetwork/lorawan-stack-migrate/releases/download/v0.7.0/lorawan-stack-migrate_0.7.0_darwin_amd64.tar.gz"
    sha256 "ab5bf04209fed32d13797ba1f8b9842b88bfb21f31f038dd7f69f422e81a2334"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TheThingsNetwork/lorawan-stack-migrate/releases/download/v0.7.0/lorawan-stack-migrate_0.7.0_darwin_arm64.tar.gz"
    sha256 "90fe09d9866a6d05219b0b7af2d7a32b9462b971283f3afcf507aa73e2a62378"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/TheThingsNetwork/lorawan-stack-migrate/releases/download/v0.7.0/lorawan-stack-migrate_0.7.0_linux_amd64.tar.gz"
    sha256 "b67c6610cfe059a7d56d77df5e4b1baa5235544e7b166b900b47f64bee4fc931"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/TheThingsNetwork/lorawan-stack-migrate/releases/download/v0.7.0/lorawan-stack-migrate_0.7.0_linux_armv6.tar.gz"
    sha256 "5ac199db5ea7350419c1165028aba148e0087faf63c7241e982db7d11d83b241"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/TheThingsNetwork/lorawan-stack-migrate/releases/download/v0.7.0/lorawan-stack-migrate_0.7.0_linux_arm64.tar.gz"
    sha256 "a231d3e6bd85dd5bc7eb87bf057e0a3f31f9999f13f2c473beb1ce3eff19f9d5"
  end

  def install
    bin.install "ttn-lw-migrate"
  end
end
