//
//  Message.swift
//  ProgrammerChat
//
//  Created by Nathaniel Burciaga on 4/8/18.
//  Copyright © 2018 Nathaniel Burciaga. All rights reserved.
//

import Foundation

class Message {
    private var _content: String
    private var _senderId: String
    
    var content : String {
        return _content
    }
    
    var senderID: String {
        return _senderId
    }
    
    init(content: String, senderId: String) {
        self._content = content
        self._senderId = senderId
    }
    
    
}
