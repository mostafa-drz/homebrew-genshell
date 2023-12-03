class Genshell < Formula
  desc "AI-powered CLI tool for generating shell commands from natural language"
  homepage "https://github.com/mostafa-drz/genshell"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/mostafa-drz/genshell/releases/download/v1.3.0/genshell-macos-intel"
      sha256 "7d09dd955549290f73bb50ba36140b4520051976d7c6f0ac5078752e48124168"
    elsif Hardware::CPU.arm?
      url "https://github.com/mostafa-drz/genshell/releases/download/v1.3.0/genshell-macos-arm"
      sha256 "a8cd1677903c65812ffdfacbb5dff7ce4d7d2b1f129eb5e82085f2b07ef968c5"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mostafa-drz/genshell/releases/download/v1.3.0/genshell-linux-intel"
      sha256 "781f6930fa9835c9c85f1b2ac6a26557a6c9a38218e222098812e1389520442e"
    elsif Hardware::CPU.arm?
      # Assuming you have an ARM build for Linux
      url "https://github.com/mostafa-drz/genshell/releases/download/v1.3.0/genshell-linux-arm"
      sha256 "08eefac7ee48a2048cfa8c3527cad22f91dbf6e8367694c57979dfd8e9eec62e"
    end
  end

  def install
    bin.install "genshell-#{OS.mac? ? "macos" : "linux"}-#{Hardware::CPU.intel? ? "intel" : "arm"}" => "genshell"
  end

  test do
    system "#{bin}/genshell", "--version"
  end
end
