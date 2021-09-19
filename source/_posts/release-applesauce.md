---
title: Alicorn AppleSauce 发行版
date: 2021-09-19 13:27:00
categories:
  - 发行版
  - 普通发行版
pin: true
---

AppleSauce 现在正式发行，来看看这里的新东西……

<!-- more -->

## 版本号

AppleSauce 是 Alicorn Core 18 直至下一发行版的开发代号。

AppleSauce 搭载了 React 17.0.2、Material UI 4.12.3、WebSocket 8.2.2 和 Fetch（Chromium 93.0.4577.63），添加了许多小工具，同时优化了稳定性，建议所有用户安装。

Crystal 是在 Electron 14.0.1 上构建的。

## 包含的其它软件

- Authlib Injector - 1.1.38

- Nide8 Auth（无版本号）

- Harmony Forge Installer CLI - Internal

## 迭代与废弃

| 项目     | Crystal | AppleSauce                                                                                                    |
| ------ | ------- | ------------------------------------------------------------------------------------------------------------- |
| 网络库    | Got     | Fetch                                                                                                         |
| 添加功能   |         | 连通性检查<br/>整合包制作<br/>登录窗口代理<br/>多核心 Fabric 支持<br/>镜像重新加载<br/>镜像链选择<br/>首字节等待计时<br/>Fabric 类档案兼容<br/>Maud 2 新助理 |
| 实验功能变更 | 上一页（实验） | 上一页（稳定）<br/>虚拟局域网（实验）<br/>服务器列表（实验）<br/>快速设置（实验）                                                              |
| 下载速度*  | 约 3min  | 约 44s                                                                                                         |
| 启动速度** | 约 30s   | 约 10s                                                                                                         |

*：在一个未经碎片整理的机械硬盘上，从一个空的容器，以最大带宽 100Mbps，禁用文件校验，除去操作时间后，下载 1.17.1 核心及相关文件，所消耗的大致时间。

**：在一个未经碎片整理的机械硬盘上，从一个已经启动过一次 1.17.1 核心的容器，启动 1.17.1，从按钮按下到窗口出现，所消耗的大致时间。

## 生命周期

AppleSauce 是**普通发行版**，这意味着当下一版本的 Alicorn 发行时，AppleSauce 的支持同步终止。

AppleSauce 现在仍然受到支持。
