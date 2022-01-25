//
//  Copyright (c) 2022 Open Whisper Systems. All rights reserved.
//

// *
// Copyright (C) 2014-2016 Open Whisper Systems
//
// Licensed according to the LICENSE file in this repository.

/// iOS - since we use a modern proto-compiler, we must specify
/// the legacy proto format.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
private struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct IOSProtos_BackupSnapshot {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var entity: [IOSProtos_BackupSnapshot.BackupEntity] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct BackupEntity {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var type: IOSProtos_BackupSnapshot.BackupEntity.TypeEnum {
      get {return _type ?? .unknown}
      set {_type = newValue}
    }
    /// Returns true if `type` has been explicitly set.
    var hasType: Bool {return self._type != nil}
    /// Clears the value of `type`. Subsequent reads from it will return its default value.
    mutating func clearType() {self._type = nil}

    /// @required
    var entityData: Data {
      get {return _entityData ?? Data()}
      set {_entityData = newValue}
    }
    /// Returns true if `entityData` has been explicitly set.
    var hasEntityData: Bool {return self._entityData != nil}
    /// Clears the value of `entityData`. Subsequent reads from it will return its default value.
    mutating func clearEntityData() {self._entityData = nil}

    /// @required
    var collection: String {
      get {return _collection ?? String()}
      set {_collection = newValue}
    }
    /// Returns true if `collection` has been explicitly set.
    var hasCollection: Bool {return self._collection != nil}
    /// Clears the value of `collection`. Subsequent reads from it will return its default value.
    mutating func clearCollection() {self._collection = nil}

    /// @required
    var key: String {
      get {return _key ?? String()}
      set {_key = newValue}
    }
    /// Returns true if `key` has been explicitly set.
    var hasKey: Bool {return self._key != nil}
    /// Clears the value of `key`. Subsequent reads from it will return its default value.
    mutating func clearKey() {self._key = nil}

    var unknownFields = SwiftProtobuf.UnknownStorage()

    enum TypeEnum: SwiftProtobuf.Enum {
      typealias RawValue = Int
      case unknown // = 0
      case migration // = 1
      case thread // = 2
      case interaction // = 3
      case attachment // = 4
      case misc // = 5

      init() {
        self = .unknown
      }

      init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .unknown
        case 1: self = .migration
        case 2: self = .thread
        case 3: self = .interaction
        case 4: self = .attachment
        case 5: self = .misc
        default: return nil
        }
      }

      var rawValue: Int {
        switch self {
        case .unknown: return 0
        case .migration: return 1
        case .thread: return 2
        case .interaction: return 3
        case .attachment: return 4
        case .misc: return 5
        }
      }

    }

    init() {}

    fileprivate var _type: IOSProtos_BackupSnapshot.BackupEntity.TypeEnum?
    fileprivate var _entityData: Data?
    fileprivate var _collection: String?
    fileprivate var _key: String?
  }

  init() {}
}

#if swift(>=4.2)

extension IOSProtos_BackupSnapshot.BackupEntity.TypeEnum: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

struct IOSProtos_DeviceName {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// @required
  var ephemeralPublic: Data {
    get {return _ephemeralPublic ?? Data()}
    set {_ephemeralPublic = newValue}
  }
  /// Returns true if `ephemeralPublic` has been explicitly set.
  var hasEphemeralPublic: Bool {return self._ephemeralPublic != nil}
  /// Clears the value of `ephemeralPublic`. Subsequent reads from it will return its default value.
  mutating func clearEphemeralPublic() {self._ephemeralPublic = nil}

  /// @required
  var syntheticIv: Data {
    get {return _syntheticIv ?? Data()}
    set {_syntheticIv = newValue}
  }
  /// Returns true if `syntheticIv` has been explicitly set.
  var hasSyntheticIv: Bool {return self._syntheticIv != nil}
  /// Clears the value of `syntheticIv`. Subsequent reads from it will return its default value.
  mutating func clearSyntheticIv() {self._syntheticIv = nil}

  /// @required
  var ciphertext: Data {
    get {return _ciphertext ?? Data()}
    set {_ciphertext = newValue}
  }
  /// Returns true if `ciphertext` has been explicitly set.
  var hasCiphertext: Bool {return self._ciphertext != nil}
  /// Clears the value of `ciphertext`. Subsequent reads from it will return its default value.
  mutating func clearCiphertext() {self._ciphertext = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _ephemeralPublic: Data?
  fileprivate var _syntheticIv: Data?
  fileprivate var _ciphertext: Data?
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "IOSProtos"

extension IOSProtos_BackupSnapshot: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BackupSnapshot"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "entity")
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.entity) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.entity.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.entity, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: IOSProtos_BackupSnapshot, rhs: IOSProtos_BackupSnapshot) -> Bool {
    if lhs.entity != rhs.entity {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IOSProtos_BackupSnapshot.BackupEntity: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = IOSProtos_BackupSnapshot.protoMessageName + ".BackupEntity"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "entityData"),
    3: .same(proto: "collection"),
    4: .same(proto: "key")
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._type) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self._entityData) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self._collection) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self._key) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._type {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._entityData {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._collection {
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._key {
      try visitor.visitSingularStringField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: IOSProtos_BackupSnapshot.BackupEntity, rhs: IOSProtos_BackupSnapshot.BackupEntity) -> Bool {
    if lhs._type != rhs._type {return false}
    if lhs._entityData != rhs._entityData {return false}
    if lhs._collection != rhs._collection {return false}
    if lhs._key != rhs._key {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IOSProtos_BackupSnapshot.BackupEntity.TypeEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "MIGRATION"),
    2: .same(proto: "THREAD"),
    3: .same(proto: "INTERACTION"),
    4: .same(proto: "ATTACHMENT"),
    5: .same(proto: "MISC")
  ]
}

extension IOSProtos_DeviceName: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DeviceName"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "ephemeralPublic"),
    2: .same(proto: "syntheticIv"),
    3: .same(proto: "ciphertext")
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self._ephemeralPublic) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self._syntheticIv) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self._ciphertext) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._ephemeralPublic {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._syntheticIv {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._ciphertext {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: IOSProtos_DeviceName, rhs: IOSProtos_DeviceName) -> Bool {
    if lhs._ephemeralPublic != rhs._ephemeralPublic {return false}
    if lhs._syntheticIv != rhs._syntheticIv {return false}
    if lhs._ciphertext != rhs._ciphertext {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
