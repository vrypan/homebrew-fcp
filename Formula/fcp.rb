# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fcp < Formula
  desc "Copy data from/to farcaster and the local filesystem"
  homepage "https://github.com/vrypan/fcp"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vrypan/fcp/releases/download/v0.9.2/fcp_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "5fce4e1a0283ffdbe866973ad5a428e07639c37d07f176ca4df587028c710cfc"

      def install
        bin.install "fcp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vrypan/fcp/releases/download/v0.9.2/fcp_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "1b71ab3162fbca4595759c3020aaa8ffb855c0b85627e55ff9bd1ac8dd834367"

      def install
        bin.install "fcp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/fcp/releases/download/v0.9.2/fcp_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "012fd5e624ffb8d860e6032cff08c61de7555b32f5bf002c6bbe5d9b89d75ea6"

        def install
          bin.install "fcp"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/fcp/releases/download/v0.9.2/fcp_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "21beeb3e03586f76990af422f80843eaef3c88ee89111c9df526e9da6bb01100"

        def install
          bin.install "fcp"
        end
      end
    end
  end

  def caveats
    <<~EOS
      fcp --help
    EOS
  end

  test do
    system "#{bin}/fcp version"
  end
end
