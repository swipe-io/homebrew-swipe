require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-alpha.16"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.16/swipe_2.0.0-alpha.16_darwin_amd64.zip"
      sha256 "c487db005c1d3404057ab7b8fe1533fcc23b76b46154408045b74ed5f3827feb"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.16/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.16/swipe_2.0.0-alpha.16_darwin_386.zip"
      sha256 "db6a32e6d6750dceccc9158e7963ff96490bd56dec233868bddff39dc276c8e5"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.16/swipe_2.0.0-alpha.16_linux_386.tar.gz"
      sha256 "bef4ec2583e4576dd97a082be383c31aa4c118a4436aff039d09556f855a7127"
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
