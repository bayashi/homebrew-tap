# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Irir < Formula
  desc "A filter to add colors for text lines generically from a YAML configuration file easily"
  homepage "https://github.com/bayashi/irir"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bayashi/irir/releases/download/v0.6.0/irir_0.6.0_darwin_amd64.tar.gz"
      sha256 "fa97c8f0793b1301e7100cc7dfc65647fe5901bd5b083d5e11638b05398fd040"

      def install
        bin.install "irir"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bayashi/irir/releases/download/v0.6.0/irir_0.6.0_darwin_arm64.tar.gz"
      sha256 "0c580d57264304fabec640c9763a90b6e2c55469ca304bd4ebbcb67780abbf09"

      def install
        bin.install "irir"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bayashi/irir/releases/download/v0.6.0/irir_0.6.0_linux_amd64.tar.gz"
        sha256 "09fd540acec376e6979423003166f0633c87ef4a13ee7b4a3998180036b98787"

        def install
          bin.install "irir"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bayashi/irir/releases/download/v0.6.0/irir_0.6.0_linux_arm64.tar.gz"
        sha256 "e9affe61dc0cac4bde4ab764c2a247c407f12d8877982231bf226565cbaab663"

        def install
          bin.install "irir"
        end
      end
    end
  end

  test do
    system "#{bin}/irir", '--version'
  end
end
