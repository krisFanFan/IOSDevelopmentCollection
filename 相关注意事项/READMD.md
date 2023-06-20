1.针对Assets.xcassets文件里的图片，iPhone的2x 及3x机型，需要放置张图片，1@机型年代过久一般不需要。

具体机型可查看： https://juejin.cn/post/6844903809349599240

快速生成2x，3x图片网站： https://www.appicon.co/ (图标同理也可生成)



2.谷歌浏览器搜索：关键词+ apple documentation(苹果开发文档)

shake apple documentation

3.file->new->group  会创建真实文件夹

file->new->new group without Folder 不会创建真实文件夹

3.在info列表中让应用只支持竖屏

想要横屏时页面元素不重新根据约束进行调整，依旧保持竖屏的状态可到info->Supported interface orientations （iPhone）里面把支持横屏的删除。（在General 里面的Device Orientation 里面调整不会更新）
