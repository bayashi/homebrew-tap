# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Xfg < Formula
  desc "Do `find` paths by a keyword, and also search for contents like a `grep` in one command."
  homepage "https://github.com/bayashi/xfg"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bayashi/xfg/releases/download/v0.0.7/xfg_0.0.7_darwin_amd64.tar.gz"
      sha256 "15ba87c81d355fbe7c19a4095d0300901b4c3541d0bda4e0acc241ea9c84b450"

      def install
        bin.install "xfg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bayashi/xfg/releases/download/v0.0.7/xfg_0.0.7_darwin_arm64.tar.gz"
      sha256 "59b893285c2f9a6db63e20600cd41c944e0dc9dd1cfee3f13ccb622218bc1cad"

      def install
        bin.install "xfg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bayashi/xfg/releases/download/v0.0.7/xfg_0.0.7_linux_amd64.tar.gz"
      sha256 "7f0c49d040e3e76bab16e6582087ba27ff2bad05c3532e62cec2d98a9183c1fc"

      def install
        bin.install "xfg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bayashi/xfg/releases/download/v0.0.7/xfg_0.0.7_linux_arm64.tar.gz"
      sha256 "70658c78321e16d38dd1d1bf93c8fa85b3d88d45ed8c7d5f4b605505e6e1a54a"

      def install
        bin.install "xfg"
      end
    end
  end

  test do
    system "#{bin}/xfg", '--version'
  end
end
