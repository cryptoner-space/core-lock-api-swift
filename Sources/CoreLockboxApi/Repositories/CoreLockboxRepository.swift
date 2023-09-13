//
//  CoreLockboxRepository.swift
//  Cryptoner-iOS
//
//  Created by skibinalexander on 20.08.2023.
//

import Foundation
import BlockchainSdk

public protocol CoreLockboxRepository {
    
    /// Obtain data encryption key
    func dekEncrypt(
        completion: @escaping (Result<Lock_Dto.DEK.Encrypt.Res, Error>) -> Void
    )
    
    /// Decrypt data encryption key
    func dekDecrypt(
        completion: @escaping (Result<Lock_Dto.DEK.Decrypt.Res, Error>) -> Void
    )
    
    /// Получить модель секрета из хранилища
    func read(
        _ dto: Lock_Dto.Secret.Read.Req,
        completion: @escaping (Result<[Lock_Dto.Secret.Read.Res], Error>) -> Void
    )
    
    /// Записать модель секрета из хранилища
    func write(
        _ data: Lock_Dto.Secret.Write.Req,
        completion: @escaping (Result<Void, Error>) -> Void
    )
    
}
