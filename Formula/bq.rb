class Bq < Formula
  desc "zero hype high performance qrcode service"
  homepage "https://bq.co.tz"
  url "https://github.com/gernest/bq/releases/download/v0.1.18/bq_0.1.18_darwin_amd64.tar.gz"
  version "0.1.18"
  sha256 "aff48403723a9e17d3a7493c2722ea5472550e187f8379eb75f9059cf5f2d522"

  def install
    bin.install "bq"
  end

  def caveats
    "Use ql dtabase only for test drive and postgres for production"
  end

  plist_options :startup => false

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key>
  <string>tz.co.bq</string>
  <key>ProgramArguments</key>
    <array>
      <string>bq</string>
      <string>serve</string>
    </array>
  <key>KeepAlive</key>
  <key>Sockets</key>
    <dict>
      <key>Listeners</key
      <array>
        <key>SockServiceName</key>
        <string>8000</string>
      </array>
    </dict>
</dict>
</plist>

    EOS
  end

  test do
    
  end
end
