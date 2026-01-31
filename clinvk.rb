# typed: false
# frozen_string_literal: true

class Clinvk < Formula
  desc "Unified AI CLI wrapper for multiple backends"
  homepage "https://github.com/signalridge/clinvoker"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/signalridge/clinvoker/releases/download/v0.2.0/clinvoker_0.2.0_darwin_amd64.tar.gz"
      sha256 "feff83b8d5e5fc3806bfef8d93aa5f72da9352428efb37cd5fd89ea0386932c1"
    end
    on_arm do
      url "https://github.com/signalridge/clinvoker/releases/download/v0.2.0/clinvoker_0.2.0_darwin_arm64.tar.gz"
      sha256 "f9bac849cbd2eab5969ae73d21aaab666cc0c018be3671f107979d4ea1c305ef"
    end
  end

  def install
    bin.install "clinvk"
  end

  test do
    system "#{bin}/clinvk", "--version"
  end
end
