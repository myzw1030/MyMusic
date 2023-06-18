//ContentView.swift

import SwiftUI

struct ContentView: View {
    // 音を鳴らすためのSoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack {
            // 背景画像を指定する
            Image("background")
            // リサイズする
                .resizable()
            // 画面いっぱいになるようにセーフエリア外まで表示されるように指定
                .ignoresSafeArea()
            // アスペクト比（縦横比）を維持して短辺基準に収まるようにする
                .scaledToFill()
            
            // 水平にレイアウト
            HStack {
                // シンバルボタン
                Button {
                    soundPlayer.cymbalPlay()
                } label: {
                    Image("cymbal")
                }
                
                // ギターボタン
                Button {
                    soundPlayer.guitarPlay()
                } label: {
                    Image("guitar")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
