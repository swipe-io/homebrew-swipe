require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-beta3"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta3/swipe_2.0.0-beta3_darwin_amd64.zip"
      sha256 "de05f4439ee8e7f84d67ff5fc48b51e86d11b9f47f3a483264ba6e0d9cf546e9"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta3/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta3/swipe_2.0.0-beta3_darwin_386.zip"
      sha256 "b655d36717487da11522ecf127509a4109897a40aab5e1ee94d1cc9c247025e9"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta3/swipe_2.0.0-beta3_linux_386.tar.gz"
      sha256 "7a3e212d2fdc2d7098834bb4eed3c7e76992e5c3e244fd0d91902abcbd535d3a"
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
