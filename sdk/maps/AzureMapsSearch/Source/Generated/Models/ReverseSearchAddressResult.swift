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

/// This object is returned from a successful Search Address Reverse call
public struct ReverseSearchAddressResult: Codable {
    // MARK: Properties

    /// Summary object for a Search Address Reverse response
    public let summary: SearchSummary?
    /// Addresses array
    public let addresses: [ReverseSearchAddressResultItem]?

    // MARK: Initializers

    /// Initialize a `ReverseSearchAddressResult` structure.
    /// - Parameters:
    ///   - summary: Summary object for a Search Address Reverse response
    ///   - addresses: Addresses array
    public init(
        summary: SearchSummary? = nil, addresses: [ReverseSearchAddressResultItem]? = nil
    ) {
        self.summary = summary
        self.addresses = addresses
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case summary = "summary"
        case addresses = "addresses"
    }

    /// Initialize a `ReverseSearchAddressResult` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.summary = try? container.decode(SearchSummary.self, forKey: .summary)
        self.addresses = try? container.decode([ReverseSearchAddressResultItem].self, forKey: .addresses)
    }

    /// Encode a `ReverseSearchAddressResult` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if summary != nil { try? container.encode(summary, forKey: .summary) }
        if addresses != nil { try? container.encode(addresses, forKey: .addresses) }
    }
}
