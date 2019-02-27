class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.0.0.zip"
  # update with: shasum -a 256
  sha256 "6e53e75a26c7b6db50aea7d6deef3bac1ff20b1da8851b847fddf6350261b161"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
