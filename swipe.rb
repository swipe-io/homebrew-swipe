require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-alpha.15"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.15/swipe_v2.0.0-alpha.15_darwin_amd64.zip"
      sha256 "7802e55d94784008f47cd03403988bf67583ff79635070c8833ff38ef9c1f1a4"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.15/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.15/swipe_v2.0.0-alpha.15_darwin_386.zip"
      sha256 "45b01a0101d090cf20ccc0cd5bb9ee8b91b7e050de431e6ac1c5bba5467f90c3"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.15/swipe_v2.0.0-alpha.15_linux_386.tar.gz"
      sha256 "b4520c7c3bc95a3ec3a902883d35a1596c8217322f3e41b5e1517490d004d9ff"
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
