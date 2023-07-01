# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoVl < Formula
  desc "Makes CUI table vertical"
  homepage "https://github.com/bayashi/go-vl"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bayashi/go-vl/releases/download/v0.0.3/go-vl_0.0.3_darwin_arm64.tar.gz"
      sha256 "c4118e89cf2c930e771508adfc521969fa14337868d2ad4b86e7cc74730f883f"

      def install
        bin.install "vl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bayashi/go-vl/releases/download/v0.0.3/go-vl_0.0.3_darwin_amd64.tar.gz"
      sha256 "d46e4a6ff1d32a390eba0ea6c1952c1aafb7d7321a8833f4cb28b102307bf930"

      def install
        bin.install "vl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bayashi/go-vl/releases/download/v0.0.3/go-vl_0.0.3_linux_arm64.tar.gz"
      sha256 "be6fca8925ef7e0d8fa42254c94280f7ba31818092601c87a7c253a141563886"

      def install
        bin.install "vl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bayashi/go-vl/releases/download/v0.0.3/go-vl_0.0.3_linux_amd64.tar.gz"
      sha256 "10dea6b149ad3a5b3ebd67f30e9ec6a3d0932dab92702908bf5b202ac9cd3de9"

      def install
        bin.install "vl"
      end
    end
  end

  test do
    system "#{bin}/vl", '--version'
  end
end
