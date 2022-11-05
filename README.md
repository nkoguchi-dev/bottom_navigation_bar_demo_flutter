# bottom_navigaion_bar_demo

BottomNavigationBarの画面遷移を理解するために作ったデモです。


## 実装していること

* BottomNavigationBarを用いてタブを切り替える事ができる
* 各Tab毎に独立したNavitorを使ってページ遷移ができる
  * 各タブでのページ遷移中、別タブへ切り替えても該当タブに戻ると状態が残っている
  * 戻るボタン（or戻るジェスチャー）で前ページに戻れる
  * 最終ページから各TabのRootページに戻れる
  * 各Tab内の任意のページに戻れる
* BottomNavigationBarを表示しているScreenと同じ階層の画面遷移ができる
  * このデモでは左上の人アイコンをタップすると表示される画面

### タブと画面の説明
* 全部でNavigatorは4つあります
  * MaterialAppが作るRootNavigator
  * BottomNavigationBarの各タブで利用しているNavigator
* Redタブは最終ページまで行ってTopに戻る画面遷移です
  * RedRoot->Contents01->02->Redroot
* GreenタブはRedの動作＋最終ページから途中のページに戻る遷移です
  * GreenRoot->Contents01->02->03->RedRoot or Contents01
* BlueタブはContents内でOverflowしない事を確認しています
* 全ての画面から右上のアイコンをタップするとRootNavigatorに登録されているRootContents01に遷移します

## 参考にした文章等
* このページにあるコードを土台に作りました
  * https://github.com/bizz84/nested-navigation-demo-flutter
* Navigatorについての説明
  * https://zenn.dev/chooyan/articles/77a2ba6b02dd4f
