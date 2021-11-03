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

/// This object is returned from a successful Batch service call. Extend with 'batchItems' property.
public struct BatchResult: Codable {
    // MARK: Properties

    /// Summary of the results for the batch request
    public let batchSummary: BatchSummary?

    // MARK: Initializers

    /// Initialize a `BatchResult` structure.
    /// - Parameters:
    ///   - batchSummary: Summary of the results for the batch request
    public init(
        batchSummary: BatchSummary? = nil
    ) {
        self.batchSummary = batchSummary
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case batchSummary = "summary"
    }

    /// Initialize a `BatchResult` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.batchSummary = try? container.decode(BatchSummary.self, forKey: .batchSummary)
    }

    /// Encode a `BatchResult` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if batchSummary != nil { try? container.encode(batchSummary, forKey: .batchSummary) }
    }
}
