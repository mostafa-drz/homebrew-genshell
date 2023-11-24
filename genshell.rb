class Genshell < Formula
  desc "AI-powered CLI tool for generating shell commands from natural language"
  homepage "https://github.com/mostafa-drz/genshell"
  url "https://github.com/mostafa-drz/genshell/releases/tag/v1.0.0"
  sha256 "e159651a63c3b16be7fc8b84328947fb189394a574c3d9516b6ed882fe848ce9"

  def install
    bin.install "genshell"
  end

  test do
    system "#{bin}/genshell", "-h"
  end
end
