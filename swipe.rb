require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-rc4"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc4/v2_2.0.0-rc4_darwin_amd64.zip"
      sha256 "3a917990bb5ebd3ebfa4b759254adf8a70086ef3e8e5599c1d1b7f09ccfbd98a"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc4/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc4/"
      sha256 ""
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc4/v2_2.0.0-rc4_linux_386.tar.gz"
      sha256 "0bbf134bccc32b39f6636ae549339eea8aa212be7973fbc943c04e7a8c2a2439"
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
