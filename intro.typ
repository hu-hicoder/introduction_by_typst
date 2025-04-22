#import "@preview/touying:0.6.1": *
#import themes.university: *
#import "@preview/cetz:0.3.2"
#import "@preview/fletcher:0.5.5" as fletcher: node, edge
#import "@preview/numbly:0.1.0": numbly
#import "@preview/theorion:0.3.2": *
#import cosmos.clouds: *
#show: show-theorion

// cetz and fletcher bindings for touying
#let cetz-canvas = touying-reducer.with(reduce: cetz.canvas, cover: cetz.draw.hide.with(bounds: true))
#let fletcher-diagram = touying-reducer.with(reduce: fletcher.diagram, cover: fletcher.hide)

#show: university-theme.with(
  aspect-ratio: "16-9",
  // align: horizon,
  // config-common(handout: true),
  config-common(frozen-counters: (theorem-counter,)),  // freeze theorem counter for animation
  config-info(
    title: [広島大学コンピュータサークル HiCoder],
    subtitle: [],
    author: [みかゆ],
    date: datetime.today(),
    institution: [HiCoder],
    logo: image("hicoder_logo.png"),
  ),
  config-page(
    margin: (x: 1em, y: 2em),
    header: align(top)[],
    footer: align(bottom)[],
    header-ascent: 1em,
    footer-descent: 0em, 
  ),
)


#title-slide()

== Outline <touying:hidden>

= 自己紹介
== 自己紹介


#grid(
  columns: (
    50%,
    50%,
  ),
  [
  #v(2em)
広島大学情報科学部情報科学科\
知能科学プログラム \
実践履修モデル 05\
みかゆ
  ],
  grid(align: horizon, columns: 2, gutter: 2%,figure(image("bike.jpg")), figure(image("neko.jpg")))
  ,
)

= サークル概要

== HiCoderとは？
#v(2em)
技術に興味のある広大生のサークルです

- 競技プログラミング (特定の問題を制限時間内に解く競技)
- Web開発 (インターネット上で使えるウェブサイトやアプリケーションを開発)
- モバイルアプリ開発 (スマートフォン向けのアプリを開発)
- 低レイヤ (OS、ハードウェア関連のプログラミング)
- セキュリティ (暗号、認証、脆弱性対策)
- 機械学習

= 活動内容について

== ハッカソン
#v(2em)
- 短期間で、アプリを開発するイベント
- サークル内でたまに開催
- 技術力・チーム開発力向上
- 作品例(テーマ: 役に立たないもの)
 - スクリーンショットの練習ができる拡張機能
 - コード編集を邪魔する拡張機能
 - ウェブサイト上でウーマンコミュニケーション
 - ２つの物質を組み合わせた発明品を提案してくれるサイト

== LT会

#grid(
  columns: (
    40%,
    60%,
  ),
  [
    #set text(size: 20pt)
      #v(4em)
      - 短い時間で、主に技術的な内容について気軽にプレゼンする  
      - 月１で開催(したい)  
      - 知見共有  
      - テーマ例  
       - 量子コンピュータ  
       - 回路設計の言語Veryl  
       etc...
  ],
  [
    #align(center)[
      #figure(image("lt_quantum_computer-1.png", height: 45%))
      #figure(image("veryl_003.png", height: 45%))
    ]
  ],
)

== その他の活動

#grid(
  columns: (
    50%,
    auto,
  ),
  rows: (
    auto
  ),
  align: horizon,
  gutter: 2%,
  [
    #v(2em)
    #set text(size: 23pt)
    - 定例会での進捗報告・技術的な話・雑談
    - 講習会(組み込みRust、Flutter)
    - 他大学団体との合同イベント
     - いちぴろエクスプローラー(広島市立大学)
     - 近大マイコン部(近畿大学)
    - 輪読会(Haskell、コンピュータシステムの理論と実装)
  ],
  [
    #figure(image("image.png", height: 50%))
  ]
)

== 活動場所について
#v(2em)
#block(
  fill: rgb("#54cdeb"),
  radius: 10pt,
  inset: 5pt,
)[
  #text(fill: white)[
    活動場所
  ]
]
-- オンライン(Discord)、対面(総合科学部 東講義棟K)
#block(
  fill: rgb("#54cdeb"),
  radius: 10pt,
  inset: 5pt,
)[
  #text(fill: white)[
    活動時間
  ]
]
-- 毎週金曜日18:30～21:00 \

#block(
  fill: rgb("#54cdeb"),
  radius: 10pt,
  inset: 5pt,
)[
  #text(fill: white)[
    会費
  ]
]
-- 年0円(予定)

= よくあるご質問

== Q1. プログラミング初心者ですが大丈夫ですか？
#v(4em)
A. もちろん大丈夫です！

最初は未経験の方も多いですが、ハッカソンなどに参加すると力がつきます。定例会で初心者の方に画面共有をしてもらいながらプログラミングを教える会を行って、その後自分の作品を作っている例もあります。

== Q2. 何人で活動しているのですか？
#v(5em)
A. Discordサーバー上に40人程在籍しています。

そのうちアクティブメンバーは15人くらいです。\
情報科学部以外の学生も多数、活動しています。

= 活動事例

== HiCoder Blog
#v(3em)
#grid(
  columns: (
    50%,
    auto,
  ),
  rows: (
    auto
  ),
  gutter: 2%,
  [
    #align(left)[
      #v(1em)
      HiCoderのブログサイト\
      昨年できたばかりでまだ記事があまりありません。\
      授業、LT会の感想など直接技術にかかわらないこともどんどん書いていってほしいです。
    ]
  ],
  [
    #figure(image("hicoder-blog.png"))
  ],
)
== TaskEcho

#grid(
  columns: (
    1fr,
    1fr
  ),
  [
    #v(4em)
    #text(14pt)[
      開発メンバー: みかゆ、kuro(修士2年)、タツノオトシゴ(学部2年)
    ]

    #text(15pt)[
      授業中の聞き逃し防止アプリ\
      - 音声認識による文字起こし
      - 生成AIによる要約
      - 時刻情報を抜き出し、カレンダーに自動追加

      外部のハッカソン(JPHacks)にて開発\
      現在も継続開発中
    ]
  ],
  [
    #figure(image("taskEcho-07.png", height: 50%))
    #figure(image("taskEcho-09.png", height: 42%))
  ]
  
)
== ちなみにこのスライド
#v(3em)
#grid(
  columns: (
    50%,
    auto,
  ),
  rows: (
    auto
  ),
  gutter: 2%,
  [
    #align(left)[
      #v(1em)
      最近流行ってるマークアップ言語Typstを使用

      LaTeXよりわかりやすいので授業レポートにおすすめです。

      Typstの講習会も行う予定です。
    ]
  ],
  [
    #figure(image("typst.png"))
  ],
)


