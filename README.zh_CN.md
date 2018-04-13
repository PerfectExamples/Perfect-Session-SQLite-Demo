# Perfect Sessions (会话)示例，SQLite 驱动 [English](README.md)

<p align="center">

<a href="http://perfect.org/get-involved.html" target="_blank">
    <img src="http://perfect.org/assets/github/perfect_github_2_0_0.jpg" alt="Get Involed with Perfect!" width="854" />
</a>

</p>

<p align="center">

<a href="https://github.com/PerfectlySoft/Perfect" target="_blank">
    <img src="http://www.perfect.org/github/Perfect_GH_button_1_Star.jpg" alt="Star Perfect On Github" />
</a>  
<a href="http://stackoverflow.com/questions/tagged/perfect" target="_blank">
    <img src="http://www.perfect.org/github/perfect_gh_button_2_SO.jpg" alt="Stack Overflow" />
</a>  
<a href="https://twitter.com/perfectlysoft" target="_blank">
    <img src="http://www.perfect.org/github/Perfect_GH_button_3_twit.jpg" alt="Follow Perfect on Twitter" />
</a>  
<a href="http://perfect.ly" target="_blank">
    <img src="http://www.perfect.org/github/Perfect_GH_button_4_slack.jpg" alt="Join the Perfect Slack" />
</a>

</p>

<p align="center">

<a href="https://developer.apple.com/swift/" target="_blank">
    <img src="https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat" alt="Swift 3.0">
</a>
<a href="https://developer.apple.com/swift/" target="_blank">
    <img src="https://img.shields.io/badge/Platforms-OS%20X%20%7C%20Linux%20-lightgray.svg?style=flat" alt="Platforms OS X | Linux">
</a>
<a href="http://perfect.org/licensing.html" target="_blank">
    <img src="https://img.shields.io/badge/License-Apache-lightgrey.svg?style=flat" alt="License Apache">
</a>
<a href="http://twitter.com/PerfectlySoft" target="_blank">
    <img src="https://img.shields.io/badge/Twitter-@PerfectlySoft-blue.svg?style=flat" alt="PerfectlySoft Twitter">
</a>
<a href="http://perfect.ly" target="_blank">
    <img src="http://perfect.ly/badge.svg" alt="Slack Status">
</a>

</p>

   

这个例子将会向你展示通过 SQLite 驱动的 Perfect Sessions 的使用方法。

## 运行环境

这个项目的主分支当前可以在 Xcode 8.1 和 Ubuntu 上的 Swift 3.0.1 工具链上编译运行。

## 编译与运行

这个示例项目的 Session 设置了10s 的过期时间，如果在这段时间内 Session 被使用，将会重置 Session 的过期时间为10s。

Session ID 和会话数据将会被展示在页面上。刷新页面会看到随机产生的数据添加到会话数据中。如果等待超过10s 才刷新一次页面，在页面上看到的将会是另一个 Session，会有不一样的 Session ID。

### 准备工作 - 使用 Xcode

我们建议用 [Perfect Assistant](http://perfect.org/en/assistant/) 管理 Swift 服务端项目。

在 Perfect Assistant 中点击“Create New Project”，然后选择“Custom repository URL”。选择放置项目的本地目录，然后在“Repository URL”输入：`https://github.com/PerfectExamples/Perfect-Session-SQLite-Demo.git`

等待项目创建好了之后，点击"Build > Local"。Perfect Assistant 就会为你下载好所有依赖和创建一个 Xcode 项目。

打开 Xcode 项目工程文件，然后在运行按钮旁选择"Executable"。

然后，运行项目。

### 准备工作 - 使用终端

下面的命令会克隆和编译示例项目，并且启动绑定8181端口的服务程序。

```
git clone https://github.com/PerfectExamples/Perfect-Session-SQLite-Demo.git
cd Perfect-Session-SQLite-Demo
swift build
.build/debug/Perfect-Session-SQLite-Demo
```

你应该会看到以下的输出：

```
Starting HTTP server on 0.0.0.0:8181 with document root ./webroot
```

这段输出代表着服务器正常运作，并且等待着访问。访问 [http://localhost:8181/](http://127.0.0.1:8181/) 会看到欢迎语。按快捷键`control-c`可以终止服务器程序。

## 问题报告

我们正在逐步过渡到 JIRA 来接收 Bug 的报告和 Issues，而之前使用的 GitHub issues 将会被弃用。

如果你发现错误或者有其他有用的建议，那么请在将它们贴在 [http://jira.perfect.org:8080/servicedesk/customer/portal/1](http://jira.perfect.org:8080/servicedesk/customer/portal/1) 

全部正在开启状态的 Issues 都在[这里](http://jira.perfect.org:8080/projects/ISS/issues)。

## 更多

有关 Perfect 项目更详细更全面的资料都在 [perfect.org](http://perfect.org/)。
