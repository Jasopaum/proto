// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: syft_proto/execution/v1/placeholder.proto
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

public struct SyftProto_Execution_V1_Placeholder {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var child: SyftProto_Execution_V1_Placeholder.OneOf_Child? = nil

  public var childTensor: SyftProto_Types_Torch_V1_TorchTensor {
    get {
      if case .childTensor(let v)? = child {return v}
      return SyftProto_Types_Torch_V1_TorchTensor()
    }
    set {child = .childTensor(newValue)}
  }

  public var childParameter: SyftProto_Types_Torch_V1_Parameter {
    get {
      if case .childParameter(let v)? = child {return v}
      return SyftProto_Types_Torch_V1_Parameter()
    }
    set {child = .childParameter(newValue)}
  }

  public var id: SyftProto_Types_Syft_V1_Id {
    get {return _id ?? SyftProto_Types_Syft_V1_Id()}
    set {_id = newValue}
  }
  /// Returns true if `id` has been explicitly set.
  public var hasID: Bool {return self._id != nil}
  /// Clears the value of `id`. Subsequent reads from it will return its default value.
  public mutating func clearID() {self._id = nil}

  public var tags: [String] = []

  public var description_p: String = String()

  public var expectedShape: SyftProto_Types_Syft_V1_Shape {
    get {return _expectedShape ?? SyftProto_Types_Syft_V1_Shape()}
    set {_expectedShape = newValue}
  }
  /// Returns true if `expectedShape` has been explicitly set.
  public var hasExpectedShape: Bool {return self._expectedShape != nil}
  /// Clears the value of `expectedShape`. Subsequent reads from it will return its default value.
  public mutating func clearExpectedShape() {self._expectedShape = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Child: Equatable {
    case childTensor(SyftProto_Types_Torch_V1_TorchTensor)
    case childParameter(SyftProto_Types_Torch_V1_Parameter)

  #if !swift(>=4.1)
    public static func ==(lhs: SyftProto_Execution_V1_Placeholder.OneOf_Child, rhs: SyftProto_Execution_V1_Placeholder.OneOf_Child) -> Bool {
      switch (lhs, rhs) {
      case (.childTensor(let l), .childTensor(let r)): return l == r
      case (.childParameter(let l), .childParameter(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _id: SyftProto_Types_Syft_V1_Id? = nil
  fileprivate var _expectedShape: SyftProto_Types_Syft_V1_Shape? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "syft_proto.execution.v1"

extension SyftProto_Execution_V1_Placeholder: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Placeholder"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "child_tensor"),
    2: .standard(proto: "child_parameter"),
    3: .same(proto: "id"),
    4: .same(proto: "tags"),
    5: .same(proto: "description"),
    6: .standard(proto: "expected_shape"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        var v: SyftProto_Types_Torch_V1_TorchTensor?
        if let current = self.child {
          try decoder.handleConflictingOneOf()
          if case .childTensor(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.child = .childTensor(v)}
      case 2:
        var v: SyftProto_Types_Torch_V1_Parameter?
        if let current = self.child {
          try decoder.handleConflictingOneOf()
          if case .childParameter(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.child = .childParameter(v)}
      case 3: try decoder.decodeSingularMessageField(value: &self._id)
      case 4: try decoder.decodeRepeatedStringField(value: &self.tags)
      case 5: try decoder.decodeSingularStringField(value: &self.description_p)
      case 6: try decoder.decodeSingularMessageField(value: &self._expectedShape)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self.child {
    case .childTensor(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    case .childParameter(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    case nil: break
    }
    if let v = self._id {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.tags.isEmpty {
      try visitor.visitRepeatedStringField(value: self.tags, fieldNumber: 4)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 5)
    }
    if let v = self._expectedShape {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: SyftProto_Execution_V1_Placeholder, rhs: SyftProto_Execution_V1_Placeholder) -> Bool {
    if lhs.child != rhs.child {return false}
    if lhs._id != rhs._id {return false}
    if lhs.tags != rhs.tags {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs._expectedShape != rhs._expectedShape {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
