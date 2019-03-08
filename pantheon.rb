class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.0.1.zip"
  # update with: shasum -a 256
  sha256 "acb015f6467f623fec96de876b274eaccf08951c298e2c5eaf15d45784e3dbf8"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
