class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.0.1.zip"
  # update with: shasum -a 256
  sha256 "7d8cf4b8403c1a5d4dcaa1d6ff1e1da5fcab8dc8623027e94ba75ebff641c288"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
