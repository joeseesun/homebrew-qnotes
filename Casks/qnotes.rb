cask "qnotes" do
  version "1.1.52"
  sha256 "9879149c79611029c26021a1a38fcf1fc3d5ac9e3556b7b51c6ae38f88ffd0d3"

  url "https://github.com/joeseesun/qnotes-app/releases/download/v#{version}/QNotes-#{version}-arm64.dmg"
  name "QNotes"
  desc "双模式智能内容收集整理工具 - AI驱动的笔记和知识管理应用"
  homepage "https://github.com/joeseesun/qnotes-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "QNotes.app"

  # 安装成功说明
  caveats do
    <<~EOS
      🎉 QNotes v#{version} 已成功安装！

      ✨ 这是完整公证版本 (Notarized Developer ID)
      ✅ 可直接双击运行，无任何安全警告
      ✅ 包含完整PDF导出功能
      ✅ 符合所有macOS安全标准

      🚀 立即开始使用：
      在Finder中打开 Applications/QNotes.app 即可开始！

      📖 使用教程：https://xiangyangqiaomu.feishu.cn/wiki/CHp0woTaLi166Cksb1BcbzQhns8
      🆘 技术支持：https://github.com/joeseesun/qnotes-app/issues
    EOS
  end

  # 卸载时清理应用数据（可选）
  uninstall quit:   "com.qiaomuAI.qnotes",
            delete: [
              "/Applications/QNotes.app",
            ]

  # 清理用户数据（可选，用户可能想保留）
  zap trash: [
    "~/Library/Application Support/qnotes",
    "~/Library/Preferences/com.qiaomuAI.qnotes.plist",
    "~/Library/Logs/qnotes",
    "~/Library/Caches/com.qiaomuAI.qnotes"
  ]
end