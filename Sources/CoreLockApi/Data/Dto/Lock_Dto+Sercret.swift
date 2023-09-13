//
//  Lock_Dto+Secret.swift
//  
//
//  Created by skibinalexander on 25.03.2023.
//

import Foundation

extension Lock_Dto.Secret {
    public struct Write {}
    public struct Read {}
}

// MARK: - Write

public extension Lock_Dto.Secret.Write {
    struct Req: Codable {
        public let externalId: String?
        public let description: String?
        public let tag: String?
        public let key: String
        public let data: Data
        
        // MARK: - Init
        
        public init(
            externalId: String?,
            description: String?,
            tag: String?,
            key: String,
            data: Data
        ) {
            self.externalId = externalId
            self.description = description
            self.tag = tag
            self.key = key
            self.data = data
        }
    }
}

// MARK: - Read

public extension Lock_Dto.Secret.Read {
    struct Req: Codable {
        public let ids: [UUID]?
        public let tags: [String]?
        public let externalIds: [String]?
        
        public init(ids: [UUID]?, tags: [String]?, externalIds: [String]?) {
            self.ids = ids
            self.tags = tags
            self.externalIds = externalIds
        }
    }
    
    struct Res: Codable {
        public let id: UUID
        public let externalId: String?
        public let tag: String?
        public let description: String?
        public let dataKeyCiphertext: String
        public let dataKeyPlaintext: String
        public let data: Data
        
        // MARK: - Init
        
        public init(
            id: UUID,
            externalId: String?,
            tag: String?,
            description: String?,
            dataKeyCiphertext: String,
            dataKeyPlaintext: String,
            data: Data
        ) {
            self.id = id
            self.externalId = externalId
            self.tag = tag
            self.description = description
            self.dataKeyCiphertext = dataKeyCiphertext
            self.dataKeyPlaintext = dataKeyPlaintext
            self.data = data
        }
    }
}
