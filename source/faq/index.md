---
title: 常见问题
date: 2021-09-12 21:49:00
---

这里列出了一些大多数用户问到的问题，因此我们将它们收录起来，以供你参考。

（在有些浏览器上，你可以通过按 <kbd>Ctrl</kbd> + <kbd>F</kbd> 搜索本页面来找到你的问题） 

## 无法运行

> 怎么启动 Alicorn？

**如果你使用 Alicorn 包装器：**（Windows 64 位）

请双击 `AlicornWrapped.exe`（或者改名后的文件），然后 Alicorn 就会启动了。

请了解：首次运行需要一点时间（最多一分钟）来准备资源，如果命令行窗口看上去输出了什么错误信息，请关闭程序，再试一次，如果仍然无法解决，请向我们提交反馈。

**如果你使用 Alicorn 归档：**（其它平台）

解压下载的 ZIP 或 TGZ 归档，双击 `Alicorn.exe`（Windows）或右键 `alicorn.sh` 并点按「运行」（Ubuntu），其它 GNU/Linux 发行版的用户可以选择在 `bash` 中直接运行 `./Alicorn` 来启动，如遇权限问题，请先执行 `chmod`。

---

> Alicorn 在我的系统上不能运行，连个主窗口都没弹出！

Alicorn 需要至少 Windows 7 才能运行，GNU/Linux 没有统一的标准，但主流操作系统都受到支持，macOS 需要 10.11 或以上版本，而且 macOS 环境特殊，Alicorn 未在此平台进行过测试，不保证一定可用。

请勿将 Alicorn 放置在需要提升权限才可用的位置（如 `C:\Program Files\` 或 `/usr/`），这可能会产生不可预知的后果（除非你用 `sudo` 运行她）。请将她放在诸如桌面或用户目录这些普通的地方。

如果你是通过 Alicorn 包装器运行的，请删除 `C:\Users\你的名字\Alicorn-win32-x64` 这个目录（包括它本身），然后重新运行包装器，这**不会丢失你的配置**。

---

> Alicorn 产生了蓝屏错误！

希望你说的是 Alicorn 本身而不是你的操作系统……请勿同时运行多个 Alicorn，否则会造成端口冲突，这是个 Bug，但 Alicorn 也没打算修复。

如果蓝屏报告看上去像是什么其它的错误，请报告给我们。（这事可能很严重）

---

> Alicorn 只显示了一个粉（白）色窗口，什么也没有弹出！

通常重新启动启动器，内容即可正常显示。如果你重新启动几次后都没有解决问题，你可能需要**修复 Alicorn**，请参考 [安装指南](/install/) 获得更多信息。

## 无法启动游戏

> Alicorn 在启动游戏页面底部弹出「Oops！系统错误：null」信息，无法启动游戏。

请确保你已经选择了一个 Java 运行时，如果你在「出发吧！」页面的 Java 运行时选择「默认」，同时没有在「Java 运行时」页面对应选择一个默认值，则会造成此错误。

---

> Alicorn 卡在「正在检查和补充支援库」和「正在检查和补充游戏资源」这两步了！

首先，请检查你的网络连接，确保能够正常连接到互联网。

然后，请确认你选择了合适的镜像，在你所处的地区可能访问源站较慢，这时建议选择「Alicorn/MCBBS 镜像组」以获得最高的速度。

同时，请确保你没有把超时值和重试次数调得太大：转到「选项」、「网络和软件包」，找到「请求等待时间」和「重试次数」两项，降低它们的值，`10000` 和 `2` 是默认值，也是建议值。

如果问题没有解决，请将「下载方案」暂时切换到「线性」，再试一次。

请了解对于非官方核心我们不保证镜像能够覆盖（事实上官方也不能），也许下载这类核心的支援库要花去更多时间。

如果问题仍没有解决，请将其反馈给我们。

---

> Alicorn 启动游戏时底部偶尔弹出「没能够获取……」，然后无法启动游戏，或者游戏有些材质或声音丢失。

请尝试切换一个镜像，然后让她再试一次。

---

> 游戏启动后崩溃了！

这时候首先你要单击「是的，为我分析问题」，进入「启动疑难解答」页面，尝试查看日志和崩溃报告，有时 Alicorn 还会提供一些可用的建议。

如果你自己解决不了问题，请点击「复制代码」，然后至 [MCBBS 问答版](https://www.mcbbs.net/forum.php?gid=364) 发帖提问。记住，要先勾选右上角的「纯文本」后再粘贴代码！

如果你（或者其他人）认为这是 Alicorn 的问题，请尽快告知我们——我们将有机会修复 Bug，这既有利于你，也有利于其他用户。

## 无法更新启动器

> 我已经看到其他人都用上了 Alicorn 的新版本，为何我的启动器却迟迟不更新？

首先请确认自动更新已打开：转到「选项」、「高级和重置」，并检查「自动更新」是否启用。如果你更改了更新源（即不留空），请优先咨询此源的提供方，之后才是我们。

随后请检查更新服务能否访问，前往 [这里](https://cdn.jsdelivr.net/gh/Andy-K-Sparklight/Alicorn@production/release/MainBuild.json)，你应该得到看上去像这样的结果：

```json
{"date":"某个日期","files":["一堆文件"],"version":"主版本号"}
```

如果结果看上去和这个结构类似，那么更新服务是正常的，否则你可能无法使用 Alicorn 的更新服务……但别担心！你依然可以通过手动的方式下载新内核进行更新，请参考 [安装指南](/install/) 获得更多信息。

---

> 我的启动器位于内核版本 X，为什么我只能更新到版本 X + 1，即使最新的版本已经远远高于 X + 1？

Alicorn 的更新是逐级升级、滚动发行的，旧版本的 Alicorn **每次只能更新到下一个版本**，如果你想要更新到更高版本，请多重新启动几次（或者只是单纯的再使用 Alicorn 一段时间），Alicorn 将不断升级直到到达最新版本。

如果你的内核版本与最新版本已经相差太远，为节省时间，你可以通过**手动更新**直接升级到最新版本，请参考 [安装指南](/install/) 获得更多信息。

## 性能问题

> UI 有时会显得很卡顿，包括进度条卡住之类的。

Alicorn UI 的渲染位于较低的优先级，有更多更重要的计算任务需要 Alicorn 执行，因此这是正常的。如果 UI 卡顿以至于影响了正常操作，请：

- 更新到最新版本，最新版本的 Alicorn 包含性能优化和安全更新，存在的问题或许已经被解决。

- 打开或关闭硬件加速，可在「选项」、「高级和重置」中找到，完成操作后请重启启动器。

- 关闭不必要的动画和操作，例如平滑切换、快捷键、快速重载、开发人员模式、显示获取进度、文件校验等，并同时降低并发下载任务数和改用线性下载器。

如果你在一台非常老的计算机上运行，你可能需要考虑更新机器硬件，如果 Alicorn 都不能流畅运行，Minecraft 也不太可能。

---

> 读取核心列表需要很长的时间！

请了解：核心数量越多，Alicorn 就需要越长的时间读取它们，一些时间也被用于解析与排序这样的工作上。

在「容器管理」页面卸载（不是解除链接或抹掉）暂时不用的容器，Alicorn 就不会扫描它们，这可以很大程度上加快速度。

---

> 我关闭了 Alicorn 窗口，但我通过 `ps -A | grep Alicorn` 发现进程并没有结束！

请了解 Alicorn 的关闭速度取决于操作系统和 Electron 本身的兼容性，并且如果有时 Alicorn  正在进行更新的文件复制过程，你可能需要等几秒钟……但如果这个时间远远超出几分钟，请考虑使用 `kill` 来终止进程（或者，在 Windows 上使用任务管理器）。

## Mod

> 如何启动 Pff？

你必须安装一个 **Mod 化核心**后才能启动 Pff，先安装对应的 Minecraft 版本，然后可以通过 Alicorn 安装 Fabric（或者 Forge——如果你喜欢），安装完成后，你可在「启动台」中每个核心的**右上角**找到相应的按钮（在 Mojang 核心和 Install.json 安装器的右上角不会显示）。

---

> Pff 找不到我需要的 Mod，显示「获取失败：没有那个 Addon 或者服务暂时不可用」。

首先请确认你要找的 Mod **真的存在**，并且你没有打错字。例如，如果要寻找「FooBar」，应当键入 `foobar`，Pff 有一定的容错判定，但**不应当用于搜索**！如果你为了省事，输入诸如 `fbar` 或（更极端的）`fb` 这样的值，Pff 很大几率是找不到的（即使找到也通常不正确）！

然后你需要确认 CurseForge 服务是否可用，自 Alicorn Crystal（Core 12）起，可以通过 NetCheck 工具（位于「小工具」页面中）检查服务可用状态。如果 CurseForge 服务不可访问，你可能需要等一会，或者设置一个代理服务器。

---

> Pff 显示一个 Mod 可以适配当前版本，但它没有被加载！

请了解：Pff **从来不保证未被划掉的 Mod 就一定能被加载**，最终能否加载取决于环境设置和依存关系，请参考下面的问题。

---

> 我的 Mod 没有加载！

你应当考虑关闭「Mod 动态加载」，它位于「选项」、「Alicorn 特色功能」下。事实上，Mod 动态加载并非 100% 准确，而且能做的事情很有限——只能根据版本是否兼容决定是否进行处理，而不能判断依存关系。

如果 Mod 仍然没有加载，这可能不是 Alicorn 的问题，请先咨询加载器的提供方，如果你仍然认为这是 Alicorn 的问题，请反馈给我们。

---

> 我的 Mod 不见了！

请**不要**在游戏启动后关闭 Alicorn，特别是当你使用 Mod 动态加载进行游戏时！这一次，请从 `alicorn-mods-dyn` 文件夹中找回你的 Mod……但下一次，请考虑让 Alicorn 帮你完成这项工作。

或者，如果你关闭「Mod 动态加载」，就可以在游戏开始后安全地退出 Alicorn。

---

> Pff 一直在下载文件，说「这可能需要很长的时间」——但我未免等得太长了！

请了解 CurseForge CDN 并非在什么地方都很快——事实上，在你所在的地区大概率很慢。请尝试降低并发区块大小，提升请求等待时间，或者干脆设置一个代理服务器——也可以手动下载那个 Mod。

## 空间占用

> 我在其它磁盘创建了 ASC 容器，然而不知为何我的 C 盘（用户主目录）就满了！

ASC 的默认存储位置在你的用户目录下（`~/alicorn/cx-shared`），因此如果你不想消耗这些空间，你可以在「选项」、「Alicorn 特色功能」下设置「ASC 共享文件存储路径」指向一个空间充足的地方——遗憾的是，如果你删除了原来的缓存，下一次启动时，Alicorn 要重新补全相应的文件，会再花一些时间。

---

> 我无法创建 ASC 容器！

自 Alicorn Crystal（Core 7）后，你不能在没有设置「ASC 共享文件存储路径」的情况下创建 ASC 容器。请转到「选项」、「Alicorn 特色功能」并设置「ASC 共享文件存储路径」到一个空间充足的文件夹（最好是空的）。

---

> 在安装 Mod 时，Pff 警告「你没有设置下载缓存」，这是什么？

Pff 会在一个位置保存你已经下载过的 Mod，以在你将来需要再次安装时直接提供，如果你没有进行此设置，Pff 仍然可以工作，但不会进行缓存，如果你频繁安装整合包，就错失了一个绝佳的加速机会。你可以在「选项」、「网络和软件包」中进行设置。

---

> 我不小心删除了 `asc.lock`！

请了解 `asc.lock` 只是控制 Alicorn 行为的，并不影响游戏的启动，但 Alicorn 将来为这个容器补全丢失的文件时就不会共享这些新文件——因此最好解除该容器的链接，然后重新创建容器并选择「ASC 文件共享宗卷」。

---

> 我安装了很多整合包和 Mod，然后我的 C 盘（用户主目录）就满了！

Pff 的默认存储缓存位置在你的用户目录下（`~/alicorn/pff/mod-files`），你可以在「选项」、「网络和软件包」下的「Pff 文件缓存位置」将它指向一个空间充足的地方。和 ASC 一样，下一次你安装整合包时，缓存无法提供加速。

---

> Alicorn 占用了我 C 盘上许多空间！

这只会在你使用 **Alicorn 包装器**的时候发生。

如果你的系统磁盘连这一点空间都放不下，那么你的 Minecraft 运行也会很难受的（没有足够的虚拟内存）。你只需要删除一个所谓的「杀毒」软件，丢弃一个多余的浏览器，或者清空一下回收站——这些都比 Alicorn 消耗的空间多得多！

如果你仍然坚持，你可以不使用 Alicorn 包装器，并手动下载 Alicorn 的归档到你喜欢的地方，然后创建一个诸如快捷方式的东西，请参考 [安装指南](/install/) 获得更多信息。

---

> 我想将 Alicorn 用于我的整合包中，但她的体积太大了！

如果你的目标用户具有 Windows x64 操作系统，可以只将 **Alicorn 包装器**（`AlicornWrapped.exe`）放入整合包，它的工作原理决定了如果用户的计算机上有 Alicorn，就不必做任何准备——并且能够使用用户自己的设置！如果没有，也会在不到一分钟的时间内自动准备好，因此你完全无需担心！

在其它操作系统上甚至更简单，因为在那里就没有多少启动器能够支持！Alicorn 和现有的跨平台启动器应当都能支持你的整合包——你甚至都不需要打包启动器！

## 细节

> Alicorn 的有些字体看上去具有锯齿状，是我的眼睛出了问题吗？

这个问题只在 Windows 上出现。Alicorn 默认的英文字体是 UbuntuMono，然而，出于未知的原因，Windows 上渲染这种字体的效果并不那么好，在字号小的时候就容易出现锯齿。如果你真的想要 Alicorn 看上去好看，请**考虑更换你的操作系统**，实验表明，Alicorn 在**几乎任何**主流的 GNU/Linux 发行版上都更好看（并且通常速度也更快）。

另外，通常使用独立显卡也比使用集成显卡能够得到更好的显示效果。

切换一种风格（例如「亲近」）也能缓解这个问题。

## 隐私

> Alicorn 的联机功能是否会暴露我的通信数据？

联机功能（端到端组网）是架设在物理网络上的加密通信层。大多数情况下，你的计算机和目标计算机直接建立连接，数据安全只取决于 ISP 和你们的计算机本身。在网络环境极其复杂的情况下，你的数据将通过中央服务器和邻近的边缘节点进行交换传输——但是，尽管如此，你的数据仍然被加密，只有知道你的网络密码的终端才能解码你的数据，你的数据相当安全。

---

> Alicorn 是否收集我的使用数据？

Alicorn 会保存你的使用数据在本地，以供为你提供更好的使用体验，但未经你要求，Alicorn 不会主动将你的使用数据上传到任何地方。

---

> 我想清除 Alicorn 保存的数据，应该怎么做？

你可在「选项」、「高级和重置」这里找到重置开关。

## 名词解释

> 什么是容器？ASC 容器和 MCX 容器是什么？有什么区别？

容器就是用来存放**你的游戏文件**的一个文件夹。

MCX 容器和其他启动器的存储方法类似，都是把核心和附属文件的本体放入文件夹中

ASC 容器则是把部分文件放在另一文件夹，并做额外的处理来使得它们「可用」，当你创建多个 ASC 的时候消耗的空间**和一个相近**。

## 非技术性问题

> Alicorn 为什么是自由软件？

因为我们说她是自由的。

---

> 为什么要让 Alicorn 以自由软件形式发布？

请参考 [这篇文章](https://www.gnu.org/philosophy/free-software-even-more-important.html)。

「使用专有软件，软件控制用户，而其他实体（开发者或“所有者”）控制程序。所以专有软件赋予开发者凌驾于其用户之上的权力。即使专有软件不是完全的恶意，其开发者也有动机使之容易成瘾、有控制权和受操控。」

虽然 Minecraft 本身不自由，但出于对游戏的热爱，我们接受它作为一个例外，但请**不要把这种不自由带到 Mod、资源包、数据包或是其它外部软件中**，的确，有很多人这样做来获取利益——从**你**的身上！

如果有一天，所有的启动器的开始游戏界面上都显示着「赞助作者开始游戏」；如果有一天，我已经在为某公司编写着监控用户的恶意软件……

我希望你还能够从硬盘的某个角落里找出 Alicorn，当她仍然能为你工作时，我相信你会庆幸自己曾经认识过她。

---

> Alicorn 的配色为什么那么……粉？

你可以随时在「选项」、「你与 Alicorn」下的几个颜色选项中设置启动器颜色。

Alicorn 选择这个配色是为了和我们的官网相匹配，我们的官网选择这个配色是为了和 Alicorn 相匹配，就是这样。

---

> Sparklight，你在这个页面上的说话方式好奇怪！一点都不可爱……

（你是特别喜欢我使用大量的括号在这么正式的页面……撒娇？还是你想让我用 Alicorn 的语气和你讲话？

---

此页面上的问题会随着更多问题的发现而扩充。
