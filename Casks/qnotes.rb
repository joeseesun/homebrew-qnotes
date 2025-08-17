cask "qnotes" do
  version "1.1.51"
  sha256 "565abf2cbaaa421a5db7d778e1e3b85fbad5e96eb7516e91d1a8a9e36ee466fd"

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

  # 首次运行说明
  caveats do
    <<~EOS
      QNotes 已成功安装！

      ⚠️  首次运行重要提醒：
      由于此版本包含完整PDF导出功能，macOS会显示安全警告。

      首次启动请按以下步骤操作：
      1. 在Finder中找到 QNotes.app
      2. 右键点击 → 选择"打开"
      3. 在弹出的安全警告中选择"打开"

      或者：
      1. 系统偏好设置 → 安全性与隐私
      2. 点击"仍要打开"

      ✅ 一次设置后，QNotes将正常启动，无需重复此步骤

      📖 使用教程：https://xiangyangqiaomu.feishu.cn/wiki/CHp0woTaLi166Cksb1BcbzQhns8
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