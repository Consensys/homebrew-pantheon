class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.1.0.zip"
  # update with: shasum -a 256
  sha256 "38162bacde1ee5a95bc4a7f688a6c037a91d0a808d071cc51ddc9c1cea71a157"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
