class Bq < Formula
  desc "zero hype high performance qrcode service"
  homepage "https://bq.co.tz"
  url "https://github.com/gernest/bq/releases/download/v0.1.6/bq_0.1.6_darwin_amd64.tar.gz"
  version "0.1.6"
  sha256 "c3103b613b2e11f9dcd02de7c8c50b5cc86d1d600c98322fa55c92161ab4ba36"

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
