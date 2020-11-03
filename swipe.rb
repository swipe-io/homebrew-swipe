require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-alpha.18"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.18/swipe_2.0.0-alpha.18_darwin_amd64.zip"
      sha256 "9b3f484279597e030ab31d82a70a133749386e083c38b1e1bbd6e6851da4524f"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.18/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.18/swipe_2.0.0-alpha.18_darwin_386.zip"
      sha256 "6df48341f35bfb69b57b395866b69084abc859a5af1644f3cb24526d26dbc4b2"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.18/swipe_2.0.0-alpha.18_linux_386.tar.gz"
      sha256 "d3566c63fe8b852c1e19d414bc22f5e9aba7976ec0dc2945e6fe648d3cb17dd7"
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
