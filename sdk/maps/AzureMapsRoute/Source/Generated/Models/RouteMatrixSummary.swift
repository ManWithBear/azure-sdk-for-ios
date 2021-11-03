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

/// Summary object
public struct RouteMatrixSummary: Codable {
    // MARK: Properties

    /// Number of successful routes in the response.
    public let successfulRoutes: Int32?
    /// Total number of routes requested. Number of cells in the input matrix.
    public let totalRoutes: Int32?

    // MARK: Initializers

    /// Initialize a `RouteMatrixSummary` structure.
    /// - Parameters:
    ///   - successfulRoutes: Number of successful routes in the response.
    ///   - totalRoutes: Total number of routes requested. Number of cells in the input matrix.
    public init(
        successfulRoutes: Int32? = nil, totalRoutes: Int32? = nil
    ) {
        self.successfulRoutes = successfulRoutes
        self.totalRoutes = totalRoutes
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case successfulRoutes = "successfulRoutes"
        case totalRoutes = "totalRoutes"
    }

    /// Initialize a `RouteMatrixSummary` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.successfulRoutes = try? container.decode(Int32.self, forKey: .successfulRoutes)
        self.totalRoutes = try? container.decode(Int32.self, forKey: .totalRoutes)
    }

    /// Encode a `RouteMatrixSummary` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if successfulRoutes != nil { try? container.encode(successfulRoutes, forKey: .successfulRoutes) }
        if totalRoutes != nil { try? container.encode(totalRoutes, forKey: .totalRoutes) }
    }
}
