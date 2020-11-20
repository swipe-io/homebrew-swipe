require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-beta1"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta1/swipe_2.0.0-beta1_darwin_amd64.zip"
      sha256 "c51e4913ef3e60075143c523594077a42f0062392d5d55a83661de8d337937ea"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta1/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta1/swipe_2.0.0-beta1_darwin_386.zip"
      sha256 "a89755dc43f2f7929db62a783184e9cbe8478fd635e4dab7aafb65e2a21dbb43"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta1/swipe_2.0.0-beta1_linux_386.tar.gz"
      sha256 "6f4ebbaca6336c148b88f8987ca67ceb929ba69145881a0e1248abb00ca67eb4"
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
