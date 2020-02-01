//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: yandex/cloud/ai/stt/v2/stt_service.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
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
//
import Dispatch
import Foundation
import SwiftGRPC
import SwiftProtobuf

public protocol Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeCall: ClientCallUnary {}

fileprivate final class Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeCallBase: ClientCallUnaryBase<Yandex_Cloud_Ai_Stt_V2_LongRunningRecognitionRequest, Yandex_Cloud_Operation_Operation>, Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeCall {
  override class var method: String { return "/yandex.cloud.ai.stt.v2.SttService/LongRunningRecognize" }
}

public protocol Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeCall: ClientCallBidirectionalStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionResponse?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionResponse?>) -> Void) throws

  /// Send a message to the stream. Nonblocking.
  func send(_ message: Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionRequest, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionRequest, timeout: DispatchTime) throws

  /// Call this to close the sending connection. Blocking.
  func closeSend() throws
  /// Call this to close the sending connection. Nonblocking.
  func closeSend(completion: (() -> Void)?) throws
}

public extension Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionResponse? { return try self._receive(timeout: timeout) }
}

public extension Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeCall {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionRequest, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeCallBase: ClientCallBidirectionalStreamingBase<Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionRequest, Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionResponse>, Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeCall {
  override class var method: String { return "/yandex.cloud.ai.stt.v2.SttService/StreamingRecognize" }
}


/// Instantiate Yandex_Cloud_Ai_Stt_V2_SttServiceServiceClient, then call methods of this protocol to make API calls.
public protocol Yandex_Cloud_Ai_Stt_V2_SttServiceService: ServiceClient {
  /// Synchronous. Unary.
  func longRunningRecognize(_ request: Yandex_Cloud_Ai_Stt_V2_LongRunningRecognitionRequest, metadata customMetadata: Metadata) throws -> Yandex_Cloud_Operation_Operation
  /// Asynchronous. Unary.
  @discardableResult
  func longRunningRecognize(_ request: Yandex_Cloud_Ai_Stt_V2_LongRunningRecognitionRequest, metadata customMetadata: Metadata, completion: @escaping (Yandex_Cloud_Operation_Operation?, CallResult) -> Void) throws -> Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeCall

  /// Asynchronous. Bidirectional-streaming.
  /// Use methods on the returned object to stream messages,
  /// to wait for replies, and to close the connection.
  func streamingRecognize(metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeCall

}

public extension Yandex_Cloud_Ai_Stt_V2_SttServiceService {
  /// Synchronous. Unary.
  func longRunningRecognize(_ request: Yandex_Cloud_Ai_Stt_V2_LongRunningRecognitionRequest) throws -> Yandex_Cloud_Operation_Operation {
    return try self.longRunningRecognize(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func longRunningRecognize(_ request: Yandex_Cloud_Ai_Stt_V2_LongRunningRecognitionRequest, completion: @escaping (Yandex_Cloud_Operation_Operation?, CallResult) -> Void) throws -> Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeCall {
    return try self.longRunningRecognize(request, metadata: self.metadata, completion: completion)
  }

  /// Asynchronous. Bidirectional-streaming.
  func streamingRecognize(completion: ((CallResult) -> Void)?) throws -> Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeCall {
    return try self.streamingRecognize(metadata: self.metadata, completion: completion)
  }

}

public final class Yandex_Cloud_Ai_Stt_V2_SttServiceServiceClient: ServiceClientBase, Yandex_Cloud_Ai_Stt_V2_SttServiceService {
  /// Synchronous. Unary.
  public func longRunningRecognize(_ request: Yandex_Cloud_Ai_Stt_V2_LongRunningRecognitionRequest, metadata customMetadata: Metadata) throws -> Yandex_Cloud_Operation_Operation {
    return try Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  public func longRunningRecognize(_ request: Yandex_Cloud_Ai_Stt_V2_LongRunningRecognitionRequest, metadata customMetadata: Metadata, completion: @escaping (Yandex_Cloud_Operation_Operation?, CallResult) -> Void) throws -> Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeCall {
    return try Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Asynchronous. Bidirectional-streaming.
  /// Use methods on the returned object to stream messages,
  /// to wait for replies, and to close the connection.
  public func streamingRecognize(metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeCall {
    return try Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeCallBase(channel)
      .start(metadata: customMetadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
public protocol Yandex_Cloud_Ai_Stt_V2_SttServiceProvider: ServiceProvider {
  func longRunningRecognize(request: Yandex_Cloud_Ai_Stt_V2_LongRunningRecognitionRequest, session: Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeSession) throws -> Yandex_Cloud_Operation_Operation
  func streamingRecognize(session: Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeSession) throws -> ServerStatus?
}

extension Yandex_Cloud_Ai_Stt_V2_SttServiceProvider {
  public var serviceName: String { return "yandex.cloud.ai.stt.v2.SttService" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  public func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/yandex.cloud.ai.stt.v2.SttService/LongRunningRecognize":
      return try Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeSessionBase(
        handler: handler,
        providerBlock: { try self.longRunningRecognize(request: $0, session: $1 as! Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeSessionBase) })
          .run()
    case "/yandex.cloud.ai.stt.v2.SttService/StreamingRecognize":
      return try Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeSessionBase(
        handler: handler,
        providerBlock: { try self.streamingRecognize(session: $0 as! Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

public protocol Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeSession: ServerSessionUnary {}

fileprivate final class Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeSessionBase: ServerSessionUnaryBase<Yandex_Cloud_Ai_Stt_V2_LongRunningRecognitionRequest, Yandex_Cloud_Operation_Operation>, Yandex_Cloud_Ai_Stt_V2_SttServiceLongRunningRecognizeSession {}

public protocol Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeSession: ServerSessionBidirectionalStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionRequest?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionRequest?>) -> Void) throws

  /// Send a message to the stream. Nonblocking.
  func send(_ message: Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionResponse, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionResponse, timeout: DispatchTime) throws

  /// Close the connection and send the status. Non-blocking.
  /// This method should be called if and only if your request handler returns a nil value instead of a server status;
  /// otherwise SwiftGRPC will take care of sending the status for you.
  func close(withStatus status: ServerStatus, completion: (() -> Void)?) throws
}

public extension Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeSession {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionRequest? { return try self._receive(timeout: timeout) }
}

public extension Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeSession {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionResponse, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeSessionBase: ServerSessionBidirectionalStreamingBase<Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionRequest, Yandex_Cloud_Ai_Stt_V2_StreamingRecognitionResponse>, Yandex_Cloud_Ai_Stt_V2_SttServiceStreamingRecognizeSession {}

