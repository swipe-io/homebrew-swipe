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
      sha256 "b96a0381832bcb7d6699aa82891a9bdf40aa42fa47a36e00e9ae4543f30a52ee"
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
      sha256 "566ae878bbc536048e8833efe81ac965178c399695ca793ced912b35659c35c0"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta1/swipe_2.0.0-beta1_linux_386.tar.gz"
      sha256 "c0d9ceab0cdededac39d96ba57442a897186b38c7a1222050a193805515350c3"
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
