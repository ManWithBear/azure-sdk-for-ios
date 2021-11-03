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

/// User-configurable options for the `GetQuarterDayForecast` operation.
internal struct GetQuarterDayForecastOptions: RequestOptions {
    /// Specifies to return the data in either metric units or imperial units. Default value is metric.
    internal let unit: WeatherDataUnit?
    /// Specifies for how many days the quester-day forecast responses are returned. Supported values are:
    ///   * `1` - Return forecast data for the next day. Returned by default.
    ///   * `5` - Return forecast data for the next 5 days.
    ///   * `10` - Return forecast data for next 10 days.
    ///   * `15` - Return forecast data for the next 15 days.
    internal let duration: Int32?
    /// Language in which search results should be returned. Should be one of supported IETF language tags, case insensitive. When data in specified language is not available for a specific field, default language is used.
    /// Please refer to [Supported Languages](https://docs.microsoft.com/azure/azure-maps/supported-languages) for details.
    internal let language: String?

    /// A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    /// Highly recommended for correlating client-side activites with requests received by the server.
    internal let clientRequestId: String?

    /// A token used to make a best-effort attempt at canceling a request.
    internal let cancellationToken: CancellationToken?

    /// A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    internal var dispatchQueue: DispatchQueue?

    /// A `PipelineContext` object to associate with the request.
    internal var context: PipelineContext?

    /// Initialize a `GetQuarterDayForecastOptions` structure.
    /// - Parameters:
    ///   - unit: Specifies to return the data in either metric units or imperial units. Default value is metric.
    ///   - duration: Specifies for how many days the quester-day forecast responses are returned. Supported values are:
    ///   * `1` - Return forecast data for the next day. Returned by default.
    ///   * `5` - Return forecast data for the next 5 days.
    ///   * `10` - Return forecast data for next 10 days.
    ///   * `15` - Return forecast data for the next 15 days.
    ///   - language: Language in which search results should be returned. Should be one of supported IETF language tags, case insensitive. When data in specified language is not available for a specific field, default language is used.
    /// Please refer to [Supported Languages](https://docs.microsoft.com/azure/azure-maps/supported-languages) for details.
    ///   - clientRequestId: A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    ///   - cancellationToken: A token used to make a best-effort attempt at canceling a request.
    ///   - dispatchQueue: A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    ///   - context: A `PipelineContext` object to associate with the request.
    internal init(
        unit: WeatherDataUnit? = nil,
        duration: Int32? = nil,
        language: String? = nil,
        clientRequestId: String? = nil,
        cancellationToken: CancellationToken? = nil,
        dispatchQueue: DispatchQueue? = nil,
        context: PipelineContext? = nil
    ) {
        self.unit = unit
        self.duration = duration
        self.language = language
        self.clientRequestId = clientRequestId
        self.cancellationToken = cancellationToken
        self.dispatchQueue = dispatchQueue
        self.context = context
    }
}
