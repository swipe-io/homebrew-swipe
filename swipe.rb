require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-rc7"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc7/v2_2.0.0-rc7_darwin_amd64.zip"
      sha256 "423194fdff7af61732f6929d68f2fb62fafb0eec097c2262591a4f01a31aedab"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc7/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc7/"
      sha256 ""
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc7/v2_2.0.0-rc7_linux_386.tar.gz"
      sha256 "b7ce133fffe3510e788b1c4457912e59ecc0fd913f13e5d7ebc6bc15717086d1"
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
