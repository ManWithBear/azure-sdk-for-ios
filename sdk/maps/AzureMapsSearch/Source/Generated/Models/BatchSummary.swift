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

/// Summary of the results for the batch request
public struct BatchSummary: Codable {
    // MARK: Properties

    /// Number of successful requests in the batch
    public let successfulRequests: Int32?
    /// Total number of requests in the batch
    public let totalRequests: Int32?

    // MARK: Initializers

    /// Initialize a `BatchSummary` structure.
    /// - Parameters:
    ///   - successfulRequests: Number of successful requests in the batch
    ///   - totalRequests: Total number of requests in the batch
    public init(
        successfulRequests: Int32? = nil, totalRequests: Int32? = nil
    ) {
        self.successfulRequests = successfulRequests
        self.totalRequests = totalRequests
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case successfulRequests = "successfulRequests"
        case totalRequests = "totalRequests"
    }

    /// Initialize a `BatchSummary` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.successfulRequests = try? container.decode(Int32.self, forKey: .successfulRequests)
        self.totalRequests = try? container.decode(Int32.self, forKey: .totalRequests)
    }

    /// Encode a `BatchSummary` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if successfulRequests != nil { try? container.encode(successfulRequests, forKey: .successfulRequests) }
        if totalRequests != nil { try? container.encode(totalRequests, forKey: .totalRequests) }
    }
}
