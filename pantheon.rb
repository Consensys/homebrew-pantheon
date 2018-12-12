class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-0.8.3.zip"
  # update with: shasum -a 256
  sha256 "48f5fdf7e1f8a7e460ecb86cbf3b8ac45c188af9d8b973e2d9ceab8d57b82a25"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
