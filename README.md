# Gemini CLI & GitHub MCP 实战教程项目

[![Project Status](https://img.shields.io/badge/status-active-brightgreen.svg)](https://github.com/xianfanwindy/gemini-cli-mcp-project)
[![Gemini CLI](https://img.shields.io/badge/tool-Gemini%20CLI-blue.svg)](https://goo.gle/gemini-cli)

本项目是一个集成的学习与实践平台，旨在帮助开发者掌握 **Gemini CLI** 的高级特性，并演示如何配置与使用 **Model Context Protocol (MCP)** 连接 GitHub 生态。

## 🚀 核心内容

### 1. Gemini CLI 官方教程
项目内置了从入门到精通的全套教程，引导你掌握 AI 辅助开发的核心工作流：
- **[入门教程 (Beginner)](TUTORIAL_1_BEGINNER.md)**: 基础交互、文件自动编辑 (Auto-Edit)。
- **[中级教程 (Intermediate)](TUTORIAL_2_INTERMEDIATE.md)**: 计划模式 (Plan Mode)、项目上下文管理。
- **[高级教程 (Advanced)](TUTORIAL_3_ADVANCED.md)**: 子智能体调度、私有内存管理。

### 2. GitHub MCP 配置
本项目包含预配置的 `mcp-config.json`，支持通过 **Model Context Protocol** 赋予 AI 直接操作 GitHub 仓库的能力（如创建 Issue、管理 PR、搜索代码等）。

## 🛠 环境配置

### 1. 获取 GitHub Token
你需要一个具有 `repo` 权限的 [GitHub Personal Access Token (Classic)](https://github.com/settings/tokens)。

### 2. 本地 MCP 设置
如果你使用的是支持 MCP 的客户端（如 Claude Desktop 或定制化的 Gemini CLI），可以将以下配置集成：

```json
{
  "mcpServers": {
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "你的_GITHUB_TOKEN"
      }
    }
  }
}
```

### 3. 环境变量
推荐将 Token 存储在环境变量中：
```bash
export GITHUB_TOKEN=your_token_here
```

## 📅 重要通知：Antigravity 迁移
Gemini CLI 正在全面迁移至 **Antigravity CLI (agy)**。
- **截止日期**: 2026年6月18日
- **操作指南**: 请查阅 [GEMINI_GUIDE.md](GEMINI_GUIDE.md) 获取详细的迁移步骤。

## 📂 项目结构
- `mcp-config.json`: MCP 服务器配置模板。
- `CUSTOM_PROMPT.md`: 专为本项目优化的 AI 自主开发提示词。
- `GEMINI.md`: 项目特定的架构准则与规范。
- `test_urls.sh`: 用于验证文档链接的自动化脚本。

## 🤝 贡献
如果你在学习过程中发现文档错误或有更好的 MCP 配置建议，欢迎提交 Pull Request！

---
*Created by Gemini CLI - 2026-05-23*
