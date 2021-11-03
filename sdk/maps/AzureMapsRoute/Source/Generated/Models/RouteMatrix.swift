// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

/// Matrix result object
public struct RouteMatrix: Codable {
    // MARK: Properties

    /// StatusCode property for the current cell in the input matrix.
    public let statusCode: Int32?
    /// Response object of the current cell in the input matrix.
    public let response: RouteMatrixResultResponse?

    // MARK: Initializers

    /// Initialize a `RouteMatrix` structure.
    /// - Parameters:
    ///   - statusCode: StatusCode property for the current cell in the input matrix.
    ///   - response: Response object of the current cell in the input matrix.
    public init(
        statusCode: Int32? = nil, response: RouteMatrixResultResponse? = nil
    ) {
        self.statusCode = statusCode
        self.response = response
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case statusCode = "statusCode"
        case response = "response"
    }

    /// Initialize a `RouteMatrix` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.statusCode = try? container.decode(Int32.self, forKey: .statusCode)
        self.response = try? container.decode(RouteMatrixResultResponse.self, forKey: .response)
    }

    /// Encode a `RouteMatrix` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if statusCode != nil { try? container.encode(statusCode, forKey: .statusCode) }
        if response != nil { try? container.encode(response, forKey: .response) }
    }
}
