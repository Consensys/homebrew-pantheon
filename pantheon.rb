class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-0.9.0.zip"
  # update with: shasum -a 256
  sha256 "59a5ee0fe2a16e33d777d7b4b7b81babeb06e483ed2d942163e9c96fa1b1c47f"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
