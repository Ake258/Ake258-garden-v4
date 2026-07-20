import { loadQuartzConfig, loadQuartzLayout } from "./quartz/plugins/loader/config-loader"

const config = await loadQuartzConfig()
config.configuration.pageTitle = "🌿 Ake258 口腔医学笔记"
config.configuration.pageTitleSuffix = " · Digital Garden"
config.configuration.baseUrl = "Ake258.online"
config.configuration.locale = "zh-CN"
config.configuration.ignorePatterns = [
  "private",
  "templates",
  ".obsidian",
]

// 禁用不需要的插件
for (const plugin of config.plugins) {
  if (plugin.source === "github:quartz-community/comments") plugin.enabled = false
  if (plugin.source === "github:quartz-community/citations") plugin.enabled = false
  if (plugin.source === "github:quartz-community/hard-line-breaks") plugin.enabled = false
  if (plugin.source === "github:quartz-community/ox-hugo") plugin.enabled = false
  if (plugin.source === "github:quartz-community/roam") plugin.enabled = false
  if (plugin.source === "github:quartz-community/recent-notes") plugin.enabled = true
  if (plugin.source === "github:quartz-community/search") {
    if (plugin.layout) {
      plugin.layout.position = "left"
      plugin.layout.priority = 20
    }
  }
}

// Footer
for (const plugin of config.plugins) {
  if (plugin.source === "github:quartz-community/footer") {
    plugin.options = {
      links: {
        "🏠 首页": "/",
        "🗺️ 笔记地图": "/MOCs/00口腔医学-MOC",
        "📬 GitHub": "https://github.com/Ake258/quartz-garden",
      },
    }
  }
}

export default config
export const layout = await loadQuartzLayout()
