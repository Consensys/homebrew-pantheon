class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.1.3.zip"
  # update with: ./updatePantheon.sh <new-version>
  sha256 "83c99415194841d5c3cd1566630ba10c3c1404f5633127fb799b750a1e9bc361"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
