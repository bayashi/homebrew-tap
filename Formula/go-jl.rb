# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoJl < Formula
  desc "Show the `JSON within JSON` log nicely"
  homepage "https://github.com/bayashi/go-jl"
  version "1.3.3"

  on_macos do
    on_intel do
      url "https://github.com/bayashi/go-jl/releases/download/v1.3.3/go-jl_1.3.3_darwin_amd64.tar.gz"
      sha256 "113cbcfac626c207c37ccbec8627aa621885e5851eb33df09aa8fbf9dcb4dbfe"

      def install
        bin.install "jl"
      end
    end
    on_arm do
      url "https://github.com/bayashi/go-jl/releases/download/v1.3.3/go-jl_1.3.3_darwin_arm64.tar.gz"
      sha256 "40d6c82fe65d00a3122b388a8e846b69016cd89ed6944f17198e426b4f35c318"

      def install
        bin.install "jl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bayashi/go-jl/releases/download/v1.3.3/go-jl_1.3.3_linux_amd64.tar.gz"
        sha256 "a68c4fce77680a9850e1ebe985619b822c686696e180bfd7b053c986ffd1ea22"

        def install
          bin.install "jl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bayashi/go-jl/releases/download/v1.3.3/go-jl_1.3.3_linux_arm64.tar.gz"
        sha256 "04e156ac0f6e34154efe56538e47cb7333751230e3eb0704888ef16cb0986865"

        def install
          bin.install "jl"
        end
      end
    end
  end

  test do
    system "#{bin}/jl", '--version'
  end
end
