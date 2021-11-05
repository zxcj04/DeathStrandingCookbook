//
//  RewardLocation.swift
//  DeathStrandingCookbook
//
//  Created by FanRende on 2021/11/5.
//

import SwiftUI

struct RewardLocation: Identifiable {
    let name: String
    let rewards: [Reward]

    let id = UUID()
}

extension RewardLocation {
    static let locations = [
        RewardLocation(name: "首結市", rewards: [
            Reward(name: "鴨舌帽", location: "首結市", claimLevel: 3, image: "hat", introduction: ""),
            Reward(name: "全像投影資料(尼克·伊士頓)", location: "首結市", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "首結市西邊的配送中心", rewards: [
            Reward(name: "全像投影資料(布裡吉斯守衛：強悍)", location: "首結市西邊的配送中心", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(本傑明·漢考克)", location: "首結市西邊的配送中心", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "路登斯粉", rewards: [
            Reward(name: "全像投影資料(特大號粘土盧登斯)", location: "路登斯粉", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(盧登斯粉絲)", location: "路登斯粉", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "風電廠", rewards: [
            Reward(name: "建造機數據：發電機", location: "風電廠", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(傑克·文德)", location: "風電廠", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "首結市西邊的中繼站", rewards: [
            Reward(name: "全像投影資料(喬治·巴唐)", location: "首結市西邊的中繼站", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "音樂家", rewards: [
            Reward(name: "口琴", location: "音樂家", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(音樂家)", location: "音樂家", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "港結市", rewards: [
            Reward(name: "全像投影資料(維克托·弗蘭克)", location: "港結市", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "湖結市", rewards: [
            Reward(name: "全像投影資料(威廉·雷克)", location: "湖結市", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "工程師", rewards: [
            Reward(name: "力量骨架(Lv.1)", location: "工程師", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "煙霧彈(Lv.1)", location: "工程師", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "力量骨架(Lv.2)", location: "工程師", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "煙霧彈(Lv.2)", location: "工程師", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "力量骨架(Lv.3)", location: "工程師", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(工程師)", location: "工程師", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "匠人", rewards: [
            Reward(name: "絆索槍(Lv.1)", location: "匠人", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "絆索槍(Lv.2)", location: "匠人", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(觀察者：興高采烈、觀察者：警惕)", location: "匠人", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(埃洛伊、武器匠)", location: "匠人", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(長頸獸)", location: "匠人", claimLevel: 5, image: "", introduction: ""),
        ]),
        RewardLocation(name: "長老", rewards: [
            Reward(name: "誘餌貨箱(釋放火山氣體型)", location: "長老", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(長老)", location: "長老", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "湖結市南邊的配送中心", rewards: [
            Reward(name: "布橋斯靴子(Lv.2)", location: "湖結市南邊的配送中心", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "載具顏色資料(橄欖土褐、藏藍、狼灰、神秘黑、布裡吉斯橙、血紅、信號綠、棱鏡紫)", location: "湖結市南邊的配送中心", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "卡車：長途型(Lv.2)", location: "湖結市南邊的配送中心", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(湯瑪斯·薩瑟蘭)", location: "湖結市南邊的配送中心", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "載具顏色(緊急預警黃、淺褐、狼棕、速運紫、酷炫藍、雪白、玫瑰粉)", location: "湖結市南邊的配送中心", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "卡車：長途型(Lv.3)", location: "湖結市南邊的配送中心", claimLevel: 5, image: "", introduction: ""),
            Reward(name: "載具顏色(草綠、火星紅、沙漠粉紅、幽靈綠、閃電藍、明黃、火山橙)", location: "湖結市南邊的配送中心", claimLevel: 5, image: "", introduction: ""),
        ]),
        RewardLocation(name: "氣象站", rewards: [
            Reward(name: "建造機(Lv.2)", location: "氣象站", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "懸浮機(Lv.1)", location: "氣象站", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "建造機數據：避雨亭", location: "氣象站", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "建造機數據：藏身所", location: "氣象站", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "天氣預報", location: "氣象站", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "懸浮機(Lv.2)", location: "氣象站", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(亞曆克斯·維特斯通)", location: "氣象站", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "背包飾品·：晴天娃娃", location: "氣象站", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "角色扮演家", rewards: [
            Reward(name: "水獺帽", location: "角色扮演家", claimLevel: 1, image: "", introduction: ""),
            Reward(name: "收納袋", location: "角色扮演家", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "大容量手榴彈袋", location: "角色扮演家", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(流浪的主持人、角色扮演家)", location: "角色扮演家", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "風電廠", rewards: [
            Reward(name: "建造機數據：發電機", location: "風電廠", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(傑克·文德)", location: "風電廠", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "收藏家", rewards: [
            Reward(name: "背包罩", location: "收藏家", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(收藏家)", location: "收藏家", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "背包罩(Lv.2)", location: "收藏家", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "時間雨農場", rewards: [
            Reward(name: "歐卓德克功能：掃描干擾", location: "時間雨農場", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "歐卓德克功能：掃描人類", location: "時間雨農場", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(環境科學家、時間雨農場主)", location: "時間雨農場", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(鵝)", location: "時間雨農場", claimLevel: 5, image: "", introduction: ""),
        ]),
        RewardLocation(name: "電影導演", rewards: [
            Reward(name: "\"山姆\"太陽眼鏡", location: "電影導演", claimLevel: 1, image: "", introduction: ""),
            Reward(name: "歐卓德克功能(全息投影儀)", location: "電影導演", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(偽裝岩石投影)", location: "電影導演", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(電影導演)", location: "電影導演", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "開若爾藝術家的工作室", rewards: [
            Reward(name: "抗BT手槍(Lv.1)", location: "開若爾藝術家的工作室", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "抗BT手槍(Lv.2)", location: "開若爾藝術家的工作室", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(開若爾藝術家的母親、開若爾藝術家)", location: "開若爾藝術家的工作室", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "載具顏色(開若爾金)", location: "開若爾藝術家的工作室", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "舊貨商", rewards: [
            Reward(name: "加速骨架(Lv.1)", location: "舊貨商", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "電擊炸彈", location: "舊貨商", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "加速骨架(Lv.2)", location: "舊貨商", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "遙控電擊炸彈", location: "舊貨商", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(舊貨商)", location: "舊貨商", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "加速骨架(Lv.3)", location: "舊貨商", claimLevel: 5, image: "", introduction: ""),
        ]),
        RewardLocation(name: "南結市", rewards: [
            Reward(name: "手槍(Lv.1)", location: "南結市", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "突擊步槍(Lv.1)", location: "南結市", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "手榴彈", location: "南結市", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "倒三輪車：防禦型", location: "南結市", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "手槍(Lv.2)", location: "南結市", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "卡車：防禦型", location: "南結市", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(歐文·索斯威克)", location: "南結市", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "山結市北邊的中繼站", rewards: [
            Reward(name: "防彈鋼板(Lv.1)", location: "山結市北邊的中繼站", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "非致命突擊步槍(Lv.1)", location: "山結市北邊的中繼站", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "防彈鋼板(Lv.2)", location: "山結市北邊的中繼站", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(布裡吉斯守衛：UCA！)", location: "山結市北邊的中繼站", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "防彈鋼板(Lv.3)", location: "山結市北邊的中繼站", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(查理斯·卡恩)", location: "山結市北邊的中繼站", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "防彈鋼板(Lv.4)", location: "山結市北邊的中繼站", claimLevel: 5, image: "", introduction: ""),
        ]),
        RewardLocation(name: "山結市北邊的配送中心", rewards: [
            Reward(name: "突擊步槍(Lv.2)", location: "山結市北邊的配送中心", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "非致命突擊步槍(Lv.2)", location: "山結市北邊的配送中心", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "備用彈藥袋", location: "山結市北邊的配送中心", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "擴容電池(Lv.2)", location: "山結市北邊的配送中心", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "擴容電池(Lv.3)", location: "山結市北邊的配送中心", claimLevel: 5, image: "", introduction: ""),
            Reward(name: "全像投影資料(菲力浦·諾斯)", location: "山結市北邊的配送中心", claimLevel: 5, image: "", introduction: ""),
        ]),
        RewardLocation(name: "山結市", rewards: [
            Reward(name: "穩定器", location: "山結市", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "突擊步槍(Lv.3)", location: "山結市", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "非致命突擊步槍(Lv.3)", location: "山結市", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(埃倫·希爾)", location: "山結市", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "醫生", rewards: [
            Reward(name: "水壺(Lv.2)", location: "醫生", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(醫生、醫療設備工程師)", location: "醫生", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "機器人專家", rewards: [
            Reward(name: "全地形骨架(Lv.1)", location: "機器人專家", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全地形骨架(Lv.2)", location: "機器人專家", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(機器人專家)", location: "機器人專家", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全地形骨架(Lv.3)", location: "機器人專家", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(機器人專家的兒子)", location: "機器人專家", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(自動送貨機器人)", location: "機器人專家", claimLevel: 5, image: "", introduction: ""),
        ]),
        RewardLocation(name: "登山客", rewards: [
            Reward(name: "布橋斯靴子(Lv.3)", location: "登山客", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "力量手套", location: "登山客", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(登山客、登山嚮導)", location: "登山客", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "攝影師", rewards: [
            Reward(name: "霰彈槍(Lv.1)", location: "攝影師", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "鎮暴霰彈槍(Lv.1)", location: "攝影師", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "霰彈槍(Lv.2)", location: "攝影師", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "鎮暴霰彈槍(Lv.2)", location: "攝影師", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(攝影師、攝影師的母親)", location: "攝影師", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "靈修者", rewards: [
            Reward(name: "背包飾品：同心結", location: "靈修者", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "背包掛飾：一美元硬幣", location: "靈修者", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(靈修者)", location: "靈修者", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(浣熊)", location: "靈修者", claimLevel: 5, image: "", introduction: ""),
        ]),
        RewardLocation(name: "心人的實驗室", rewards: [
            Reward(name: "加熱墊", location: "心人的實驗室", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(BT)", location: "心人的實驗室", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "背包飾品：隱生蟲", location: "心人的實驗室", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "小說家的兒子", rewards: [
            Reward(name: "背包飾品：鈴鐺", location: "小說家的兒子", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(小說家的兒子)", location: "小說家的兒子", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "地質學家", rewards: [
            Reward(name: "攀爬柱(Lv.2)", location: "地質學家", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(地質學家)", location: "地質學家", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "古生物學家", rewards: [
            Reward(name: "氧氣罩", location: "古生物學家", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "血液手榴彈(Lv.2)", location: "古生物學家", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(古生物學家)", location: "古生物學家", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "演化生物學家", rewards: [
            Reward(name: "榴彈發射器", location: "演化生物學家", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "單管多火箭發射器", location: "演化生物學家", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(演化生物學家)", location: "演化生物學家", claimLevel: 4, image: "", introduction: ""),
        ]),
        RewardLocation(name: "西岸緣結市北邊的配送中心", rewards: [
            Reward(name: "遙控引爆榴彈發射器", location: "西岸緣結市北邊的配送中心", claimLevel: 2, image: "", introduction: ""),
        ]),
        RewardLocation(name: "西岸緣結市", rewards: [
            Reward(name: "四發火箭筒", location: "西岸緣結市", claimLevel: 2, image: "", introduction: ""),
        ]),
        RewardLocation(name: "資深送貨員", rewards: [
            Reward(name: "背包飾品：派送員鑰匙扣", location: "資深送貨員", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(資深派送員：鼓舞)", location: "資深送貨員", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(資深派送員：正在派送)", location: "資深送貨員", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(資深派送員：功夫)", location: "資深送貨員", claimLevel: 5, image: "", introduction: ""),
        ]),
        RewardLocation(name: "皮特·英格勒特(PIZZA哥)", rewards: [
            Reward(name: "全像投影資料(XXX：歡迎)", location: "皮特·英格勒特(PIZZA哥)", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "手槍(高級定制)", location: "皮特·英格勒特(PIZZA哥)", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(XXX：“五次生物大滅絕”)", location: "皮特·英格勒特(PIZZA哥)", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "霰彈槍(高級定制)", location: "皮特·英格勒特(PIZZA哥)", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "鎮暴霰彈槍(高級定制)", location: "皮特·英格勒特(PIZZA哥)", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "全像投影資料(XXX：來吧)", location: "皮特·英格勒特(PIZZA哥)", claimLevel: 4, image: "", introduction: ""),
            Reward(name: "突擊步槍(高級定制)", location: "皮特·英格勒特(PIZZA哥)", claimLevel: 5, image: "", introduction: ""),
            Reward(name: "非致命突擊步槍(高級定制)", location: "皮特·英格勒特(PIZZA哥)", claimLevel: 5, image: "", introduction: ""),
        ]),
        RewardLocation(name: "第一末日準備者", rewards: [
            Reward(name: "聖誕帽", location: "第一末日準備者", claimLevel: 1, image: "", introduction: ""),
            Reward(name: "背包飾品：Monster Energy", location: "第一末日準備者", claimLevel: 2, image: "", introduction: ""),
            Reward(name: "全像投影資料(第一位末日準備者)", location: "第一末日準備者", claimLevel: 3, image: "", introduction: ""),
            Reward(name: "全像投影資料(狼)", location: "第一末日準備者", claimLevel: 4, image: "", introduction: ""),
        ]),
    ]
}

struct Reward: Identifiable {
    let name: String
    let location: String
    let claimLevel: Int
    let image: String
    let introduction: String

    let id = UUID()
}
