# typed: false
# frozen_string_literal: true

class Wsget < Formula
    desc "wsget binary"
    homepage "https://gihub.com/ksysoev/wsget"
    version "0.2.1"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/ksysoev/wsget/releases/download/v0.2.1/wsget-darwin-amd64.tar.gz"
        sha256 "872c2757986db7275d31f90a9057a77eda1bf324657fa75c0e36c74b2f9d9a15"
  
        def install
          bin.install 'wsget'
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/ksysoev/wsget/releases/download/v0.2.1/wsget-darwin-arm64.tar.gz"
        sha256 "071641c34b84fab80ec7b0bcb67b66b848657cdb381fdbec9abf6b7b5eb0c258"
  
        def install
          bin.install 'wsget'
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/ksysoev/wsget/releases/download/v0.2.1/wsget-linux-arm64.tar.gz"
        sha256 "b65133d5efa02351429b67224ab474f9c79bd3408fc3ce54b97463371e81dc3b"
    
        def install
            bin.install 'wsget'
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/ksysoev/wsget/releases/download/v0.2.1/wsget-linux-amd64.tar.gz"
        sha256 "52e38bc1336a5bd4cdf578a5576b2ad5cc940921f00f4e78e4426a642b5b793d"
  
        def install
          bin.install 'wsget'
        end
      end
    end
  
    test do
      system "#{bin}/wsget"
    end
  end