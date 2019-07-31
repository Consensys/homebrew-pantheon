class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.2.0.zip"
  # update with: ./updatePantheon.sh <new-version>
  sha256 "e1b49ccc1aaf449035cd329f8790c4583e2e7a19adcdff70fa61263c48b5664b"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
