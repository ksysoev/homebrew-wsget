# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wsget < Formula
  desc "wsget binary"
  homepage "https://gihub.com/ksysoev/wsget"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ksysoev/wsget/releases/download/v0.7.1/wsget_Darwin_x86_64.tar.gz"
      sha256 "8be21153d82a0a4ee770e0032d2be99c12cebba84abb94a6ae21a5fbfdda6b00"

      def install
        bin.install 'wsget'
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ksysoev/wsget/releases/download/v0.7.1/wsget_Darwin_arm64.tar.gz"
      sha256 "dfa5d3006c5dfda63e955a3481c72ecd11ea75e02534d3b99efbf95584587364"

      def install
        bin.install 'wsget'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ksysoev/wsget/releases/download/v0.7.1/wsget_Linux_x86_64.tar.gz"
        sha256 "d382f995799973995e63d7d8e5716d6f89089006da0d445e98e7655643b50486"

        def install
          bin.install 'wsget'
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ksysoev/wsget/releases/download/v0.7.1/wsget_Linux_arm64.tar.gz"
        sha256 "e8d5a9a4a9123d5611793e535e6c11af19854f6a91fd40ab68f54242d4500e3c"

        def install
          bin.install 'wsget'
        end
      end
    end
  end

  test do
    system "#{bin}/wsget"
  end
end
