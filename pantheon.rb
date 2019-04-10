class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.0.3.zip"
  # update with: shasum -a 256
  sha256 "928b5854ca7981fd33c8ac45c2cc2110a54e26c30026611bdc3506cd910ddde4"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
