require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-beta5"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta5/swipe_2.0.0-beta5_darwin_amd64.zip"
      sha256 "16b654cdf958a04affff7a8af2562da18fa692f07c81bca47feade4053f0b29d"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta5/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta5/swipe_2.0.0-beta5_darwin_386.zip"
      sha256 "a7c66fdccd04c69f5c519041cf1a44c4b0e3d01b078f6a1f2aa5292b7738afd4"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta5/swipe_2.0.0-beta5_linux_386.tar.gz"
      sha256 "c9e3591a67caee226bb6c6d5135c97288224df5ffdaec4a4ddecdbe1e5cd28a9"
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
