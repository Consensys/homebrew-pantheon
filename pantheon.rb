class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.2.1.zip"
  # update with: ./updatePantheon.sh <new-version>
  sha256 "6e6dcad2f6230f9e13c69f510c16458e4ceb6a4b9ceee5d45c85b47fb40a440b"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
