require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-rc9"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc9/v2_2.0.0-rc9_darwin_amd64.zip"
      sha256 "62c3bf21aadcc91699cb8e32e157b3f0fd1d126b437164e50531756ddb9729b2"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc9/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc9/"
      sha256 ""
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc9/v2_2.0.0-rc9_linux_386.tar.gz"
      sha256 "5b0af6cc472d492105d2bacb8306fe8723281aa983dd17c36f95fc5c989b0bda"
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
