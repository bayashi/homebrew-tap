# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Highlightrepo < Formula
  desc "highlightrepo provides a filter to highlight repository directory in a path string."
  homepage "https://github.com/bayashi/highlightrepo"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bayashi/highlightrepo/releases/download/v0.0.3/highlightrepo_0.0.3_darwin_amd64.tar.gz"
      sha256 "a8657a57f8029baa05e51377ec55cf1eb445345277d6b1e88783c5129c86ef9f"

      def install
        bin.install "irir"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bayashi/highlightrepo/releases/download/v0.0.3/highlightrepo_0.0.3_darwin_arm64.tar.gz"
      sha256 "4d9899216e88e6680d8b8c71158d565f7c61c3b1e27f023e0bf27d50009d0a27"

      def install
        bin.install "irir"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bayashi/highlightrepo/releases/download/v0.0.3/highlightrepo_0.0.3_linux_amd64.tar.gz"
        sha256 "0b38957b5e27af4ca873ad429d77b4d2f8949c34ae24bda86a56380753f17af3"

        def install
          bin.install "irir"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bayashi/highlightrepo/releases/download/v0.0.3/highlightrepo_0.0.3_linux_arm64.tar.gz"
        sha256 "d057ea9d31e6a759b58753a4ace51c7bba52a681e64cdf8c5134d4abbbf0b4fd"

        def install
          bin.install "irir"
        end
      end
    end
  end

  test do
    system "#{bin}/highlightrepo", '--version'
  end
end
