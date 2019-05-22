class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.1.1.zip"
  # update with: ./updatePantheon.sh <new-version>
  sha256 "d27c3c42cb67f38ba0b0b83a13abee73b19e14a64b721b39d2592169d7da68e5"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
