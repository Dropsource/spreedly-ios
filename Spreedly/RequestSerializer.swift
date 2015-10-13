//
//  RequestSerializer.swift
//  Spreedly
//
//  Created by David Santoso on 10/10/15.
//  Copyright © 2015 Spreedly Inc. All rights reserved.
//

import Foundation

public class RequestSerializer {
    
    public static func serialize(creditCard: CreditCard) -> (data: NSData?, error: NSError?) {
        var dict = [String: String]()
        
        if let creditCardFirstName = creditCard.firstName {
            dict["first_name"] = creditCardFirstName
        }
        
        if let creditCardLastName = creditCard.lastName {
            dict["last_name"] = creditCardLastName
        }
        
        if let creditCardNumber = creditCard.number {
            dict["number"] = creditCardNumber
        }
        
        if let creditCardCVV = creditCard.verificationValue {
            dict["verification_value"] = creditCardCVV
        }
        
        if let creditCardExpMonth = creditCard.month {
            dict["month"] = creditCardExpMonth
        }
        
        if let creditCardExpYear = creditCard.year {
            dict["year"] = creditCardExpYear
        }
        
        if let creditCardAddress1 = creditCard.address1 {
            dict["address1"] = creditCardAddress1
        }
        
        if let creditCardAddress2 = creditCard.address1 {
            dict["address2"] = creditCardAddress2
        }
        
        if let creditCardCity = creditCard.city {
            dict["city"] = creditCardCity
        }
        
        if let creditCardState = creditCard.state {
            dict["state"] = creditCardState
        }
        
        if let creditCardZip = creditCard.zip {
            dict["zip"] = creditCardZip
        }
        
        if let creditCardCountry = creditCard.country {
            dict["address1"] = creditCardCountry
        }
        
        if let creditCardPhoneNumber = creditCard.phoneNumber {
            dict["address1"] = creditCardPhoneNumber
        }
        
        let body = [ "payment_method": [ "credit_card": dict ]]
        
        do {
            let data = try NSJSONSerialization.dataWithJSONObject(body, options: [])
            return (data, nil)
        } catch let serializeError as NSError {
            print("Error serializing credit card. Error: \(serializeError)")
            return (nil, serializeError)
        }
    }
}