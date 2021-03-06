// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: syft_proto/messaging/v1/message.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct SyftProto_Messaging_V1_SyftMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var contents: SyftProto_Messaging_V1_SyftMessage.OneOf_Contents? = nil

  var contentsEmptyMsg: SwiftProtobuf.Google_Protobuf_Empty {
    get {
      if case .contentsEmptyMsg(let v)? = contents {return v}
      return SwiftProtobuf.Google_Protobuf_Empty()
    }
    set {contents = .contentsEmptyMsg(newValue)}
  }

  /// ForceObjectDeleteMessage contents_delete_msg = 2;
  /// GetShapeMessage contents_get_shape_msg = 3;
  /// IsNoneMessage contents_is_none_msg = 4;
  var contentsObjectMsg: SyftProto_Messaging_V1_ObjectMessage {
    get {
      if case .contentsObjectMsg(let v)? = contents {return v}
      return SyftProto_Messaging_V1_ObjectMessage()
    }
    set {contents = .contentsObjectMsg(newValue)}
  }

  /// ObjectRequestMessage contents_object_request_msg = 6;
  var contentsTensorCmdMsg: SyftProto_Messaging_V1_TensorCommandMessage {
    get {
      if case .contentsTensorCmdMsg(let v)? = contents {return v}
      return SyftProto_Messaging_V1_TensorCommandMessage()
    }
    set {contents = .contentsTensorCmdMsg(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Contents: Equatable {
    case contentsEmptyMsg(SwiftProtobuf.Google_Protobuf_Empty)
    /// ForceObjectDeleteMessage contents_delete_msg = 2;
    /// GetShapeMessage contents_get_shape_msg = 3;
    /// IsNoneMessage contents_is_none_msg = 4;
    case contentsObjectMsg(SyftProto_Messaging_V1_ObjectMessage)
    /// ObjectRequestMessage contents_object_request_msg = 6;
    case contentsTensorCmdMsg(SyftProto_Messaging_V1_TensorCommandMessage)

  #if !swift(>=4.1)
    static func ==(lhs: SyftProto_Messaging_V1_SyftMessage.OneOf_Contents, rhs: SyftProto_Messaging_V1_SyftMessage.OneOf_Contents) -> Bool {
      switch (lhs, rhs) {
      case (.contentsEmptyMsg(let l), .contentsEmptyMsg(let r)): return l == r
      case (.contentsObjectMsg(let l), .contentsObjectMsg(let r)): return l == r
      case (.contentsTensorCmdMsg(let l), .contentsTensorCmdMsg(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  init() {}
}

struct SyftProto_Messaging_V1_ObjectMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var tensor: SyftProto_Types_Torch_V1_TorchTensor {
    get {return _tensor ?? SyftProto_Types_Torch_V1_TorchTensor()}
    set {_tensor = newValue}
  }
  /// Returns true if `tensor` has been explicitly set.
  var hasTensor: Bool {return self._tensor != nil}
  /// Clears the value of `tensor`. Subsequent reads from it will return its default value.
  mutating func clearTensor() {self._tensor = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _tensor: SyftProto_Types_Torch_V1_TorchTensor? = nil
}

struct SyftProto_Messaging_V1_TensorCommandMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var action: SyftProto_Messaging_V1_TensorCommandMessage.OneOf_Action? = nil

  var computation: SyftProto_Execution_V1_ComputationAction {
    get {
      if case .computation(let v)? = action {return v}
      return SyftProto_Execution_V1_ComputationAction()
    }
    set {action = .computation(newValue)}
  }

  var communication: SyftProto_Execution_V1_CommunicationAction {
    get {
      if case .communication(let v)? = action {return v}
      return SyftProto_Execution_V1_CommunicationAction()
    }
    set {action = .communication(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Action: Equatable {
    case computation(SyftProto_Execution_V1_ComputationAction)
    case communication(SyftProto_Execution_V1_CommunicationAction)

  #if !swift(>=4.1)
    static func ==(lhs: SyftProto_Messaging_V1_TensorCommandMessage.OneOf_Action, rhs: SyftProto_Messaging_V1_TensorCommandMessage.OneOf_Action) -> Bool {
      switch (lhs, rhs) {
      case (.computation(let l), .computation(let r)): return l == r
      case (.communication(let l), .communication(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "syft_proto.messaging.v1"

extension SyftProto_Messaging_V1_SyftMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SyftMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "contents_empty_msg"),
    5: .standard(proto: "contents_object_msg"),
    7: .standard(proto: "contents_tensor_cmd_msg"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        var v: SwiftProtobuf.Google_Protobuf_Empty?
        if let current = self.contents {
          try decoder.handleConflictingOneOf()
          if case .contentsEmptyMsg(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.contents = .contentsEmptyMsg(v)}
      case 5:
        var v: SyftProto_Messaging_V1_ObjectMessage?
        if let current = self.contents {
          try decoder.handleConflictingOneOf()
          if case .contentsObjectMsg(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.contents = .contentsObjectMsg(v)}
      case 7:
        var v: SyftProto_Messaging_V1_TensorCommandMessage?
        if let current = self.contents {
          try decoder.handleConflictingOneOf()
          if case .contentsTensorCmdMsg(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.contents = .contentsTensorCmdMsg(v)}
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self.contents {
    case .contentsEmptyMsg(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    case .contentsObjectMsg(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    case .contentsTensorCmdMsg(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SyftProto_Messaging_V1_SyftMessage, rhs: SyftProto_Messaging_V1_SyftMessage) -> Bool {
    if lhs.contents != rhs.contents {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SyftProto_Messaging_V1_ObjectMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ObjectMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tensor"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._tensor)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._tensor {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SyftProto_Messaging_V1_ObjectMessage, rhs: SyftProto_Messaging_V1_ObjectMessage) -> Bool {
    if lhs._tensor != rhs._tensor {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SyftProto_Messaging_V1_TensorCommandMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TensorCommandMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "computation"),
    2: .same(proto: "communication"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        var v: SyftProto_Execution_V1_ComputationAction?
        if let current = self.action {
          try decoder.handleConflictingOneOf()
          if case .computation(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.action = .computation(v)}
      case 2:
        var v: SyftProto_Execution_V1_CommunicationAction?
        if let current = self.action {
          try decoder.handleConflictingOneOf()
          if case .communication(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.action = .communication(v)}
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self.action {
    case .computation(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    case .communication(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SyftProto_Messaging_V1_TensorCommandMessage, rhs: SyftProto_Messaging_V1_TensorCommandMessage) -> Bool {
    if lhs.action != rhs.action {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
