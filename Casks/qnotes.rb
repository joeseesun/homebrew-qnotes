cask "qnotes" do
  version "1.1.50"
  sha256 "9b6be395c23f4c4507b78cfb41925e6392c7f890fccd6d74cedb0e80e010ba44"

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