require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-beta2"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta2/swipe_2.0.0-beta2_darwin_amd64.zip"
      sha256 "3fac4ebf2b7d2aef4e396a3bca7a23fc9fc44ebf808115de1ea3833cfd586d18"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta2/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta2/swipe_2.0.0-beta2_darwin_386.zip"
      sha256 "ed02fdf571e79df249caf560a63a9b6f1ad303f775e50fc3bb618e2a5aded2a8"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta2/swipe_2.0.0-beta2_linux_386.tar.gz"
      sha256 "381747d6575a9ecec1e99e7af8900502e8effed5e941fa2e2ec524005f7cd163"
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
