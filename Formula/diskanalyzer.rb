class Diskanalyzer < Formula
  desc "Comprehensive disk space analyzer for macOS with intelligent insights"
  homepage "https://github.com/seldredge/diskanalyzer"
  url "https://github.com/seldredge/diskanalyzer/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256_HASH"  # 64-character hash you'll calculate
  license "MIT"
  version "1.0.0"
  
  depends_on :macos => :monterey
  
  def install
    bin.install "diskanalyzer"
  end
  
  def caveats
    <<~EOS
      ✅ DiskAnalyzer has been installed!
      
      Quick commands:
        diskanalyzer         - Full analysis
        diskanalyzer -q      - Quick scan
        diskanalyzer -c      - Cache analysis
        diskanalyzer -l 5    - Find files >5GB
        diskanalyzer -h      - Help
      
      Reports are saved to ~/Desktop/DiskAnalysis_[timestamp]
    EOS
  end
  
  test do
    system "#{bin}/diskanalyzer", "--version"
  end
end