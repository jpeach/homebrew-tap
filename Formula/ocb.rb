# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ocb < Formula
  desc "This program generates a custom OpenTelemetry Collector from a given configuration."
  homepage "https://opentelemetry.io/docs/collector/custom-collector/"
  version "1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jpeach/homebrew-tap/releases/download/v1.2/ocb_1.2_darwin_arm64"
      sha256 "5a2ad66744aedf2b93ef2bb2d1bf1eb07727007e8050ed794d7693bbde82b249"

      def install
        bin.install "ocb_1.2_darwin_arm64" => "ocb"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jpeach/homebrew-tap/releases/download/v1.2/ocb_1.2_darwin_amd64"
      sha256 "bdda8185dd5eaa60dbdb52df6476b2e0b40da97705573dd306aba2a320315b87"

      def install
        bin.install "ocb_1.2_darwin_amd64" => "ocb"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jpeach/homebrew-tap/releases/download/v1.2/ocb_1.2_linux_arm64"
      sha256 "06cf8c66cb5fd38aaa242dca5bc38be38316cb1ce553f02ac2ae14522476c702"

      def install
        bin.install "ocb_1.2_linux_arm64" => "ocb"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jpeach/homebrew-tap/releases/download/v1.2/ocb_1.2_linux_amd64"
      sha256 "432d8812c0fca75977af4a250423c72aea077e9fb796975e3dee3ab85c445a1b"

      def install
        bin.install "ocb_1.2_linux_amd64" => "ocb"
      end
    end
  end

  depends_on "go" => :optional

  test do
    system "#{bin}/ocb version"
  end
end
