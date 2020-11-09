require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-alpha.21"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.21/swipe_2.0.0-alpha.21_darwin_amd64.zip"
      sha256 "31c30e8179e2af3bb2ee27df6bad085b92df255dce4b0a5e2959c1f99c2e60e4"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.21/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.21/swipe_2.0.0-alpha.21_darwin_386.zip"
      sha256 "f7b50807c3f789947945e84a95b6b09dac408b7f4941b2010d52e3754961f8f4"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.21/swipe_2.0.0-alpha.21_linux_386.tar.gz"
      sha256 "967da60da6b2d55db9e5d857de7733b2d70981d70600407e5ff4957f3b9b1fe7"
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
