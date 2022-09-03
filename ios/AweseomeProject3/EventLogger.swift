//
//  EventLogger.swift
//  AweseomeProject3
//
//  Created by M on 03/09/22.
//

import Foundation

@objc(EventLogger)
final class EventLogger: NSObject  {
  
  @objc static func requiresMainQueueSetup() -> Bool {
    return false
  }
  
  @objc(addEvent:location:date:completion:)
  func addEvent(_ name: String, location: String, date: NSNumber, completion: @escaping RCTResponseSenderBlock) {
    print("==>",#function, name, location, date)
    completion([NSNull(), "something"])
  }
  
  @objc func constantToExport() -> [String:Any] {
    return ["SOMEKEY":"someValue"]
  }
}
