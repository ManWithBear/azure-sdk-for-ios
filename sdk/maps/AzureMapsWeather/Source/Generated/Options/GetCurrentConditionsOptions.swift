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

/// User-configurable options for the `GetCurrentConditions` operation.
public struct GetCurrentConditionsOptions: RequestOptions {
    /// Specifies to return the data in either metric units or imperial units. Default value is metric.
    public let unit: WeatherDataUnit?
    /// Return full details for the current conditions. Available values are
    ///   * `true` - Returns full details. By default all details are returned.
    ///   * `false` - Returns a truncated version of the current condition data, which includes observation date time, weather phrase, icon code, precipitation indicator flag, and temperature.
    public let details: String?
    /// Time frame of the returned weather conditions. By default, the most current weather conditions will be returned. Default value is 0. Supported values are:
    ///    * `0` - Return the most current weather conditions.
    ///    * `6` - Return weather conditions from past 6 hours.
    ///    * `24` - Return weather conditions from past 24 hours.
    public let duration: Int32?
    /// Language in which search results should be returned. Should be one of supported IETF language tags, case insensitive. When data in specified language is not available for a specific field, default language is used.
    /// Please refer to [Supported Languages](https://docs.microsoft.com/azure/azure-maps/supported-languages) for details.
    public let language: String?

    /// A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    /// Highly recommended for correlating client-side activites with requests received by the server.
    public let clientRequestId: String?

    /// A token used to make a best-effort attempt at canceling a request.
    public let cancellationToken: CancellationToken?

    /// A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    public var dispatchQueue: DispatchQueue?

    /// A `PipelineContext` object to associate with the request.
    public var context: PipelineContext?

    /// Initialize a `GetCurrentConditionsOptions` structure.
    /// - Parameters:
    ///   - unit: Specifies to return the data in either metric units or imperial units. Default value is metric.
    ///   - details: Return full details for the current conditions. Available values are
    ///   * `true` - Returns full details. By default all details are returned.
    ///   * `false` - Returns a truncated version of the current condition data, which includes observation date time, weather phrase, icon code, precipitation indicator flag, and temperature.
    ///   - duration: Time frame of the returned weather conditions. By default, the most current weather conditions will be returned. Default value is 0. Supported values are:
    ///    * `0` - Return the most current weather conditions.
    ///    * `6` - Return weather conditions from past 6 hours.
    ///    * `24` - Return weather conditions from past 24 hours.
    ///   - language: Language in which search results should be returned. Should be one of supported IETF language tags, case insensitive. When data in specified language is not available for a specific field, default language is used.
    /// Please refer to [Supported Languages](https://docs.microsoft.com/azure/azure-maps/supported-languages) for details.
    ///   - clientRequestId: A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    ///   - cancellationToken: A token used to make a best-effort attempt at canceling a request.
    ///   - dispatchQueue: A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    ///   - context: A `PipelineContext` object to associate with the request.
    public init(
        unit: WeatherDataUnit? = nil,
        details: String? = nil,
        duration: Int32? = nil,
        language: String? = nil,
        clientRequestId: String? = nil,
        cancellationToken: CancellationToken? = nil,
        dispatchQueue: DispatchQueue? = nil,
        context: PipelineContext? = nil
    ) {
        self.unit = unit
        self.details = details
        self.duration = duration
        self.language = language
        self.clientRequestId = clientRequestId
        self.cancellationToken = cancellationToken
        self.dispatchQueue = dispatchQueue
        self.context = context
    }
}
