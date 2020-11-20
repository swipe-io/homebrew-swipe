require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-beta.1"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta.1/swipe_2.0.0-beta.1_darwin_amd64.zip"
      sha256 "3b5cb5ce2d6bba3bf50afdd812b03bb7334a45e8b9a2a1897cb69cfb0ab5e586"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta.1/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta.1/swipe_2.0.0-beta.1_darwin_386.zip"
      sha256 "a8bc662b65a4d2fc35cb570455103ea7c6f04844fb56665d69a6313fbd438f53"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta.1/swipe_2.0.0-beta.1_linux_386.tar.gz"
      sha256 "34bfa603435292a675b224492e437ee2c3e18f285a7de794edff051af897269e"
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
