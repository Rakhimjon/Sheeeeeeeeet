//
//  MockNotificationCenter.swift
//  SheeeeeeeeetTests
//
//  Created by Daniel Saidi on 2019-02-12.
//  Copyright © 2019 Daniel Saidi. All rights reserved.
//

import Foundation
import Mockery

class MockNotificationCenter: NotificationCenter {
    
    var recorder = Mock()
    
    override func addObserver(_ observer: Any, selector aSelector: Selector, name aName: NSNotification.Name?, object anObject: Any?) {
        addObserverTest(observer, selector: aSelector, name: aName, object: anObject)
    }
    
    func addObserverTest(_ observer: Any, selector aSelector: Selector, name aName: NSNotification.Name?, object anObject: Any?) {
        recorder.invoke(addObserverTest, args: (observer, aSelector, aName, anObject))
    }
    
    override func removeObserver(_ observer: Any, name aName: NSNotification.Name?, object anObject: Any?) {
        removeObserverTest(observer, name: aName, object: anObject)
    }
    
    func removeObserverTest(_ observer: Any, name aName: NSNotification.Name?, object anObject: Any?) {
        recorder.invoke(removeObserverTest, args: (observer, aName, anObject))
    }
}
