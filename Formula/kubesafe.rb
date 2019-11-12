class Kubesafe < Formula
  desc "A tool that verifies expected cluster before running commands"
  homepage "https://github.com/djmarkoz/kubesafe"
  url "https://github.com/djmarkoz/kubesafe/releases/download/v0.1.0/v0.1.0.tar.gz"
  sha256 "8855c2339292e34ef8e13b1ae2dd4860db8c99d0580528699e1f7b70a72a1fd7"
  head "https://github.com/djmarkoz/kubesafe.git"

  bottle :unneeded

  depends_on "kubernetes-cli"

  def install
    bin.install "kubesafe"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/kubesafe -h 2>&1")
  end
end
