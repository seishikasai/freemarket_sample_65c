#レディースブロック

#レディースの子カテゴリー配列
lady_child_array = ['トップス','ジャケット/アウター','パンツ','スカート','ワンピース','靴','ルームウェア/パジャマ','レッグウェア','帽子','バッグ','アクセサリー','ヘアアクセサリー','小物','時計','ウィッグ/エクステ','浴衣/水着','スーツ/フォーマル/ドレス','マタニティ','その他']
#レディースの孫カテゴリー配列
lady_grandchild_array = [['すべて','Tシャツ/カットソー(半袖/袖なし)','Tシャツ/カットソー(七分/長袖)','シャツ/ブラウス(半袖/袖なし)','シャツ/ブラウス(七分/長袖)','ポロシャツ','キャミソール','タンクトップ','ホルターネック','ニット/セーター','チュニック','カーディガン/ボレロ','アンサンブル','ベスト/ジレ','パーカー','トレーナー/スウェット','ベアトップ/チューブトップ','ジャージ','その他'], ['すべて','テーラードジャケット','ノーカラージャケット','Gジャン/デニムジャケット','レザージャケット','ダウンジャケット','ライダースジャケット','ミリタリージャケット','ダウンベスト','ジャンパー/ブルゾン','ポンチョ','ロングコート','トレンチコート','ダッフルコート','ピーコート','チェスターコート','モッズコート','スタジャン','毛皮/ファーコート','スプリングコート','スカジャン','その他'], ['すべて','デニム/ジーンズ','ショートパンツ','カジュアルパンツ','ハーフパンツ','チノパン','ワークパンツ/カーゴパンツ','クロップドパンツ','サロペット/オーバーオール','オールインワン','サルエルパンツ','ガウチョパンツ','その他'], ['すべて','ミニスカート','ひざ丈スカート','ロングスカート','キュロット','その他'], ['すべて','ミニワンピース','ひざ丈ワンピース','ロングワンピース','その他'], ['すべて','ハイヒール/パンプス','ブーツ','サンダル','スニーカー','ミュール','モカシン','ローファー/革靴','フラットシューズ/バレエシューズ','長靴/レインシューズ','その他'], ['すべて','パジャマ','ルームウェア'], ['すべて','ソックス','スパッツ/レギンス','ストッキング/タイツ','レッグウォーマー','その他'], ['すべて','ニットキャップ/ビーニー','ハット','ハンチング/ベレー帽','キャップ','キャスケット','麦わら帽子','その他'], ['すべて','ハンドバッグ','トートバッグ','エコバッグ','リュック/バックパック','ボストンバッグ','スポーツバッグ','ショルダーバッグ','クラッチバッグ','ポーチ/バニティ','ボディバッグ/ウェストバッグ','マザーズバッグ','メッセンジャーバッグ','ビジネスバッグ','旅行用バッグ/キャリーバッグ','ショップ袋','和装用バッグ','かごバッグ','その他'], ['すべて','ネックレス','ブレスレット','バングル/リストバンド','リング','ピアス(片耳用)','ピアス(両耳用)','イヤリング','アンクレット','ブローチ/コサージュ','チャーム','その他'], ['すべて','ヘアゴム/シュシュ','ヘアバンド/カチューシャ','ヘアピン','その他'], ['すべて','長財布','折り財布','コインケース/小銭入れ','名刺入れ/定期入れ','キーケース','キーホルダー','手袋/アームカバー','ハンカチ','ベルト','マフラー/ショール','ストール/スヌード','バンダナ/スカーフ','ネックウォーマー','サスペンダー','サングラス/メガネ','モバイルケース/カバー','手帳','イヤマフラー','傘','レインコート/ポンチョ','ミラー','タバコグッズ','その他'], ['すべて','腕時計(アナログ)','腕時計(デジタル)','ラバーベルト','レザーベルト','金属ベルト','その他'], ['すべて','前髪ウィッグ','ロングストレート','ロングカール','ショートストレート','ショートカール','その他'], ['すべて','浴衣','着物','振袖','長襦袢/半襦袢','水着セパレート','水着ワンピース','水着スポーツ用','その他'], ['すべて','スカートスーツ上下','パンツスーツ上下','ドレス','パーティーバッグ','シューズ','ウェディング','その他'], ['すべて','トップス','アウター','インナー','ワンピース','パンツ/スパッツ','スカート','パジャマ','授乳服','その他'], ['すべて','コスプレ','下着','その他']]

parent = Category.create(name: 'レディース')
lady_child_array.each_with_index do |child, i|
 child = parent.children.create(name: child)
 lady_grandchild_array[i].each do |grandchild|
   child.children.create(name: grandchild)
 end
end

#メンズの子カテゴリー配列
mens_child_array = ['トップス','ジャケット/アウター','パンツ','靴','バッグ','スーツ','帽子','アクセサリー','小物','時計','水着','レッグウェア','アンダーウェア','その他',]
#メンズの孫カテゴリー配列
mens_grandchild_array = [['すべて','Tシャツ/カットソー(半袖/袖なし)','Tシャツ/カットソー(七分/長袖)','シャツ','ポロシャツ','タンクトップ','ニット/セーター','パーカー','カーディガン','スウェット','ジャージ','ベスト','その他'], ['すべて','テーラードジャケット','ノーカラージャケット','Gジャン/デニムジャケット','レザージャケット','ダウンジャケット','ライダースジャケット','ミリタリージャケット','ナイロンジャケット','フライトジャケット','ダッフルコート','ピーコート','ステンカラーコート','トレンチコート','モッズコート','チェスターコート','スタジャン','スカジャン','ブルゾン','マウンテンパーカー','ダウンベスト','ポンチョ','カバーオール','その他'], ['すべて','デニム/ジーンズ','ワークパンツ/カーゴパンツ','スラックス','チノパン','ショートパンツ','ペインターパンツ','サルエルパンツ','オーバーオール','その他'], ['すべて','スニーカー','サンダル','ブーツ','モカシン','ドレス/ビジネス','長靴/レインシューズ','デッキシューズ','その他'], ['すべて','ショルダーバッグ','トートバッグ','ボストンバッグ','リュック/バックパック','ウエストポーチ','ボディーバッグ','ドラムバッグ','ビジネスバッグ','トラベルバッグ','メッセンジャーバッグ','エコバッグ','その他'], ['すべて','スーツジャケット','スーツベスト','スラックス','セットアップ','その他'], ['すべて','キャップ','ハット','ニットキャップ/ビーニー','ハンチング/ベレー帽','キャスケット','サンバイザー','その他'], ['すべて','ネックレス','ブレスレット','バングル/リストバンド','リング','ピアス(片耳用)','ピアス(両耳用)','アンクレット','その他'], ['すべて','長財布','折り財布','マネークリップ','コインケース/小銭入れ','名刺入れ/定期入れ','キーケース','キーホルダー','ネクタイ','手袋','ハンカチ','ベルト','マフラー','ストール','バンダナ','ネックウォーマー','サスペンダー','ウォレットチェーン','サングラス/メガネ','モバイルケース/カバー','手帳','ストラップ','ネクタイピン','カフリンクス','イヤマフラー','傘','レインコート','ミラー','タバコグッズ','その他'], ['すべて','腕時計(アナログ)','腕時計(デジタル)','ラバーベルト','レザーベルト','金属ベルト','その他'], ['すべて','一般水着','スポーツ用','アクセサリー','その他'], ['すべて','ソックス','レギンス/スパッツ','レッグウォーマー','その他'], ['すべて','トランクス','ボクサーパンツ','その他'], ['すべて']]

parent = Category.create(name: 'メンズ')
mens_child_array.each.each_with_index do |child, i|
 child = parent.children.create(name: child)
 mens_grandchild_array[i].each do |grandchild|
   child.children.create(name: grandchild)
 end
end