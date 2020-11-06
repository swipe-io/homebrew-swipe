require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-alpha.19"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.19/swipe_2.0.0-alpha.19_darwin_amd64.zip"
      sha256 "f49832205be660261110240983830e1f09c873d430ef8d67f45d71fb5f55c1e9"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.19/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.19/swipe_2.0.0-alpha.19_darwin_386.zip"
      sha256 "7181834bb188a3cc1ee8de84440af7f163545f75da5d86405552f885a9b8423c"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.19/swipe_2.0.0-alpha.19_linux_386.tar.gz"
      sha256 "684fa15acc3c99b95252877ba076d0ec2c81d879f764259ce55fa49e0eddc8bc"
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
