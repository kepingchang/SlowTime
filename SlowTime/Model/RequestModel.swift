//
//  BaseModle.swift
//  hexa
//
//  Created by KKING on 16/8/5.
//  Copyright © 2016年 vincross. All rights reserved.
//

import UIKit
import SwiftyJSON

public struct User: Parseable {
    public var id: Int?
    public var nickname: String?
    public var phoneNumber: String?
    public var userHash: String?
    public var profile: String?
    public var accessToken: String?
    public var createTime: String?
    public var updateTime: String?
    

    public static var identifier: String = "user"
    
    public init(json: JSON) {
        id          <-      json["id"].intValue
        nickname    <-      json["nickname"].stringValue
        phoneNumber <-      json["phoneNumber"].stringValue
        userHash    <-      json["userHash"].stringValue
        profile     <-      json["profile"].stringValue
        accessToken <-      json["accessToken"].stringValue
        createTime  <-      json["createTime"].stringValue
        updateTime  <-      json["updateTime"].stringValue
    }
}




public struct Friend: Parseable {
    public var nickname: String?
    public var userHash: String?
    public var profile: String?
    public var hasNewMail: Bool?

    public static var identifier: String = "users"
    
    public init(json: JSON) {
        nickname    <-      json["nickname"].stringValue
        userHash    <-      json["userHash"].stringValue
        profile     <-      json["profile"].stringValue
        hasNewMail  <-      json["accessToken"].boolValue
    }
}


public struct ListMail: Parseable {
    public var id: String?
    public var abstract: String?
    public var isRead: Bool?
    public var emailType: Int?
    public var createTime: String?
    public var updateTime: String?
    
    public static var identifier: String = "mails"
    
    public init(json: JSON) {
        id          <-      json["id"].stringValue
        abstract    <-      json["abstract"].stringValue
        isRead      <-      json["isRead"].boolValue
        emailType   <-      json["emailType"].intValue
        createTime  <-      json["createTime"].stringValue
        updateTime  <-      json["updateTime"].stringValue
    }
}




public struct Mail: Parseable {
    public var id: String?
    public var isRead: Bool?
    public var content: String?
    public var emailType: Int?
    public var createTime: String?
    public var updateTime: String?

    public var fromUser: User?
    public var toUser: User?

    public static var identifier: String = "mail"

    public init(json: JSON) {
        id          <-      json["id"].stringValue
        isRead      <-      json["isRead"].boolValue
        content     <-      json["content"].stringValue
        emailType   <-      json["emailType"].intValue
        createTime  <-      json["createTime"].stringValue
        updateTime  <-      json["updateTime"].stringValue

        fromUser    <-      User(json: json["fromUser"])
        toUser      <-      User(json: json["toUser"])
    }
}



public struct Stamp: Parseable {
    public var id: String?
    public var count: Int?
    public var icon: String?
    public var price: Int?

    public static var identifier: String = "stamps"
    
    public init(json: JSON) {
        id              <-      json["id"].stringValue
        count           <-      json["count"].intValue
        icon            <-      json["icon"].stringValue
        price           <-      json["price"].intValue
    }
}


