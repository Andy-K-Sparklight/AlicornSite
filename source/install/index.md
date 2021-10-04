---
title: 安装指南
date: 2021-08-17 15:53:42
---

## 安装或重新安装

1. 从以下的地址，获取 Alicorn 归档：
- 国内加速链接：[Windows 64 位](https://alicorn-go.vercel.app/latest-win32-release) [GNU/Linux 64 位](https://alicorn-go.vercel.app/latest-gnu-release)

- FastGit 镜像（推荐）：[Windows 64 位](https://endpoint.fastgit.org/https://github.com/Andy-K-Sparklight/AlicornBinaries/releases/download/latest/Alicorn-win32-x64.zip) [Windows 32 位](https://endpoint.fastgit.org/https://github.com/Andy-K-Sparklight/AlicornBinaries/releases/download/latest/Alicorn-win32-ia32.zip) [GNU/Linux 64 位](https://endpoint.fastgit.org/https://github.com/Andy-K-Sparklight/AlicornBinaries/releases/download/latest/Alicorn-linux-x64.tar.gz)

- GitHub：[Windows 64 位](https://github.com/Andy-K-Sparklight/AlicornBinaries/releases/download/latest/Alicorn-win32-x64.zip) [Windows 32 位](https://github.com/Andy-K-Sparklight/AlicornBinaries/releases/download/latest/Alicorn-win32-ia32.zip) [GNU/Linux 64 位](https://github.com/Andy-K-Sparklight/AlicornBinaries/releases/download/latest/Alicorn-linux-x64.tar.gz)
  
  受各种原因限制，Alicorn 目前不提供 macOS 版本的预编译归档，请尝试下面章节的方法。
  
  *除非我们变更此页面的内容，否则这两个链接将是永久链接，若有必要，我们会修改源站的文件，但若各站点无故障出现，我们不会修改链接。*
2. 解压下载的文件，用任何你喜欢的方式，到一个你找得到的地方（最好创建一个新文件夹）。

3. 进入解压后的目录，运行 Alicorn：
   
   - Windows：双击 `Alicorn.exe` 即可启动 Alicorn。
   
   - GNU/Linux：用你喜欢的方式运行 `alicorn.sh`，或者直接运行 `Alicorn` 可执行文件。
   
   若没有问题，Alicorn 会在几秒钟后启动。
   
   请不要将 Alicorn 解压到**需要提升权限的地方**，如 `C:\Windows` 或 `/usr/`，请将她放在普通的目录下。

## 从源代码构建

这是目前唯一一种在 macOS（及其它不兼容平台）上运行 Alicorn 的方法，可参考 [构建说明](https://github.com/Andy-K-Sparklight/Alicorn/blob/main/README.md) 进行构建。

## 重新安装的说明

如果你在重新安装 Alicorn，**请阅读以下的说明**！

- 如果你只是想重置设置，**不必重新安装**——重新安装也不能重置设置，你需要在「选项」、「高级和重置」下勾选「恢复如初」和「一忘皆空」，然后重启启动器，Alicorn 就会自动重置你的设置（和统计数据）。

- 重新安装应当**仅仅被用于修复**损坏的 Alicorn 或者 Electron 的升级，其它工作都可以通过 Alicorn 更新完成。

- 你不必删除旧版的 Alicorn 就可以重新下载一个新版本的归档，但两个 Alicorn 会共享设置，如果出现兼容性问题，可有你苦头吃的，因此建议移除旧版本。

如有更多问题，可随时联系我们。

## 手动更新或修复

有时 Alicorn 出了一点小问题，为了这一点问题就要重新下载 80 M 的归档，虽然也不需要很久，但总感觉有点……大动干戈。（虽然以下的方法也没有多简单啦）

这也有助于快速升级多个版本。按照以下的方法来更新 Alicorn 或者修复她。

1. 前往 [版本发布](https://github.com/Andy-K-Sparklight/Alicorn/releases) 页面，寻找最新的发行版，通常，一个可用的发行版被标记为 Alicorn 开发代号 (Core 内核版本) 的形式。有些发行版没有编写单独的 Release，这可能因为它们不稳定。

2. 下载最新的发行版中的 Source code（GitHub 提供了 zip 和 tar.gz 两个版本），将其解压。

3. 找到你的 Alicorn 安装文件夹（Alicorn.exe 或者 alicorn.sh 所在的文件夹），再切换到其中的 `resources/app` 文件夹中。

4. 从下载的归档中提取 release 文件夹，将其中的文件全部对应地放进 `resources/app` 文件夹中，如果有相同文件，要记得覆盖。

5. 重启 Alicorn，你的 Alicorn 就已经位于所下载的版本。
