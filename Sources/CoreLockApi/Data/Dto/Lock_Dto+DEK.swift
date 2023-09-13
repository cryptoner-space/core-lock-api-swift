//
//  Lock_GenerateKeyDto.swift
//  
//
//  Created by skibinalexander on 13.11.2022.
//

import Foundation

// MARK: - DEK

public extension Lock_Dto.DEK {
    struct Encrypt {}
    struct Decrypt {}
}

public extension Lock_Dto.DEK.Encrypt {
    struct Res: Codable {
        public let dataKeyPlaintext: String?
        public let dataKeyCiphertext: String

        public init(dataKeyPlaintext: String?, dataKeyCiphertext: String) {
            self.dataKeyPlaintext = dataKeyPlaintext
            self.dataKeyCiphertext = dataKeyCiphertext
        }
    }
}

public extension Lock_Dto.DEK.Decrypt {
    struct Req: Codable {
        public let dataKeyCiphertext: String

        public init(dataKeyCiphertext: String) {
            self.dataKeyCiphertext = dataKeyCiphertext
        }
    }
    
    struct Res: Codable {
        public let dataKeyPlaintext: String
        
        public init(dataKeyPlaintext: String) {
            self.dataKeyPlaintext = dataKeyPlaintext
        }
    }
}
