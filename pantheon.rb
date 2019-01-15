class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-0.8.5.zip"
  # update with: shasum -a 256
  sha256 "d84f3189de8c8328997273ecec82b4f32826ac4afbb934f41083a2d6fb240d8f"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
