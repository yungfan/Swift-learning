#  电子书开发步骤 #

## BuildSettings.xcconfig ##

首先需要在这里配置电子书的一些属性
1. `BUNDLE_IDENTIFIER_PREFIX `
2. `PLAYGROUND_BOOK_FILE_NAME` 
3. `PLAYGROUND_BOOK_CONTENT_VERSION `

## PlaygroundBook下的Manifest.plist##

1. 配置电子书名字-`Name`（可引用Sources下的`ManifestPlist.strings`中的key）
2. 配置电子书章节-`Chapters`

## Source下的LiveViewSupport.swift ##

在这里编写方法初始化 `PrivateResources`下面的`LiewView.storyboard`，初始化的界面会成为电子书的内容的一部分（可理解为封面），不同的章节可以设置不同的内容，所以可能需要多个方法
## PrivateResources下的LiewView.storyboard ##
对应电子书一部分的界面，可以直接设计，但是由于不同章节的电子书可能需要不同的界面，所以需要多个ViewController，与`LiveViewSupport.swift `配合使用
## Chapter ##

1. 每一章对应一个`XXX.playgroundchapter`，可以直接复制进行多章节制作
2. 每个章节下的`Manifest.plist`可以指明章的名字和包含的Pages
3. `Pages`包含多个`XXX.playgroundpage`，每一个就是一节
4. 每个`playgroundpage`下有三个文件，下面会介绍

## Pages下的 playgroundpage##
1. `Contents.swift`：里面的内容会直接显示在电子书中，也是用户可以输入的地方，和`LiewView.storyboard`会合成一页完整的电子书
2. `LiveView.swift`：设置显示的内容（封面），这个里面会调用`LiveViewSupport.swift`里面的方法初始化界面
3. `Mainfest.plist`：配置节的内容

## 导入iPad ##
运行程序，找到 `Products`下面的`XXX.playgroundbook`文件，然后`Show in Finder`，通过隔空投送输出到iPad上，iPad会自动打开`Playgrounds`显示制作的电子书