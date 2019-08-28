class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.2.2.zip"
  # update with: ./updatePantheon.sh <new-version>
  sha256 "4711ba54e961e14fe98baadd864355b79e57cdda4b851ad1dd65ad07566ea4da"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
