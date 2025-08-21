# 🍺 Homebrew Tools Tap

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![Homebrew](https://img.shields.io/badge/Homebrew-Tap-orange.svg)](https://brew.sh)
[![macOS](https://img.shields.io/badge/macOS-12%2B-blue.svg)](https://www.apple.com/macos)
[![GitHub Stars](https://img.shields.io/github/stars/yourusername/homebrew-tools?style=social)](https://github.com/yourusername/homebrew-tools)

A collection of powerful, efficient Homebrew formulas for macOS productivity tools and system utilities. Each tool is carefully crafted to solve real-world problems for developers and power users.

## 🚀 Quick Start

```bash
# Add this tap to your Homebrew
brew tap yourusername/tools

# Install a specific tool
brew install diskanalyzer

# Or install directly without tapping
brew install yourusername/tools/diskanalyzer
```

## 📦 Available Tools

### 🔍 DiskAnalyzer
**Comprehensive disk space analyzer with intelligent insights**

A powerful tool that provides deep insights into disk usage, helping you identify space hogs, clean caches, and optimize storage on your Mac.

```bash
# Install
brew install diskanalyzer

# Basic usage
diskanalyzer              # Full analysis
diskanalyzer -q           # Quick scan
diskanalyzer -l 5         # Find files larger than 5GB
diskanalyzer -c           # Analyze caches only
diskanalyzer -h           # Show help
```

**Features:**
- 📊 Detailed storage breakdown by category
- 🎯 Large file detection with configurable thresholds
- 🧹 Cache analysis for all major browsers and apps
- 📁 Duplicate file detection
- 💡 Smart cleanup recommendations
- 📈 Export reports in multiple formats

[View Source](https://github.com/yourusername/diskanalyzer) | [Report Issues](https://github.com/yourusername/diskanalyzer/issues)

### 🚧 Coming Soon

- **git-cleanup** - Intelligent Git repository maintenance tool
- **backup-mate** - Automated backup assistant for important files
- **dev-setup** - Quick development environment configuration
- **port-manager** - Manage and free up system ports

## 🛠 Installation Options

### Standard Installation
```bash
# Add tap and install
brew tap yourusername/tools
brew install diskanalyzer
```

### Direct Installation
```bash
# Install without adding tap
brew install yourusername/tools/diskanalyzer
```

### Install All Tools
```bash
# Add tap
brew tap yourusername/tools

# Install all available tools
brew install $(brew search yourusername/tools/ | grep yourusername/tools/)
```

## 📖 Usage Examples

### DiskAnalyzer Workflows

**Weekly Maintenance Routine:**
```bash
# Quick system check
diskanalyzer -q

# If space is low, run full analysis
diskanalyzer

# Clean caches if needed
diskanalyzer -c
```

**Developer Cleanup:**
```bash
# Find large node_modules and build artifacts
diskanalyzer -l 1 | grep -E "node_modules|build|dist"
```

**Prepare for Backup:**
```bash
# Find large files to exclude from backup
diskanalyzer -l 10 -o ~/Desktop/large_files
```

## 🔧 Advanced Configuration

### Environment Variables
You can set default configurations using environment variables:

```bash
# Add to ~/.zshrc or ~/.bash_profile
export DISKANALYZER_MIN_SIZE=2         # Default minimum size in GB
export DISKANALYZER_OUTPUT=~/Reports   # Default output directory
export DISKANALYZER_TOP_COUNT=30       # Number of items to show
```

### Custom Aliases
Add these helpful aliases to your shell configuration:

```bash
# Quick disk commands
alias disk='diskanalyzer'
alias diskq='diskanalyzer -q'
alias diskc='diskanalyzer -c'
alias disk5='diskanalyzer -l 5'

# Maintenance routine
alias cleanup='diskanalyzer -c && brew cleanup && rm -rf ~/Library/Caches/*'
```

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

### Adding a New Tool

1. Fork this repository
2. Create your formula file in `Formula/your-tool.rb`
3. Follow the existing formula structure
4. Test locally: `brew install --build-from-source Formula/your-tool.rb`
5. Submit a pull request

### Formula Template
```ruby
class YourTool < Formula
  desc "Brief description of your tool"
  homepage "https://github.com/yourusername/your-tool"
  url "https://github.com/yourusername/your-tool/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "SHA256_HASH_HERE"
  license "MIT"
  
  def install
    bin.install "your-tool"
  end
  
  test do
    system "#{bin}/your-tool", "--version"
  end
end
```

### Reporting Issues

Found a bug or have a suggestion? Please open an issue:
- [Tap Issues](https://github.com/yourusername/homebrew-tools/issues) - For installation/formula problems
- [Tool Issues](https://github.com/yourusername/diskanalyzer/issues) - For specific tool problems

## 📊 Statistics

| Tool | Version | Downloads | Last Updated |
|------|---------|-----------|--------------|
| diskanalyzer | 1.0.0 | ![Downloads](https://img.shields.io/badge/dynamic/json?url=https://api.github.com/repos/yourusername/diskanalyzer/releases/latest&query=$.assets[0].download_count&label=) | ![Updated](https://img.shields.io/github/release-date/yourusername/diskanalyzer) |

## 🔄 Updating Tools

```bash
# Update Homebrew and formulas
brew update

# Upgrade specific tool
brew upgrade diskanalyzer

# Upgrade all tools from this tap
brew upgrade $(brew list | grep yourusername/tools/)
```

## 🧪 Testing

All formulas include tests. Run them with:

```bash
# Test specific formula
brew test diskanalyzer

# Audit formula for issues
brew audit --strict diskanalyzer

# Run all tap tests
for formula in Formula/*.rb; do
  name=$(basename "$formula" .rb)
  brew test "$name"
done
```

## 📝 Requirements

- **macOS**: 12.0 (Monterey) or later
- **Homebrew**: Latest version recommended
- **Architecture**: Intel or Apple Silicon

## 🔐 Security

- All formulas are open source and auditable
- SHA256 checksums verify download integrity
- No telemetry or data collection
- Tools run with user permissions only

## 📄 License

This tap and its formulas are released under the [MIT License](LICENSE).

Individual tools may have their own licenses - check each tool's repository for details.

## 🙏 Acknowledgments

- Thanks to the [Homebrew](https://brew.sh) team for the excellent package manager
- Inspired by the macOS developer community
- Built with ❤️ for the command line enthusiasts

## 📮 Contact

- **GitHub**: [@yourusername](https://github.com/yourusername)
- **Issues**: [Create an issue](https://github.com/yourusername/homebrew-tools/issues)
- **Discussions**: [Start a discussion](https://github.com/yourusername/homebrew-tools/discussions)

## 🌟 Star History

[![Star History Chart](https://api.star-history.com/svg?repos=yourusername/homebrew-tools&type=Date)](https://star-history.com/#yourusername/homebrew-tools&Date)

---

<p align="center">
  <i>If you find these tools useful, please consider giving this repo a ⭐!</i>
</p>

<p align="center">
  Made with 🍺 by <a href="https://github.com/yourusername">@yourusername</a>
</p>
