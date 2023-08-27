class EtesyncDav < Formula
  desc "CalDAV and CardDAV adapter for EteSync"
  homepage "https://www.etesync.com/"
  url "https://github.com/etesync/etesync-dav/releases/download/v0.31.2/mac-etesync-dav.zip"
  sha256 "a07407f2511486b3e87fba6959612a19612d0965c05fe3fd75b96bc90db6e151"
  license "GPL-3.0-only"

  def install
    bin.install "etesync-dav"
  end

  test do
    assert_predicate (bin/"etesync-dav").realpath, :executable?
    assert_match "EteSync DAV version", shell_output("#{bin}/etesync-dav --version")
  end
end
