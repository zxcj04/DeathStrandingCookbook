//
//  CharacterRow.swift
//  DeathStrandingCookbook
//
//  Created by FanRende on 2021/11/3.
//

import SwiftUI

struct CharacterRow: View {
    var character: Character
    var body: some View {
        HStack() {
            Image(character.image)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .scaleEffect(0.9)
                .overlay(Circle().stroke(.gray))
                .scaleEffect(0.9)
                .overlay(
                    Image("tier\(character.Dooms)")
                        .interpolation(.none)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .offset(x: 15, y: 15)
                )

            Text(character.name)
        }
    }
}

struct Character: Identifiable {
    let name: String
    let image: String
    let Dooms: Int
    let introduction: String

    let id = UUID()
}

extension Character {
    static let characters = [
        Character(name: "Sam Porter Bridges", image: "Sam", Dooms: 2, introduction: "　　遊走於美國荒野的傳奇送貨員。患有接觸恐懼症，很害怕與他人有身體接觸。擁有DOOMS的體質，但只有能夠感覺BT的存在的程度，他的血液也能驅除BT，亦擁有從死亡世界回歸現世的「回歸者」能力。\n　　已婚，但妻子露西因自殺且遺體未及處理而發生虛爆事件，在種種傷痛與世人抨擊之下造成性格變得憤世嫉俗，並引咎登出布橋斯多年。山姆認為美國已經亡國，再做什麼都無辦法挽回人類即將滅絕的局面。但他逼不得已地接受罹患末期癌症離世的養母兼UCA首任總統布莉姬·斯特蘭（Bridget Strand，飾演與配音：琳賽·華格納，日語版配音：井上喜久子）的委託，實現重建美國的理想，將開若爾網路連結整個美國國土以拯救人類，亦要前往西岸尋找亞美利的下落。\n　　故事的最後成功阻止滅絕發生，也找回了自己的身世。"),
        Character(name: "Lu - BB 28", image: "Lu", Dooms: 0, introduction: "　　遊戲中山姆所配備的BB，個體識別碼為「BB-28」，原為故事序幕中一名遭BT吞噬（並因而造成中央結市發生虛爆）的布橋斯遺體焚化人員伊格·法蘭克（Igor Frank，配音：大衛·佛塞斯（David Forseth））所有。本來應在中央結市虛爆事件後隨布莉姬的遺體一併銷毀，但卻在山姆到達焚化場遭遇BT時，發揮功能救了山姆一命而被留下，從此變成山姆執行送貨任務時不可或缺的搭檔。在故事途中，還被山姆自行取名為「小路」（Lou）。\n　　Bridge Baby 簡稱「BB」， 母親為身處加護病房之植物人，通稱「靜母」（Still Mother），靜母的子宮可以讓BB連接到亡者的世界，而當山姆與BB連接便可感應到另一個世界的BT；承裝BB的圓艙是模擬靜母的子宮環境，需定期透過網路連線至靜母的子宮更新圓艙，以提高模擬靜母子宮的環境數據，藉以降低BB的壓力值；亡人指出BB的存活率並不高，通常使用不到一年便會故障，有待山姆將美國各地網路重新連結後取得更多研究資料，或許可提高BB存活率。"),
        Character(name: "Fragile", image: "Fragile", Dooms: 5, introduction: "　　布橋斯的核心成員之一，不過是屬於她父親建立的私人企業「翡若捷快遞」（Fragile Express）。在布橋斯擴展業務前，翡若捷快遞獨攬所有運輸物流的生意。可是，公司後來遭分離主義軍事組織「狂人」（Homo Demens）利用來走私軍火，翡若捷還無意中為席格斯將核彈頭運往中結市（Middle Knot City）並導致滅城，致使她的公司聲譽嚴重受損，亦令她自己悔恨一生。後來席格斯甚至還折磨她在時間雨中將核彈搬離南結市（South Knot City），導致她頭部以下的身體（因當時席格斯為她套上自己的頭罩）急速老化，因而與席格斯不共戴天。翡若捷希望山姆能助她一臂之力，阻止席格斯繼續進行更多恐怖活動。\n　　故事的最後她選擇寬恕席格斯，並協助山姆阻止滅絕。其企業也獲得了UCA的承認。"),
        Character(name: "Clifford Unger", image: "Clifford", Dooms: 0, introduction: "　　當山姆與BB連結時，不時出現於記憶畫面中的男子，實際上是山姆的父親。也是參與科索沃戰爭、阿富汗戰爭和伊拉克戰事的優秀軍人，戰功彪炳，軍階為上尉。妻子因曼哈頓虛爆而成為植物人，與嬰兒山姆一起移至他處進行治療，後得知美國政府的計劃，為了救出兒子山姆，不幸成為布橋斯計劃的犧牲品，被時任UCA總統布莉姬槍殺致死。\n　　死後其靈體一直在不同的冥灘徘徊，最終得以和兒子山姆相認。"),
        Character(name: "Mama", image: "MAMA", Dooms: 3, introduction: "　　本名瑪琳根(Målingen)，為布橋斯的硬體工程師，養育著如遊戲中鬼魅存在般生物「BT」的嬰兒，母女倆以無形的臍帶連接著。"),
        Character(name: "Lockne", image: "Lockne", Dooms: 3, introduction: "　　布橋斯的核心成員之一，Mama 的孿生妹妹。在姐姐死亡後，自己的靈魂與姐姐的靈體合二為一。後期協助山姆阻止滅絕的到來。"),
        Character(name: "Deadman", image: "Deadman", Dooms: 0, introduction: "　　布橋斯的核心成員之一，負責BB的管理和維護。人造人，由於其他因素，導致身體器官功能異常，由已死之人器官拼湊而成，全身上下約七成是移植的。\n　　此角色由墨西哥籍好萊塢電影導演吉勒摩·戴托羅特別客串演出，提供動態捕捉及部分演技，配音由傑西·寇提擔任。"),
        Character(name: "Heartman", image: "Heartman", Dooms: 0, introduction: "　　布橋斯的核心成員之一，身上常駐有AED的男人，每21分鐘會死亡，3分鐘後AED啟動便會復活，每天會死亡60次、復活60次，藉不斷重複的死亡與復活來前往另一個世界探索，生活基本需求（排泄、洗澡、進食）在生死之間皆可簡單解決，僅睡眠與人的「交流」稍微帶來困擾；起居室有著大量在死亡擱淺發生前的音樂、書籍、影視短片收藏，都是在21分鐘內可以聆聽、閱讀、與鑑賞完畢的作品，藉以打發生死之間的等待時間；自認自己僅肉體留在現實世界，靈魂早已停留在另一個世界。\n　　此角色由丹麥籍電影導演尼可拉·溫丁·黑芬特別客串演出，配音由戴倫·雅各擔任。"),
        Character(name: "Die-Hardman", image: "Die-Hardman", Dooms: 0, introduction: "　　布橋斯的核心成員之一，本名約翰·布雷克·麥克蘭，布橋斯的領袖。原為克里夫·昂格的部下，後成為布莉姬總統的副手，與前布橋斯送貨員。以臉部曾受傷為理由，通常總是戴著面具示人。因為克里夫多次對自己有救命之恩，於是暗中協助他帶著山姆逃離，但最終功虧一簣。\n　　故事的最後接任為UCA第二任總統，並向山姆懺悔。"),
        Character(name: "Higgs Monaghan", image: "Higgs", Dooms: 7, introduction: "　　面戴著金色面具的神秘男子，極端組織「狂人」的領袖（傀儡）。擁有召喚及操縱BT的能力。實際上他是「滅絕體」亞美利所操縱的傀儡，其超能力也是亞美利所賦予的，目的在於幫助亞美利執行滅絕計劃，以促使第六次大滅絕的加速到來。\n　　故事的最後被山姆打敗，最終在冥灘自殺身亡。"),
        Character(name: "Amelie Strand", image: "Amelie", Dooms: 7, introduction: "　　UCA總統布莉姬之女，山姆的義姊。由於身體還留在「另一邊」，因此外表不會變老；志願是重建UCA；曾帶領精英部隊從東岸出發，橫跨北美洲大陸出發至西岸，進行連接途中城市「開若爾網路」（Chiral Network）的作業，歷時三年抵達位於西岸的緣結市（Edge Knot City），但部隊被「狂人」殲滅，亞美利被挾持成為人質，但並未被限制通訊自由；委託山姆進行重接北美大陸上各城市開若爾網路的任務，並將亞美利救離緣結市重回東岸，使她繼任成為新任總統。\n　　實際上她是布莉姬在20歲時因癌症動手術摘除子宮，造成自己肉體（Ha）與靈魂（Ka）分而為二後的靈體部分，同時也是決定人類物種存亡的「滅絕體」（Extinction Entity）。是分離主義軍事組織「狂人」的幕後黑手和真正的領袖。\n　　角色以演員琳賽·華格納1970年代時期的樣貌建模。"),
        Character(name: "Bridget Strand", image: "Bridget", Dooms: 0, introduction: "　　UCA第一任總統。原為副總統，在虛爆事件後接任總統職位，也是布橋斯的實質上的領袖。後因為子宮癌病逝。實際是決定人類物種存亡的「滅絕體」（Extinction Entity）在人類世界的肉體部分（Ha），其靈體部分（Ka）就是亞美利。\n　　角色以演員琳賽·華格納現在的樣貌建模並參與配音。至於請到琳賽參與本作演出的原因，則是起自小島秀夫監督是她1970年代主演電視影集《無敵女金剛》以來的多年熱情影迷。"),
        Character(name: "Chiral Artist", image: "Artist", Dooms: 0, introduction: "　　開若爾藝術家，請求山姆幫助自己能夠與男友團聚。"),
    ]
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(character: Character.characters[Character.characters.count - 1])
            .preferredColorScheme(.dark)
    }
}
