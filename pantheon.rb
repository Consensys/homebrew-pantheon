class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-0.8.2.zip"
  # update with: shasum -a 256
  sha256 "9636ecb0d559a179ffaec4c283a4bd00319c8d744e3b0a7d0db7deee809238f0"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
