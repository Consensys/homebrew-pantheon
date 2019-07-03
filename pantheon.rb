class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.1.4.zip"
  # update with: ./updatePantheon.sh <new-version>
  sha256 "93361333477906f6cea562ee755dd127d5af989229c9355f864f6763b545037f"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
