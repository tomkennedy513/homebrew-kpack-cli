class KpackCli < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.3.0/kp-darwin-0.3.0"
    sha256 "d12890687bba26ce0b54ad4ea044c53a6cb3a3c5a22913911a97bd5aed320d3d"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.3.0/kp-linux-0.3.0"
    sha256 "0746a35a35ca7ff7eea5306461128772894b33f009781d30aadc835d2b8785f9"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end
