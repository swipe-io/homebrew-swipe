require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-alpha.20"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.20/swipe_2.0.0-alpha.20_darwin_amd64.zip"
      sha256 "efd411979427de9183107383af0f2a9ce78fa41149713a7a0ee88d5d9c121d01"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.20/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.20/swipe_2.0.0-alpha.20_darwin_386.zip"
      sha256 "8d159be50234b17fa64354c5373e0000b34ba001fd7e90bdfcbd6e8f5f183aea"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.20/swipe_2.0.0-alpha.20_linux_386.tar.gz"
      sha256 "c4dade7acf4ae85f93be1e09c585f06f23e8906b154562a045a922e3b16f9945"
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
