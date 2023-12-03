# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wsget < Formula
  desc "wsget binary"
  homepage "https://gihub.com/ksysoev/wsget"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ksysoev/wsget/releases/download/v0.3.1/wsget_Darwin_arm64.tar.gz"
      sha256 "97fc43bc6385b25649b1ddaf93ce0bedff0c4130c26bba6966c0f1393f38efb3"

      def install
        bin.install 'wsget'
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ksysoev/wsget/releases/download/v0.3.1/wsget_Darwin_x86_64.tar.gz"
      sha256 "23090fbec6333caacf55aa6973f02fffc6a0ef868870a69b976376d6c91f2823"

      def install
        bin.install 'wsget'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ksysoev/wsget/releases/download/v0.3.1/wsget_Linux_arm64.tar.gz"
      sha256 "74466182d41e1b947541ed734c4d914b118f87879c18f3820ad5287ad55be354"

      def install
        bin.install 'wsget'
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ksysoev/wsget/releases/download/v0.3.1/wsget_Linux_x86_64.tar.gz"
      sha256 "92e1526ea1ae749aebbe1033fbe3405b4ee43e1ae68a3bd6015efafd07fc7958"

      def install
        bin.install 'wsget'
      end
    end
  end

  test do
    system "#{bin}/wsget"
  end
end
