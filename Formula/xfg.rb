# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Xfg < Formula
  desc "Do `find` paths by a keyword, and also search for contents like a `grep` in one command."
  homepage "https://github.com/bayashi/xfg"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bayashi/xfg/releases/download/v0.0.9/xfg_0.0.9_darwin_amd64.tar.gz"
      sha256 "a71508cb75f9bccbdcb74b604f8d992a2f3edcf41fe3a0faa405439311a8afc1"

      def install
        bin.install "xfg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bayashi/xfg/releases/download/v0.0.9/xfg_0.0.9_darwin_arm64.tar.gz"
      sha256 "88fb010bf1e3e1553009eb9820021988ea03736419c5ed6e29be122ac22b7cd3"

      def install
        bin.install "xfg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bayashi/xfg/releases/download/v0.0.9/xfg_0.0.9_linux_amd64.tar.gz"
      sha256 "88075d4c87aafd626cd914fc2eb6fe462f675cd9a9c405e59f64b9becb94c9f1"

      def install
        bin.install "xfg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bayashi/xfg/releases/download/v0.0.9/xfg_0.0.9_linux_arm64.tar.gz"
      sha256 "937f54765367a20aa6f5ca01e98d071e3cf00eea6641f12da4f3050c79c3fa13"

      def install
        bin.install "xfg"
      end
    end
  end

  test do
    system "#{bin}/xfg", '--version'
  end
end
