class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-0.9.1.zip"
  # update with: shasum -a 256
  sha256 "21adc39f04b3fb16d66d2e254a9915c2201234af60a79925ad4f980f2de3d052"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
