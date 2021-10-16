---
title: "LaTeXなるべく書かないマン"
author: Yoshisaur
date: 20xx年 xx月 xx日
geometry: margin=2cm
fontsize: 12pt
---

\clearpage

# 第1章
## Yoshisaur、お前は何がしたいんだ

全部LaTeXではなくて、簡単なところはmarkdownでレポート書きたい

例えば箇条書きのLaTexは以下のようになっている

```{title="LaTeXの箇条書き"}
\begin{itemize}
\item hoge1
\item hoge2
\item hoge3
\end{itemize}
```

一方で、markdownは以下のようになっている

```{title="markdownの箇条書き"}
- hoge1
- hoge2
- hpge3
```

実際に上記のmarkdownで書かれた箇条書きは以下のように見える

- hoge1
- hoge2
- hpge3

明らかにLaTeXの記法よりmarkdownの記法の方が簡単で早い

また、markdownではサイズを調節して画像を貼ることも可能である

![画像のサンプル](/data/images/sample.png){ width=75% }

また、テーブルも作成できる

| 用語 | 意味 |
| ---- | ---- |
| インジェラ | エチオピアの料理の1つ |
| テフ | イネ科の植物 |
| オフチョベット | 粉末状 |
| マブガッド | 水と混ぜる |
| リット | オフチョベットしてマブガッドしたテフ |

# 第2章
## markdownはいいとこだらけ?

実はそうでもない、簡易的な記法なので表現力がない

例えば、markdownは常に左側にalignされるが、真ん中や右側にalignできない

ここは仕方ないので`\begin{center}`(`\end{center}`)や`\begin{flushright}`(`\end{flushright}`)を使う

こんな風にかく

```{title="LaTeXの真ん中"}
\begin{center}
真ん中
\end{center}
```

こうすると、以下のようになる

\begin{center}
真ん中
\end{center}

右側にalignする場合は

```{title="LaTeXの右側"}
\begin{flushright}
右側
\end{flushright}
```

こうすると、以下のようになる

\begin{flushright}
右側
\end{flushright}

また、数式もLaTeXの表現力に頼ることになる

```{title="LaTeXの数式"}
\begin{math}
\int^{b}_{a} f(x) dx = \lim_{n \to \infty} \sum^{n-1}_{i=0} f(x_{i}) \Delta x
\end{math}
```

と書いて

\begin{math}
\int^{b}_{a} f(x) dx = \lim_{n \to \infty} \sum^{n-1}_{i=0} f(x_{i}) \Delta x
\end{math}

となる

```{title="LaTeXの数式2"}
\begin{equation}
\int^{b}_{a} f(x) dx = \lim_{n \to \infty} \sum^{n-1}_{i=0} f(x_{i}) \Delta x
\end{equation}
```

と書いて

\begin{equation}
\int^{b}_{a} f(x) dx = \lim_{n \to \infty} \sum^{n-1}_{i=0} f(x_{i}) \Delta x
\end{equation}

こんな風にもなる

# 第3章
## どうすればいい

markdownでできることはなるべくmarkdownで完結させて、LaTeXにしかできないことはLaTeXに頼ろう

