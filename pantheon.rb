class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.1.2.zip"
  # update with: ./updatePantheon.sh <new-version>
  sha256 "84db61abd9d2df588174a2e1de40d473734bea200b440a9d848f3f167ca18dac"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
