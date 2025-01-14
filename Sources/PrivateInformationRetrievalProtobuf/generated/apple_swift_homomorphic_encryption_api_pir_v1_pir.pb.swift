// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: apple/swift_homomorphic_encryption/api/pir/v1/pir.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2024-2025 Apple Inc. and the Swift Homomorphic Encryption project authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

import HomomorphicEncryptionProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Configuration for one shard of the PIR database.
public struct Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfig: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Number of entries in the shard.
  public var numEntries: UInt64 = 0

  /// Size in bytes of entries in the shard.
  public var entrySize: UInt64 = 0

  /// Dimensions that make up the hypercube.
  public var dimensions: [UInt64] = []

  /// Unique identifier for the shard.
  public var shardID: String {
    get {return _shardID ?? String()}
    set {_shardID = newValue}
  }
  /// Returns true if `shardID` has been explicitly set.
  public var hasShardID: Bool {return self._shardID != nil}
  /// Clears the value of `shardID`. Subsequent reads from it will return its default value.
  public mutating func clearShardID() {self._shardID = nil}

  /// Whether to compress vectorized PIR response.
  public var compressVectorizedPirResponse: Bool {
    get {return _compressVectorizedPirResponse ?? false}
    set {_compressVectorizedPirResponse = newValue}
  }
  /// Returns true if `compressVectorizedPirResponse` has been explicitly set.
  public var hasCompressVectorizedPirResponse: Bool {return self._compressVectorizedPirResponse != nil}
  /// Clears the value of `compressVectorizedPirResponse`. Subsequent reads from it will return its default value.
  public mutating func clearCompressVectorizedPirResponse() {self._compressVectorizedPirResponse = nil}

  /// The additional "batching" introduced in vectorized pir to accommodate large entry size.
  public var vectorizedPirInternalBatchingSize: UInt64 {
    get {return _vectorizedPirInternalBatchingSize ?? 0}
    set {_vectorizedPirInternalBatchingSize = newValue}
  }
  /// Returns true if `vectorizedPirInternalBatchingSize` has been explicitly set.
  public var hasVectorizedPirInternalBatchingSize: Bool {return self._vectorizedPirInternalBatchingSize != nil}
  /// Clears the value of `vectorizedPirInternalBatchingSize`. Subsequent reads from it will return its default value.
  public mutating func clearVectorizedPirInternalBatchingSize() {self._vectorizedPirInternalBatchingSize = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _shardID: String? = nil
  fileprivate var _compressVectorizedPirResponse: Bool? = nil
  fileprivate var _vectorizedPirInternalBatchingSize: UInt64? = nil
}

/// Configuration for one PIR usecase.
public struct Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRConfig: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Encryption parameters.
  public var encryptionParameters: HomomorphicEncryptionProtobuf.Apple_SwiftHomomorphicEncryption_V1_EncryptionParameters {
    get {return _storage._encryptionParameters ?? HomomorphicEncryptionProtobuf.Apple_SwiftHomomorphicEncryption_V1_EncryptionParameters()}
    set {_uniqueStorage()._encryptionParameters = newValue}
  }
  /// Returns true if `encryptionParameters` has been explicitly set.
  public var hasEncryptionParameters: Bool {return _storage._encryptionParameters != nil}
  /// Clears the value of `encryptionParameters`. Subsequent reads from it will return its default value.
  public mutating func clearEncryptionParameters() {_uniqueStorage()._encryptionParameters = nil}

  /// Configuration for each shard; can be overridden by `pir_shard_configs` (field 10).
  public var shardConfigs: [Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfig] {
    get {return _storage._shardConfigs}
    set {_uniqueStorage()._shardConfigs = newValue}
  }

  /// Parameters specific to KeywordPIR.
  public var keywordPirParams: Apple_SwiftHomomorphicEncryption_Pir_V1_KeywordPirParameters {
    get {return _storage._keywordPirParams ?? Apple_SwiftHomomorphicEncryption_Pir_V1_KeywordPirParameters()}
    set {_uniqueStorage()._keywordPirParams = newValue}
  }
  /// Returns true if `keywordPirParams` has been explicitly set.
  public var hasKeywordPirParams: Bool {return _storage._keywordPirParams != nil}
  /// Clears the value of `keywordPirParams`. Subsequent reads from it will return its default value.
  public mutating func clearKeywordPirParams() {_uniqueStorage()._keywordPirParams = nil}

  /// Server-side PIR algorithm.
  public var algorithm: Apple_SwiftHomomorphicEncryption_Pir_V1_PirAlgorithm {
    get {return _storage._algorithm}
    set {_uniqueStorage()._algorithm = newValue}
  }

  /// Maximum number of queries allowed in a single request.
  public var batchSize: UInt64 {
    get {return _storage._batchSize}
    set {_uniqueStorage()._batchSize = newValue}
  }

  /// Hash of EvaluationKeyConfig.
  public var evaluationKeyConfigHash: Data {
    get {return _storage._evaluationKeyConfigHash}
    set {_uniqueStorage()._evaluationKeyConfigHash = newValue}
  }

  /// Configuration for each shard; overrides `shard_configs` (field 2).
  public var pirShardConfigs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfigs {
    get {return _storage._pirShardConfigs ?? Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfigs()}
    set {_uniqueStorage()._pirShardConfigs = newValue}
  }
  /// Returns true if `pirShardConfigs` has been explicitly set.
  public var hasPirShardConfigs: Bool {return _storage._pirShardConfigs != nil}
  /// Clears the value of `pirShardConfigs`. Subsequent reads from it will return its default value.
  public mutating func clearPirShardConfigs() {_uniqueStorage()._pirShardConfigs = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Configuration for PIR shards.
public struct Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfigs: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Different shard configuration formats.
  public var shardConfigs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfigs.OneOf_ShardConfigs? = nil

  /// Repeated shard configuration.
  public var repeatedShardConfig: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRFixedShardConfig {
    get {
      if case .repeatedShardConfig(let v)? = shardConfigs {return v}
      return Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRFixedShardConfig()
    }
    set {shardConfigs = .repeatedShardConfig(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Different shard configuration formats.
  public enum OneOf_ShardConfigs: Equatable, Sendable {
    /// Repeated shard configuration.
    case repeatedShardConfig(Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRFixedShardConfig)

  }

  public init() {}
}

/// Every shard configuration is the same.
public struct Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRFixedShardConfig: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Shard configuration for all the shards.
  public var shardConfig: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfig {
    get {return _shardConfig ?? Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfig()}
    set {_shardConfig = newValue}
  }
  /// Returns true if `shardConfig` has been explicitly set.
  public var hasShardConfig: Bool {return self._shardConfig != nil}
  /// Clears the value of `shardConfig`. Subsequent reads from it will return its default value.
  public mutating func clearShardConfig() {self._shardConfig = nil}

  /// Number of shards.
  public var shardCount: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _shardConfig: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfig? = nil
}

/// PIR Request.
public struct Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRRequest: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Shard index where this request should be routed. Can be overridden by shard_id.
  public var shardIndex: UInt32 = 0

  /// Encrypted query.
  public var query: Apple_SwiftHomomorphicEncryption_Pir_V1_EncryptedIndices {
    get {return _query ?? Apple_SwiftHomomorphicEncryption_Pir_V1_EncryptedIndices()}
    set {_query = newValue}
  }
  /// Returns true if `query` has been explicitly set.
  public var hasQuery: Bool {return self._query != nil}
  /// Clears the value of `query`. Subsequent reads from it will return its default value.
  public mutating func clearQuery() {self._query = nil}

  /// Evaluation key metadata.
  public var evaluationKeyMetadata: Apple_SwiftHomomorphicEncryption_Api_Shared_V1_EvaluationKeyMetadata {
    get {return _evaluationKeyMetadata ?? Apple_SwiftHomomorphicEncryption_Api_Shared_V1_EvaluationKeyMetadata()}
    set {_evaluationKeyMetadata = newValue}
  }
  /// Returns true if `evaluationKeyMetadata` has been explicitly set.
  public var hasEvaluationKeyMetadata: Bool {return self._evaluationKeyMetadata != nil}
  /// Clears the value of `evaluationKeyMetadata`. Subsequent reads from it will return its default value.
  public mutating func clearEvaluationKeyMetadata() {self._evaluationKeyMetadata = nil}

  /// Hash of the `PIRConfig` used to construct the query.
  public var configurationHash: Data = Data()

  /// If set, route request to a shard with this `shard_id` instead of `shard_index`.
  public var shardID: String {
    get {return _shardID ?? String()}
    set {_shardID = newValue}
  }
  /// Returns true if `shardID` has been explicitly set.
  public var hasShardID: Bool {return self._shardID != nil}
  /// Clears the value of `shardID`. Subsequent reads from it will return its default value.
  public mutating func clearShardID() {self._shardID = nil}

  /// If set, evaluation key to query with. Will override evaluation key stored server-side.
  public var evaluationKey: Apple_SwiftHomomorphicEncryption_Api_Shared_V1_EvaluationKey {
    get {return _evaluationKey ?? Apple_SwiftHomomorphicEncryption_Api_Shared_V1_EvaluationKey()}
    set {_evaluationKey = newValue}
  }
  /// Returns true if `evaluationKey` has been explicitly set.
  public var hasEvaluationKey: Bool {return self._evaluationKey != nil}
  /// Clears the value of `evaluationKey`. Subsequent reads from it will return its default value.
  public mutating func clearEvaluationKey() {self._evaluationKey = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _query: Apple_SwiftHomomorphicEncryption_Pir_V1_EncryptedIndices? = nil
  fileprivate var _evaluationKeyMetadata: Apple_SwiftHomomorphicEncryption_Api_Shared_V1_EvaluationKeyMetadata? = nil
  fileprivate var _shardID: String? = nil
  fileprivate var _evaluationKey: Apple_SwiftHomomorphicEncryption_Api_Shared_V1_EvaluationKey? = nil
}

/// PIR Response.
public struct Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRResponse: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Encrypted replies, each of which is a ciphertext vector.
  public var replies: [HomomorphicEncryptionProtobuf.Apple_SwiftHomomorphicEncryption_V1_SerializedCiphertextVec] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// PIR OPRF Request.
public struct Apple_SwiftHomomorphicEncryption_Api_Pir_V1_OPRFRequest: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Serialized query.
  public var queryElement: Data = Data()

  /// Identifier for PirConfig used to construct this request.
  public var configID: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// PIR OPRF Response.
public struct Apple_SwiftHomomorphicEncryption_Api_Pir_V1_OPRFResponse: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Serialized output of OPRF.
  public var evaluatedElement: Data = Data()

  /// Proof of OPRF evaluation.
  public var proof: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "apple.swift_homomorphic_encryption.api.pir.v1"

extension Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PIRShardConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "num_entries"),
    2: .standard(proto: "entry_size"),
    3: .same(proto: "dimensions"),
    4: .standard(proto: "shard_id"),
    5: .standard(proto: "compress_vectorized_pir_response"),
    6: .standard(proto: "vectorized_pir_internal_batching_size"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.numEntries) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.entrySize) }()
      case 3: try { try decoder.decodeRepeatedUInt64Field(value: &self.dimensions) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self._shardID) }()
      case 5: try { try decoder.decodeSingularBoolField(value: &self._compressVectorizedPirResponse) }()
      case 6: try { try decoder.decodeSingularUInt64Field(value: &self._vectorizedPirInternalBatchingSize) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.numEntries != 0 {
      try visitor.visitSingularUInt64Field(value: self.numEntries, fieldNumber: 1)
    }
    if self.entrySize != 0 {
      try visitor.visitSingularUInt64Field(value: self.entrySize, fieldNumber: 2)
    }
    if !self.dimensions.isEmpty {
      try visitor.visitPackedUInt64Field(value: self.dimensions, fieldNumber: 3)
    }
    try { if let v = self._shardID {
      try visitor.visitSingularStringField(value: v, fieldNumber: 4)
    } }()
    try { if let v = self._compressVectorizedPirResponse {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 5)
    } }()
    try { if let v = self._vectorizedPirInternalBatchingSize {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 6)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfig, rhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfig) -> Bool {
    if lhs.numEntries != rhs.numEntries {return false}
    if lhs.entrySize != rhs.entrySize {return false}
    if lhs.dimensions != rhs.dimensions {return false}
    if lhs._shardID != rhs._shardID {return false}
    if lhs._compressVectorizedPirResponse != rhs._compressVectorizedPirResponse {return false}
    if lhs._vectorizedPirInternalBatchingSize != rhs._vectorizedPirInternalBatchingSize {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PIRConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "encryption_parameters"),
    2: .standard(proto: "shard_configs"),
    3: .standard(proto: "keyword_pir_params"),
    4: .same(proto: "algorithm"),
    5: .standard(proto: "batch_size"),
    6: .standard(proto: "evaluation_key_config_hash"),
    10: .standard(proto: "pir_shard_configs"),
  ]

  fileprivate class _StorageClass {
    var _encryptionParameters: HomomorphicEncryptionProtobuf.Apple_SwiftHomomorphicEncryption_V1_EncryptionParameters? = nil
    var _shardConfigs: [Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfig] = []
    var _keywordPirParams: Apple_SwiftHomomorphicEncryption_Pir_V1_KeywordPirParameters? = nil
    var _algorithm: Apple_SwiftHomomorphicEncryption_Pir_V1_PirAlgorithm = .aclsPir
    var _batchSize: UInt64 = 0
    var _evaluationKeyConfigHash: Data = Data()
    var _pirShardConfigs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfigs? = nil

    #if swift(>=5.10)
      // This property is used as the initial default value for new instances of the type.
      // The type itself is protecting the reference to its storage via CoW semantics.
      // This will force a copy to be made of this reference when the first mutation occurs;
      // hence, it is safe to mark this as `nonisolated(unsafe)`.
      static nonisolated(unsafe) let defaultInstance = _StorageClass()
    #else
      static let defaultInstance = _StorageClass()
    #endif

    private init() {}

    init(copying source: _StorageClass) {
      _encryptionParameters = source._encryptionParameters
      _shardConfigs = source._shardConfigs
      _keywordPirParams = source._keywordPirParams
      _algorithm = source._algorithm
      _batchSize = source._batchSize
      _evaluationKeyConfigHash = source._evaluationKeyConfigHash
      _pirShardConfigs = source._pirShardConfigs
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._encryptionParameters) }()
        case 2: try { try decoder.decodeRepeatedMessageField(value: &_storage._shardConfigs) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._keywordPirParams) }()
        case 4: try { try decoder.decodeSingularEnumField(value: &_storage._algorithm) }()
        case 5: try { try decoder.decodeSingularUInt64Field(value: &_storage._batchSize) }()
        case 6: try { try decoder.decodeSingularBytesField(value: &_storage._evaluationKeyConfigHash) }()
        case 10: try { try decoder.decodeSingularMessageField(value: &_storage._pirShardConfigs) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      try { if let v = _storage._encryptionParameters {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      } }()
      if !_storage._shardConfigs.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._shardConfigs, fieldNumber: 2)
      }
      try { if let v = _storage._keywordPirParams {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      } }()
      if _storage._algorithm != .aclsPir {
        try visitor.visitSingularEnumField(value: _storage._algorithm, fieldNumber: 4)
      }
      if _storage._batchSize != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._batchSize, fieldNumber: 5)
      }
      if !_storage._evaluationKeyConfigHash.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._evaluationKeyConfigHash, fieldNumber: 6)
      }
      try { if let v = _storage._pirShardConfigs {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      } }()
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRConfig, rhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRConfig) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._encryptionParameters != rhs_storage._encryptionParameters {return false}
        if _storage._shardConfigs != rhs_storage._shardConfigs {return false}
        if _storage._keywordPirParams != rhs_storage._keywordPirParams {return false}
        if _storage._algorithm != rhs_storage._algorithm {return false}
        if _storage._batchSize != rhs_storage._batchSize {return false}
        if _storage._evaluationKeyConfigHash != rhs_storage._evaluationKeyConfigHash {return false}
        if _storage._pirShardConfigs != rhs_storage._pirShardConfigs {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfigs: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PIRShardConfigs"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "repeated_shard_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRFixedShardConfig?
        var hadOneofValue = false
        if let current = self.shardConfigs {
          hadOneofValue = true
          if case .repeatedShardConfig(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.shardConfigs = .repeatedShardConfig(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if case .repeatedShardConfig(let v)? = self.shardConfigs {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfigs, rhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRShardConfigs) -> Bool {
    if lhs.shardConfigs != rhs.shardConfigs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRFixedShardConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PIRFixedShardConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "shard_config"),
    2: .standard(proto: "shard_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._shardConfig) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self.shardCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._shardConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if self.shardCount != 0 {
      try visitor.visitSingularUInt32Field(value: self.shardCount, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRFixedShardConfig, rhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRFixedShardConfig) -> Bool {
    if lhs._shardConfig != rhs._shardConfig {return false}
    if lhs.shardCount != rhs.shardCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PIRRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "shard_index"),
    2: .same(proto: "query"),
    3: .standard(proto: "evaluation_key_metadata"),
    4: .standard(proto: "configuration_hash"),
    5: .standard(proto: "shard_id"),
    6: .standard(proto: "evaluation_key"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.shardIndex) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._query) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._evaluationKeyMetadata) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.configurationHash) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self._shardID) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._evaluationKey) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.shardIndex != 0 {
      try visitor.visitSingularUInt32Field(value: self.shardIndex, fieldNumber: 1)
    }
    try { if let v = self._query {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._evaluationKeyMetadata {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    if !self.configurationHash.isEmpty {
      try visitor.visitSingularBytesField(value: self.configurationHash, fieldNumber: 4)
    }
    try { if let v = self._shardID {
      try visitor.visitSingularStringField(value: v, fieldNumber: 5)
    } }()
    try { if let v = self._evaluationKey {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRRequest, rhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRRequest) -> Bool {
    if lhs.shardIndex != rhs.shardIndex {return false}
    if lhs._query != rhs._query {return false}
    if lhs._evaluationKeyMetadata != rhs._evaluationKeyMetadata {return false}
    if lhs.configurationHash != rhs.configurationHash {return false}
    if lhs._shardID != rhs._shardID {return false}
    if lhs._evaluationKey != rhs._evaluationKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PIRResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "replies"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.replies) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.replies.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.replies, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRResponse, rhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_PIRResponse) -> Bool {
    if lhs.replies != rhs.replies {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apple_SwiftHomomorphicEncryption_Api_Pir_V1_OPRFRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OPRFRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "query_element"),
    2: .standard(proto: "config_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.queryElement) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.configID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.queryElement.isEmpty {
      try visitor.visitSingularBytesField(value: self.queryElement, fieldNumber: 1)
    }
    if !self.configID.isEmpty {
      try visitor.visitSingularBytesField(value: self.configID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_OPRFRequest, rhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_OPRFRequest) -> Bool {
    if lhs.queryElement != rhs.queryElement {return false}
    if lhs.configID != rhs.configID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apple_SwiftHomomorphicEncryption_Api_Pir_V1_OPRFResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OPRFResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "evaluated_element"),
    2: .same(proto: "proof"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.evaluatedElement) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.proof) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.evaluatedElement.isEmpty {
      try visitor.visitSingularBytesField(value: self.evaluatedElement, fieldNumber: 1)
    }
    if !self.proof.isEmpty {
      try visitor.visitSingularBytesField(value: self.proof, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_OPRFResponse, rhs: Apple_SwiftHomomorphicEncryption_Api_Pir_V1_OPRFResponse) -> Bool {
    if lhs.evaluatedElement != rhs.evaluatedElement {return false}
    if lhs.proof != rhs.proof {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
