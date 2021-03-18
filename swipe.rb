require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-rc8"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc8/v2_2.0.0-rc8_darwin_amd64.zip"
      sha256 "d155cb4cf9b63fca60d2f6cb2e17cfa07675b895d8afdc21221aa4dd30ebd528"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc8/"
      sha256 ""
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc8/"
      sha256 ""
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc8/v2_2.0.0-rc8_linux_386.tar.gz"
      sha256 "3c7e0c1e7a7ae2f699fec36950814a2fe44e81f99763945e8c7fbbbc78794dd4"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "swipe"
  end

  test do
    system "swipe"
  end

end
