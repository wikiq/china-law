![Swift](https://img.shields.io/badge/swift-F54A2A?style=for-the-badge&logo=swift&logoColor=white)
[![App Store](https://img.shields.io/badge/App_Store-0D96F6?style=for-the-badge&logo=app-store&logoColor=white)
](https://apps.apple.com/au/app/%E4%B8%AD%E5%9B%BD%E6%B3%95%E5%BE%8B%E5%BF%AB%E6%9F%A5%E6%89%8B%E5%86%8C/id1612953870)

# 中国法律

根据《中华人民共和国著作权法》第五条，本作品不适用于该法。如不受其他法律、法规保护，本作品在中国大陆和其他地区属于公有领域。不适用于《中华人民共和国著作权法》的作品包括：
- （一）法律、法规，国家机关的决议、决定、命令和其他具有立法、行政、司法性质的文件，及其官方正式译文；
- （二）单纯事实消息；
- （三）历法、通用数表、通用表格和公式。

法律内容来源于[国家法律法规数据库](https://flk.npc.gov.cn)，该项目仅做整合和搜索等功能，如果您在使用过程中发现部分法条有误，或不完整，请联系开发者进行修改。

# TODO
 - [x] 全文搜索功能
 - [x] 收藏功能
 - [x] 增加宪法修正案
 - [ ] 增加行政法
 - [ ] 增加经济法
 - [ ] 增加社会法
 - [x] 增加刑法及刑法修正案
 - [ ] 完善民法商法
 - [ ] 增加诉讼与非诉讼程序法
 - [ ] 添加旧法，历史库

## 该项目包含以下法律、行政规定
```
法律法规
├── 刑法
│   ├── 刑法.md
│   ├── 刑法修正案1.md
│   ├── 刑法修正案10.md
│   ├── 刑法修正案11.md
│   ├── 刑法修正案2.md
│   ├── 刑法修正案3.md
│   ├── 刑法修正案4.md
│   ├── 刑法修正案5.md
│   ├── 刑法修正案6.md
│   ├── 刑法修正案7.md
│   ├── 刑法修正案8.md
│   └── 刑法修正案9.md
├── 办法
│   └── 国家机关、事业单位贯彻<国务院关于职工工作时间的规定>的实施办法.md
├── 宪法
│   ├── 宪法.md
│   ├── 宪法修正案（1988）年.md
│   ├── 宪法修正案（1993）年.md
│   ├── 宪法修正案（1999）年.md
│   ├── 宪法修正案（2004）年.md
│   └── 宪法修正案（2018）年.md
├── 规定
│   ├── 工资支付暂行规定.md
│   └── 互联网信息服务算法推荐管理规定.md
├── 民法典
│   ├── 合同.md
│   ├── 总则.md
│   ├── 物权.md
│   ├── 继承.md
│   ├── 附则.md
│   ├── 人格权.md
│   ├── 侵权责任.md
│   └── 婚姻家庭.md
├── 社会法
│   ├── 劳动法.md
│   └── 劳动合同法.md
├── 行政法
│   ├── 广告法.md
│   ├── 人民警察法.md
│   ├── 药品管理法.md
│   ├── 食品安全法.md
│   ├── 传染病防治法.md
│   ├── 个人信息保护法.md
│   └── 环境噪声污染防治法.md
├── 司法解释
│   └── 最高人民法院关于适用《中华人民共和国民事诉讼法》的解释.md
├── 民法商法
│   ├── 著作权法.md
│   └── 消费者权益保护法.md
├── 宪法相关法
│   ├── 国籍法.md
│   └── 身份证法.md
└── 民事诉讼法.md
```

## 贡献
如果你有任何的想法或者意见，欢迎提 Issue 或者 PR
<a href="https://github.com/RanKKI/LawRefBook/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=RanKKI/LawRefBook" />
</a>

## 贡献指南
app 在设计的时候将法律法规和 app 本身分离开了, 只需要增加法条和修改 law.json 即可添加某部法律..
- 首先将法律法规按照 [法律法规模版](./法律法规模版.md) 排版好，放入文件夹 `法律法规` 下合适的位置
- 修改 [law.json](./law.json) 
- 需要为新加的法条增加 uuid，这个可以手动加（不可以复制原有的，可以在 [UUID Gen](https://www.uuidgenerator.net/version4) 生成), 或者使用脚本 `python3 scrips/gen_uuid.py`
- 提交所有更改，并提 pr

PS 如果你有发现某部法律不完成，有问题，或者需要新增某些，但又不会自己提 pr，你可以在提一个 issue，或者直接联系设置中我的邮箱，我会在下个版本修复或增加
