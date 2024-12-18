# PRG-lab Thesis Template (JP)
このテンプレートは`platex`を前提としています。
最新版の[TeXLive](https://www.tug.org/texlive/)をインストールしてください。

## 自分の論文用のリポジトリを作成
GitHub Web UIの右上にある「Use this template」から作成してください。

## コンパイル
### 自分のPCで
1. このリポジトリをクローン
```
$ git clone git@github.com:<your-repository>
```

2. ルートディレクトリで `make` を実行
```
$ make
```

### Overleafで
1. →↑の「<> Code ▼」からこのリポジトリのZIPファイルをダウンロード
2. Overleafの「新規プロジェクト」→「プロジェクトのアップロード」からZIPファイルをアップロード
3. アップロードしたOverleafプロジェクトで、左上の「メニュー」を開き、LaTeXエンジン（Compiler）を 「LaTeX」 に設定
4. 「リコンパイル」でPDFを出力

# PRG-lab Thesis Template (EN)
This template assumes the use of `platex`.
Please install the latest version of [TeXLive](https://www.tug.org/texlive/).

## Make your own repository
Push "Use this template" on the top right in the web UI.

## Compiling the project
### On your local PC
1. Clone this repository.
```
$ git clone git@github.com:<your-repository>
```

2. Run `make` in the root directory.
```
$ make
```

### On Overleaf
1. Download the ZIP file of this repository from "<> Code ▼" button.
2. Upload the ZIP file via Overleaf's "New Project" -> "Upload Project".
3. In the uploaded Overleaf project, open the "Menu" in the top-left and set the LaTeX engine (Compiler) to "LaTeX."
4. "Recompile" to generate a PDF.

## Note for template developers
1. This template is configured for compilation with `platex`, as specified in the `Makefile`.
On Overleaf, `platex` cannot be selected directly from the GUI.
However, since TeXLive is used on the backend, it is possible to utilize the platex engine by employing custom scripts.
To override the default compilation engine on Overleaf, you can use `.latexmkrc` (included in this repository).
For more details, refer to Overleaf's guide:
https://ja.overleaf.com/learn/latex/Articles/How_to_use_latexmkrc_with_Overleaf

2. While `platex` is no longer the standard compiler for Japanese documents, its use here is intentional.
The `csg-thesis.sty` file was developed before 2010 by the Chiba Laboratory at UTokyo and does not support modern LaTeX engines for Japanese documents, such as `uplatex` or `lualatex`.
Your contributions to support for these engines are welcome.