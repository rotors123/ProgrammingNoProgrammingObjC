//
//  画面の制御.実装部
//  できるだけプログラムっぽくないプログラミング
//
//  天道ローターによって2017年7月某日に作られました。
//  著作権: 2017年 天道ローター
//

// 冒頭のインポートだけは置き換えられない。
#import "画面の制御.h"

インターフェイスここから 画面の制御 ()
特性 (同時に高速に動く, 強い参照) 文字用の部品の雛形 ポインタを使って 文字用の部品;
ここまで

実装ここから 画面の制御

- (何も戻さない関数)画面が読み込まれた後に {

    [親クラスの 画面が読み込まれた後に];

    [自クラスの 文字用の部品を作る];
    [自クラスの 文字を書く];
    
}

- (何も戻さない関数)文字を書く {
    
    // 今回は簡素にハードコードで失礼。
    自クラスの.文字用の部品.テキスト = [文字列型 書式を指定した文字列:
                         @"「ねぇ、お父ちゃん。お母ちゃんと結婚すればイイじゃん🎉」%@%@　　　〜長男（当時4歳）",
                         改行文字, 改行文字];
    
}


- (何も戻さない関数)文字用の部品を作る {
    
    文字用の部品の雛形 *文字用の部品 = [[文字用の部品の雛形 メモリを確保]
                         フレームを指定して初期化: 自クラスの.画面の部品.境界範囲];
    文字用の部品.テキストの整列 = テキスト中央揃え;
    [自クラスの.画面の部品 画面部品を追加: 文字用の部品];
    
    [文字用の部品 従来の自動幅調整機能の利用: いいえ];
    
    // ここは一手間加える必要があった。
    辞書 *画面の部品辞書 = @{部品の名前: 文字用の部品};
    文字列型 *横用の文字 = [文字列型 書式を指定した文字列: @"%@|[%@]|",
                         横の指定, 部品の名前];
    文字列型 *縦用の文字 = [文字列型 書式を指定した文字列: @"%@|-100-[%@]-100-|",
                         縦の指定, 部品の名前];
    
    繰り返すよ (文字列型 *文字 この中から @[横用の文字, 縦用の文字]) {
        [レイアウトの制約 制約を有効化:
         [レイアウトの制約 いわゆるアスキーアート的な記述で制約を: 文字
          オプション群: 0
          幅とかの指標: 空っぽ
          部品群: 画面の部品辞書]];
    }
    
    文字用の部品.編集可能 = いいえ;
    文字用の部品.選択可能 = いいえ;

    自クラスの.文字用の部品 = 文字用の部品;

}

ここまで
