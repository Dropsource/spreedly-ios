//
//  CreditCard.swift
//  Spreedly
//
//  Created by David Santoso on 10/8/15.
//  Copyright © 2015 Spreedly Inc. All rights reserved.
//

import Foundation

public class CreditCard {
    public var firstName, lastName, number, verificationValue, month, year: String?
    public var address1, address2, city, state, zip, country, phoneNumber: String?
    
    public init() {}
    
    public static func extractMonth(expiration: String) -> String {
        return(self.splitExpirationString(expiration).first)!
    }
    
    public static func extractYear(expiration: String) -> String {
        return(self.splitExpirationString(expiration).last)!
    }
    
    static func splitExpirationString(expiration: String) -> [String] {
        let expirationArray = expiration.componentsSeparatedByString("/")
        return expirationArray
    }
}