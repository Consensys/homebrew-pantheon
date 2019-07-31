class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.1.4.zip"
  # update with: ./updatePantheon.sh <new-version>
  sha256 "b9349fe67b2264d401ecdc3b3505ce9301b46e0bd050392f4ef8a6b6a7dc4f35"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
