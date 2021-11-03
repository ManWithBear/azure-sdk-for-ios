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

/// This object is returned from a successful Traffic Flow Segment call
public struct TrafficFlowSegmentData: Codable {
    // MARK: Properties

    /// Flow Segment Data property
    public let flowSegmentData: TrafficFlowSegmentDataFlowSegmentData?

    // MARK: Initializers

    /// Initialize a `TrafficFlowSegmentData` structure.
    /// - Parameters:
    ///   - flowSegmentData: Flow Segment Data property
    public init(
        flowSegmentData: TrafficFlowSegmentDataFlowSegmentData? = nil
    ) {
        self.flowSegmentData = flowSegmentData
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case flowSegmentData = "flowSegmentData"
    }

    /// Initialize a `TrafficFlowSegmentData` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.flowSegmentData = try? container.decode(
            TrafficFlowSegmentDataFlowSegmentData.self,
            forKey: .flowSegmentData
        )
    }

    /// Encode a `TrafficFlowSegmentData` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if flowSegmentData != nil { try? container.encode(flowSegmentData, forKey: .flowSegmentData) }
    }
}
