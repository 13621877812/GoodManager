//
//  JsApiSwift.swift
//  GoodManager
//
//  Created by KevinZhao on 2019/1/23.
//  Copyright © 2019 GoodManager. All rights reserved.
//

import Foundation
import SwiftyJSON

class JsApiSwift: NSObject {
    
    //MUST use "_" to ignore the first argument name explicitly。
    @objc func testSyn( _ arg:String) -> String {
        
        return String(format:"%@[Swift sync call:%@]", arg, "test")
    }
    
    @objc func APPGetNetwork( _ arg:String) ->String {
        return GoodManager.APPGetNetWork()
    }
    
    @objc func APPGetVersion(_ arg:String) ->String{
        return GoodManager.APPGetVersion()
    }
    
    @objc func APPWinOpen (_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let url = jsonString["url"].stringValue
        let mark = jsonString["mark"].stringValue
        let progressBarColor = jsonString["progressBarColor"].stringValue
        let statusBarColor = jsonString["statusBarColor"].stringValue
        print(jsonString)
        GoodManager.APPWinOpen(url:url,mark:mark,progressBarColor:progressBarColor,statusBarColor:statusBarColor)
    }
    
    @objc func APPWinClose(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let mark = jsonString["mark"].stringValue
        GoodManager.APPWinClose(mark: mark)
    }
    
    @objc func APPExecWinJS(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let mark = jsonString["mark"].stringValue
        let JSFun = jsonString["JSFun"].stringValue
        GoodManager.APPExecWinJS(mark: mark, JSFun: JSFun)
    }
    
    @objc func APPSetValue(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let key = jsonString["key"].stringValue
        let value = jsonString["value"].stringValue
        GoodManager.APPSetValue(key: key, value: value)
    }
    
    @objc func APPGetValue(_ arg:String) -> String{
        let jsonString = JSON(parseJSON: arg)
        let key = jsonString["key"].stringValue
        return GoodManager.APPGetValue(key: key)
    }
    
    @objc func APPDelValue(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let key = jsonString["key"].stringValue
        GoodManager.APPDelValue(key: key)
    }
    
    @objc func APPOutBrowserOpenURL(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let url = jsonString["url"].stringValue
        GoodManager.APPOutBrowserOpenURL(url: url)
    }
    
    @objc func APPGetBankImage(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPGetBankImage(callBackfunName: callBackfunName)
    }
    
    @objc func APPGetIdentityCardImage(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPGetIdentityCardImage(callBackfunName: callBackfunName)
    }
    
    @objc func APPChooseSingleImage(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let source = jsonString["source"].intValue
        let ifNeedEdit = jsonString["ifNeedEdit"].intValue
        let ifOriginalPic = jsonString["ifOriginalPic"].intValue
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPChooseSingleImage(source: source, ifNeedEdit: ifNeedEdit, ifOriginalPic: ifOriginalPic, callBackfunName: callBackfunName)
    }
    
    @objc func APPChooseMoreImage(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let source = jsonString["source"].intValue
        let maxNum = jsonString["maxNum"].intValue
        let ifOriginalPic = jsonString["ifOriginalPic"].intValue
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPChooseMoreImage(source: source, maxNum: maxNum, ifOriginalPic: ifOriginalPic, callBackfunName: callBackfunName)
    }
    
    @objc func APPPreviewImage(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let paths = jsonString["paths"].stringValue
        let defaultIndex = jsonString["defaultIndex"].intValue
        GoodManager.APPPreviewImage(paths: paths, defaultIndex: defaultIndex)
    }
    
    @objc func APPChooseSingleVideo(_ arg: String){
        let jsonString = JSON(parseJSON: arg)
        let source = jsonString["source"].intValue
        let maxVideoLength = jsonString["maxVideoLength"].intValue
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPChooseSingleVideo(source: source, maxVideoLength: maxVideoLength, callBackfunName: callBackfunName)
    }
    
    @objc func APPPlayVideo(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let path = jsonString["path"].stringValue
        let startPosition = jsonString["startPosition"].doubleValue
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPPlayVideo(path: path, startPosition: startPosition, callBackfunName: callBackfunName)
    }
    /*
     @objc func APPGetBankImage(_ arg:String){
     let jsonString = JSON(parseJSON: arg)
     let callBackfunName = jsonString["callBackfunName"].stringValue
     GoodManager.APPGetBankImage(callBackfunName: callBackfunName)
     }
     */
    @objc func APPChooseSingleFile(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPChooseSingleFile(callBackfunName: callBackfunName)
    }
    
    @objc func APPGetFileSize(_ arg:String) ->String {
        let jsonString = JSON(parseJSON: arg)
        let path = jsonString["path"].stringValue
        return GoodManager.APPGetFileSize(path: path)
    }
    
    @objc func APPGetFileBase(_ arg:String) ->String {
        let jsonString = JSON(parseJSON: arg)
        let path = jsonString["path"].stringValue
        return GoodManager.APPGetFileBase(path: path)
    }
    
    @objc func APPUploadFile(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let path = jsonString["path"].stringValue
        let domainName = jsonString["domainName"].stringValue
        let folderName = jsonString["folderName"].stringValue
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPUploadFile(path:path, domainName:domainName, folderName:folderName, callBackfunName:callBackfunName)
    }
    
    @objc func APPDownFile(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let path = jsonString["path"].stringValue
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPDownFile(path: path, callBackfunName: callBackfunName)
    }
    
    @objc func APPIfExistFile(_ arg:String) -> String {
        let jsonString = JSON(parseJSON: arg)
        let path = jsonString["path"].stringValue
        return GoodManager.APPIfExistFile(path: path)
    }
    
    @objc func APPDelFile(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let path = jsonString["path"].stringValue
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPDelFile(path: path, callBackfunName: callBackfunName)
    }
    
    @objc func APPPreviewFile(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let path = jsonString["path"].stringValue
        GoodManager.APPPreviewFile(path: path)
    }
    
    @objc func APPStartLocation(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPStartLocation(callBackfunName: callBackfunName)
    }
    //通讯录
    @objc func APPGetTelBookList(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPGetTelBookList(callBackfunName: callBackfunName)
    }
    
    @objc func APPChooseTelBook(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        print(jsonString)
        let maxNum = jsonString["maxNum"].intValue
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPChooseTelBook(maxNum: maxNum, callBackfunName: callBackfunName)
    }
    
    @objc func APPScanQRCode(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let callBackfunName = jsonString["callBackfunName"].stringValue
        GoodManager.APPScanQRCode(callBackfunName: callBackfunName)
    }
    
    @objc func APPSetStatusBarColor(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let color = jsonString["color"].stringValue
        print(color)
        GoodManager.AppSetStatusBarColor(color: color)
    }
    
    @objc func APPSetProgressBarColor(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let color = jsonString["color"].stringValue
        GoodManager.APPSetProgressBarColor(color: color)
    }
    
    @objc func APPSetBrowserHomeURL(_ arg:String){
        let jsonString = JSON(parseJSON: arg)
        let url = jsonString["url"].stringValue
        GoodManager.APPSetBrowserHomeURL(url: url)
    }
    
    @objc func APPPushSetAlias(_ arg:String) {
        let jsonString = JSON(parseJSON: arg)
        let alias = jsonString["alias"].stringValue
        GoodManager.APPPushSetAlias(alias)
    }
    
    @objc func APPPushCancelAlias(_ arg:String) {
        GoodManager.APPPushCancelAlias()
    }
    
    @objc func APPPushMsgRemindType(_ arg:String) {
        let jsonString = JSON(parseJSON: arg)
        let ifOpenVoice = jsonString["ifOpenVoice"].intValue
        let ifOpenVibration = jsonString["ifOpenVibration"].intValue
        GoodManager.APPPushMsgRemindType(ifOpenVoice,ifOpenVibration:ifOpenVibration)
    }
    
    @objc func APPNELogin(_ arg:String) {
        let jsonString = JSON(parseJSON: arg)
        let account = jsonString["account"].stringValue
        let password = jsonString["password"].stringValue
        GoodManager.APPNELogin(account: account, password: password)
    }
    @objc func APPNEOpenDialog(_ arg:String) {
        let jsonString = JSON(parseJSON: arg)
        let account = jsonString["account"].stringValue
        let password = jsonString["password"].stringValue
        let statusBarColor = jsonString["statusBarColor"].stringValue
        
        GoodManager.APPNEOpenDialog(account: account, password: password, statusBarColor: statusBarColor)
        
    }
    @objc func APPNELoginOut(_ arg:String) {
        let jsonString = JSON(parseJSON: arg)
        let account = jsonString["account"].stringValue
        let password = jsonString["password"].stringValue
        let statusBarColor = jsonString["password"].stringValue
        
        GoodManager.APPNELoginOut()

    }
    
    @objc func APPNEOpenTelBook(_ arg:String) {
        let jsonString = JSON(parseJSON: arg)
        let account = jsonString["account"].stringValue
        let password = jsonString["password"].stringValue
        let statusBarColor = jsonString["password"].stringValue
        GoodManager.APPNEOpenTelBook(account:account, password:password, statusBarColor:statusBarColor)
    }
    
    @objc func APPNEChatWithFriend(_ arg:String) {
        let jsonString = JSON(parseJSON: arg)
        let fAccount = jsonString["fAccount"].stringValue
        let statusBarColor = jsonString["statusBarColor"].stringValue
        GoodManager.APPNEChatWithFriend(fAccount: fAccount, statusBarColor: statusBarColor)
    }
    @objc func APPNEChatWithQ(_ arg:String) {
        let jsonString = JSON(parseJSON: arg)
        let qMark = jsonString["qMark"].stringValue
        let statusBarColor = jsonString["statusBarColor"].stringValue
        GoodManager.APPNEChatWithQ(qMark: qMark, statusBarColor: statusBarColor)
    }
    
    @objc func APPNEGetUnreadNum(_ arg:String) {
        let count:Int =   GoodManager.APPNEGetUnreadNum()
        print(String(format: "全部未读消息个数为：%d", count));
    }
    
    @objc func APPNEGetUnreadWithQNum(_ arg:String) {
        let jsonString = JSON(parseJSON: arg)
        let qMark = jsonString["qMark"].stringValue
       let count:Int = GoodManager.APPNEGetUnreadWithQNum(qMark)
        
    }
    
    @objc func APPNEGetQUnreadWithFNum(_ arg:String) {
        let jsonString = JSON(parseJSON: arg)
        let fAccount = jsonString["fAccount"].stringValue
      let count:Int = GoodManager.APPNEGetQUnreadWithFNum(fAccount)
       print(String(format: "某个好友未读消息个数为：%d", count));
    }
}
