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

/// User-configurable options for the `GetRouteDirectionsWithAdditionalParameters` operation.
internal struct GetRouteDirectionsWithAdditionalParametersOptions: RequestOptions {
    /// Number of desired alternative routes to be calculated. Default: 0, minimum: 0 and maximum: 5
    internal let maxAlternatives: Int32?
    /// Controls the optimality, with respect to the given planning criteria, of the calculated alternatives compared to the reference route.
    internal let alternativeType: AlternativeRouteType?
    /// All alternative routes returned will follow the reference route (see section POST Requests) from the origin point of the calculateRoute request for at least this number of meters. Can only be used when reconstructing a route. The minDeviationDistance parameter cannot be used in conjunction with arriveAt
    internal let minDeviationDistance: Int32?
    /// All alternative routes returned will follow the reference route (see section POST Requests) from the origin point of the calculateRoute request for at least this number of seconds. Can only be used when reconstructing a route. The minDeviationTime parameter cannot be used in conjunction with arriveAt. Default value is 0. Setting )minDeviationTime_ to a value greater than zero has the following consequences:
    ///   - The origin point of the _calculateRoute_ Request must be on
    ///     (or very near) the input reference route.
    ///     - If this is not the case, an error is returned.
    ///     - However, the origin point does not need to be at the beginning
    ///       of the input reference route (it can be thought of as the current
    ///       vehicle position on the reference route).
    ///   - The reference route, returned as the first route in the _calculateRoute_
    ///     Response, will start at the origin point specified in the _calculateRoute_
    ///     Request. The initial part of the input reference route up until the origin
    ///     point will be excluded from the Response.
    ///   - The values of _minDeviationDistance_ and _minDeviationTime_ determine
    ///     how far alternative routes will be guaranteed to follow the reference
    ///     route from the origin point onwards.
    ///   - The route must use _departAt_.
    ///   - The _vehicleHeading_ is ignored.
    internal let minDeviationTime: Int32?
    /// If specified, guidance instructions will be returned. Note that the instructionsType parameter cannot be used in conjunction with routeRepresentation=none
    internal let instructionsType: RouteInstructionsType?
    /// The language parameter determines the language of the guidance messages. It does not affect proper nouns (the names of streets, plazas, etc.) It has no effect when instructionsType=coded. Allowed values are (a subset of) the IETF language tags described
    internal let language: String?
    /// Re-order the route waypoints using a fast heuristic algorithm to reduce the route length. Yields best results when used in conjunction with routeType _shortest_. Notice that origin and destination are excluded from the optimized waypoint indices. To include origin and destination in the response, please increase all the indices by 1 to account for the origin, and then add the destination as the final index. Possible values are true or false. True computes a better order if possible, but is not allowed to be used in conjunction with maxAlternatives value greater than 0 or in conjunction with circle waypoints. False will use the locations in the given order and not allowed to be used in conjunction with routeRepresentation _none_.
    internal let computeBestWaypointOrder: Bool?
    /// Specifies the representation of the set of routes provided as response. This parameter value can only be used in conjunction with computeBestOrder=true.
    internal let routeRepresentationForBestOrder: RouteRepresentationForBestOrder?
    /// Specifies whether to return additional travel times using different types of traffic information (none, historic, live) as well as the default best-estimate travel time.
    internal let computeTravelTime: ComputeTravelTime?
    /// The directional heading of the vehicle in degrees starting at true North and continuing in clockwise direction. North is 0 degrees, east is 90 degrees, south is 180 degrees, west is 270 degrees. Possible values 0-359
    internal let vehicleHeading: Int32?
    /// Specifies which data should be reported for diagnosis purposes. The only possible value is _effectiveSettings_. Reports the effective parameters or data used when calling the API. In the case of defaulted parameters the default will be reflected where the parameter was not specified by the caller.
    internal let report: Report?
    /// Specifies which of the section types is reported in the route response. <br><br>For example if sectionType = pedestrian the sections which are suited for pedestrians only are returned. Multiple types can be used. The default sectionType refers to the travelMode input. By default travelMode is set to car
    internal let filterSectionType: SectionType?
    /// The date and time of arrival at the destination point. It must be specified as a dateTime. When a time zone offset is not specified it will be assumed to be that of the destination point. The arriveAt value must be in the future. The arriveAt parameter cannot be used in conjunction with departAt, minDeviationDistance or minDeviationTime.
    internal let arriveAt: Iso8601Date?
    /// The date and time of departure from the origin point. Departure times apart from now must be specified as a dateTime. When a time zone offset is not specified, it will be assumed to be that of the origin point. The departAt value must be in the future in the date-time format (1996-12-19T16:39:57-08:00).
    internal let departAt: Iso8601Date?
    /// Weight per axle of the vehicle in kg. A value of 0 means that weight restrictions per axle are not considered.
    internal let vehicleAxleWeight: Int32?
    /// Length of the vehicle in meters. A value of 0 means that length restrictions are not considered.
    internal let vehicleLength: Double?
    /// Height of the vehicle in meters. A value of 0 means that height restrictions are not considered.
    internal let vehicleHeight: Double?
    /// Width of the vehicle in meters. A value of 0 means that width restrictions are not considered.
    internal let vehicleWidth: Double?
    /// Maximum speed of the vehicle in km/hour. The max speed in the vehicle profile is used to check whether a vehicle is allowed on motorways.
    /// * A value of 0 means that an appropriate value for the vehicle will be determined and applied during route planning.
    /// * A non-zero value may be overridden during route planning. For example, the current traffic flow is 60 km/hour. If the vehicle  maximum speed is set to 50 km/hour, the routing engine will consider 60 km/hour as this is the current situation.  If the maximum speed of the vehicle is provided as 80 km/hour but the current traffic flow is 60 km/hour, then routing engine will again use 60 km/hour.
    internal let vehicleMaxSpeed: Int32?
    /// Weight of the vehicle in kilograms.
    /// * It is mandatory if any of the *Efficiency parameters are set.
    /// * It must be strictly positive when used in the context of the Consumption Model. Weight restrictions are considered.
    /// * If no detailed **Consumption Model** is specified and the value of **vehicleWeight** is non-zero, then weight restrictions are considered.
    /// * In all other cases, this parameter is ignored.
    /// Sensible Values : for **Combustion Model** : 1600, for **Electric Model** : 1900
    internal let vehicleWeight: Int32?
    /// Whether the vehicle is used for commercial purposes. Commercial vehicles may not be allowed to drive on some roads.
    internal let isCommercialVehicle: Bool?
    /// Level of turns for thrilling route. This parameter can only be used in conjunction with `routeType`=thrilling.
    internal let windingness: WindingnessLevel?
    /// Degree of hilliness for thrilling route. This parameter can only be used in conjunction with `routeType`=thrilling.
    internal let inclineLevel: InclineLevel?
    /// The mode of travel for the requested route. If not defined, default is 'car'. Note that the requested travelMode may not be available for the entire route. Where the requested travelMode is not available for a particular section, the travelMode element of the response for that section will be "other". Note that travel modes bus, motorcycle, taxi and van are BETA functionality. Full restriction data is not available in all areas. In **calculateReachableRange** requests, the values bicycle and pedestrian must not be used.
    internal let travelMode: TravelMode?
    /// Specifies something that the route calculation should try to avoid when determining the route. Can be specified multiple times in one request, for example, '&avoid=motorways&avoid=tollRoads&avoid=ferries'. In calculateReachableRange requests, the value alreadyUsedRoads must not be used.
    internal let avoid: [RouteAvoidType]?
    /// Possible values:
    ///   * true - Do consider all available traffic information during routing
    ///   * false - Ignore current traffic data during routing. Note that although the current traffic data is ignored
    ///   during routing, the effect of historic traffic on effective road speeds is still incorporated.
    internal let useTrafficData: Bool?
    /// The type of route requested.
    internal let routeType: RouteType?
    /// Types of cargo that may be classified as hazardous materials and restricted from some roads. Available vehicleLoadType values are US Hazmat classes 1 through 9, plus generic classifications for use in other countries. Values beginning with USHazmat are for US routing while otherHazmat should be used for all other countries. vehicleLoadType can be specified multiple times. This parameter is currently only considered for travelMode=truck.
    internal let vehicleLoadType: VehicleLoadType?
    /// Engine type of the vehicle. When a detailed Consumption Model is specified, it must be consistent with the value of **vehicleEngineType**.
    internal let vehicleEngineType: VehicleEngineType?
    /// Specifies the speed-dependent component of consumption.
    /// Provided as an unordered list of colon-delimited speed & consumption-rate pairs. The list defines points on a consumption curve. Consumption rates for speeds not in the list are found as follows:
    ///  * by linear interpolation, if the given speed lies in between two speeds in the list
    ///  * by linear extrapolation otherwise, assuming a constant (ΔConsumption/ΔSpeed) determined by the nearest two points in the list
    /// The list must contain between 1 and 25 points (inclusive), and may not contain duplicate points for the same speed. If it only contains a single point, then the consumption rate of that point is used without further processing.
    /// Consumption specified for the largest speed must be greater than or equal to that of the penultimate largest speed. This ensures that extrapolation does not lead to negative consumption rates.
    /// Similarly, consumption values specified for the two smallest speeds in the list cannot lead to a negative consumption rate for any smaller speed.
    /// The valid range for the consumption values(expressed in l/100km) is between 0.01 and 100000.0.
    /// Sensible Values : 50,6.3:130,11.5
    /// **Note** : This parameter is required for **The Combustion Consumption Model**.
    internal let constantSpeedConsumptionInLitersPerHundredKm: String?
    /// Specifies the current supply of fuel in liters.
    /// Sensible Values : 55
    internal let currentFuelInLiters: Double?
    /// Specifies the amount of fuel consumed for sustaining auxiliary systems of the vehicle, in liters per hour.
    /// It can be used to specify consumption due to devices and systems such as AC systems, radio, heating, etc.
    /// Sensible Values : 0.2
    internal let auxiliaryPowerInLitersPerHour: Double?
    /// Specifies the amount of chemical energy stored in one liter of fuel in megajoules (MJ). It is used in conjunction with the ***Efficiency** parameters for conversions between saved or consumed energy and fuel. For example, energy density is 34.2 MJ/l for gasoline, and 35.8 MJ/l for Diesel fuel.
    /// This parameter is required if any ***Efficiency** parameter is set.
    /// Sensible Values : 34.2
    internal let fuelEnergyDensityInMegajoulesPerLiter: Double?
    /// Specifies the efficiency of converting chemical energy stored in fuel to kinetic energy when the vehicle accelerates _(i.e. KineticEnergyGained/ChemicalEnergyConsumed). ChemicalEnergyConsumed_ is obtained by converting consumed fuel to chemical energy using **fuelEnergyDensityInMJoulesPerLiter**.
    /// Must be paired with **decelerationEfficiency**.
    /// The range of values allowed are 0.0 to 1/**decelerationEfficiency**.
    /// Sensible Values : for **Combustion Model** : 0.33, for **Electric Model** : 0.66
    internal let accelerationEfficiency: Double?
    /// Specifies the efficiency of converting kinetic energy to saved (not consumed) fuel when the vehicle decelerates _(i.e. ChemicalEnergySaved/KineticEnergyLost). ChemicalEnergySaved_ is obtained by converting saved (not consumed) fuel to energy using **fuelEnergyDensityInMJoulesPerLiter**.
    /// Must be paired with **accelerationEfficiency**.
    /// The range of values allowed are 0.0 to 1/**accelerationEfficiency**.
    /// Sensible Values : for **Combustion Model** : 0.83, for **Electric Model** : 0.91
    internal let decelerationEfficiency: Double?
    /// Specifies the efficiency of converting chemical energy stored in fuel to potential energy when the vehicle gains elevation _(i.e. PotentialEnergyGained/ChemicalEnergyConsumed). ChemicalEnergyConsumed_ is obtained by converting consumed fuel to chemical energy using **fuelEnergyDensityInMJoulesPerLiter**.
    /// Must be paired with **downhillEfficiency**.
    /// The range of values allowed are 0.0 to 1/**downhillEfficiency**.
    /// Sensible Values : for **Combustion Model** : 0.27, for **Electric Model** : 0.74
    internal let uphillEfficiency: Double?
    /// Specifies the efficiency of converting potential energy to saved (not consumed) fuel when the vehicle loses elevation _(i.e. ChemicalEnergySaved/PotentialEnergyLost). ChemicalEnergySaved_ is obtained by converting saved (not consumed) fuel to energy using **fuelEnergyDensityInMJoulesPerLiter**.
    /// Must be paired with **uphillEfficiency**.
    /// The range of values allowed are 0.0 to 1/**uphillEfficiency**.
    /// Sensible Values : for **Combustion Model** : 0.51, for **Electric Model** : 0.73
    internal let downhillEfficiency: Double?
    /// Specifies the speed-dependent component of consumption.
    /// Provided as an unordered list of speed/consumption-rate pairs. The list defines points on a consumption curve. Consumption rates for speeds not in the list are found as follows:
    /// * by linear interpolation, if the given speed lies in between two speeds in the list
    /// * by linear extrapolation otherwise, assuming a constant (ΔConsumption/ΔSpeed) determined by the nearest two points in the list
    /// The list must contain between 1 and 25 points (inclusive), and may not contain duplicate points for the same speed. If it only contains a single point, then the consumption rate of that point is used without further processing.
    /// Consumption specified for the largest speed must be greater than or equal to that of the penultimate largest speed. This ensures that extrapolation does not lead to negative consumption rates.
    /// Similarly, consumption values specified for the two smallest speeds in the list cannot lead to a negative consumption rate for any smaller  speed.
    /// The valid range for the consumption values(expressed in kWh/100km) is between 0.01 and 100000.0.
    /// Sensible Values : 50,8.2:130,21.3
    /// This parameter is required for **Electric consumption model**.
    internal let constantSpeedConsumptionInKwHPerHundredKm: String?
    /// Specifies the current electric energy supply in kilowatt hours (kWh).
    /// This parameter co-exists with **maxChargeInkWh** parameter.
    /// The range of values allowed are 0.0 to **maxChargeInkWh**.
    /// Sensible Values : 43
    internal let currentChargeInKwH: Double?
    /// Specifies the maximum electric energy supply in kilowatt hours (kWh) that may be stored in the vehicle's battery.
    /// This parameter co-exists with **currentChargeInkWh** parameter.
    /// Minimum value has to be greater than or equal to **currentChargeInkWh**.
    /// Sensible Values : 85
    internal let maxChargeInKwH: Double?
    /// Specifies the amount of power consumed for sustaining auxiliary systems, in kilowatts (kW).
    /// It can be used to specify consumption due to devices and systems such as AC systems, radio, heating, etc.
    /// Sensible Values : 1.7
    internal let auxiliaryPowerInKw: Double?

    /// A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    /// Highly recommended for correlating client-side activites with requests received by the server.
    internal let clientRequestId: String?

    /// A token used to make a best-effort attempt at canceling a request.
    internal let cancellationToken: CancellationToken?

    /// A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    internal var dispatchQueue: DispatchQueue?

    /// A `PipelineContext` object to associate with the request.
    internal var context: PipelineContext?

    /// Initialize a `GetRouteDirectionsWithAdditionalParametersOptions` structure.
    /// - Parameters:
    ///   - maxAlternatives: Number of desired alternative routes to be calculated. Default: 0, minimum: 0 and maximum: 5
    ///   - alternativeType: Controls the optimality, with respect to the given planning criteria, of the calculated alternatives compared to the reference route.
    ///   - minDeviationDistance: All alternative routes returned will follow the reference route (see section POST Requests) from the origin point of the calculateRoute request for at least this number of meters. Can only be used when reconstructing a route. The minDeviationDistance parameter cannot be used in conjunction with arriveAt
    ///   - minDeviationTime: All alternative routes returned will follow the reference route (see section POST Requests) from the origin point of the calculateRoute request for at least this number of seconds. Can only be used when reconstructing a route. The minDeviationTime parameter cannot be used in conjunction with arriveAt. Default value is 0. Setting )minDeviationTime_ to a value greater than zero has the following consequences:
    ///   - The origin point of the _calculateRoute_ Request must be on
    ///     (or very near) the input reference route.
    ///     - If this is not the case, an error is returned.
    ///     - However, the origin point does not need to be at the beginning
    ///       of the input reference route (it can be thought of as the current
    ///       vehicle position on the reference route).
    ///   - The reference route, returned as the first route in the _calculateRoute_
    ///     Response, will start at the origin point specified in the _calculateRoute_
    ///     Request. The initial part of the input reference route up until the origin
    ///     point will be excluded from the Response.
    ///   - The values of _minDeviationDistance_ and _minDeviationTime_ determine
    ///     how far alternative routes will be guaranteed to follow the reference
    ///     route from the origin point onwards.
    ///   - The route must use _departAt_.
    ///   - The _vehicleHeading_ is ignored.
    ///   - instructionsType: If specified, guidance instructions will be returned. Note that the instructionsType parameter cannot be used in conjunction with routeRepresentation=none
    ///   - language: The language parameter determines the language of the guidance messages. It does not affect proper nouns (the names of streets, plazas, etc.) It has no effect when instructionsType=coded. Allowed values are (a subset of) the IETF language tags described
    ///   - computeBestWaypointOrder: Re-order the route waypoints using a fast heuristic algorithm to reduce the route length. Yields best results when used in conjunction with routeType _shortest_. Notice that origin and destination are excluded from the optimized waypoint indices. To include origin and destination in the response, please increase all the indices by 1 to account for the origin, and then add the destination as the final index. Possible values are true or false. True computes a better order if possible, but is not allowed to be used in conjunction with maxAlternatives value greater than 0 or in conjunction with circle waypoints. False will use the locations in the given order and not allowed to be used in conjunction with routeRepresentation _none_.
    ///   - routeRepresentationForBestOrder: Specifies the representation of the set of routes provided as response. This parameter value can only be used in conjunction with computeBestOrder=true.
    ///   - computeTravelTime: Specifies whether to return additional travel times using different types of traffic information (none, historic, live) as well as the default best-estimate travel time.
    ///   - vehicleHeading: The directional heading of the vehicle in degrees starting at true North and continuing in clockwise direction. North is 0 degrees, east is 90 degrees, south is 180 degrees, west is 270 degrees. Possible values 0-359
    ///   - report: Specifies which data should be reported for diagnosis purposes. The only possible value is _effectiveSettings_. Reports the effective parameters or data used when calling the API. In the case of defaulted parameters the default will be reflected where the parameter was not specified by the caller.
    ///   - filterSectionType: Specifies which of the section types is reported in the route response. <br><br>For example if sectionType = pedestrian the sections which are suited for pedestrians only are returned. Multiple types can be used. The default sectionType refers to the travelMode input. By default travelMode is set to car
    ///   - arriveAt: The date and time of arrival at the destination point. It must be specified as a dateTime. When a time zone offset is not specified it will be assumed to be that of the destination point. The arriveAt value must be in the future. The arriveAt parameter cannot be used in conjunction with departAt, minDeviationDistance or minDeviationTime.
    ///   - departAt: The date and time of departure from the origin point. Departure times apart from now must be specified as a dateTime. When a time zone offset is not specified, it will be assumed to be that of the origin point. The departAt value must be in the future in the date-time format (1996-12-19T16:39:57-08:00).
    ///   - vehicleAxleWeight: Weight per axle of the vehicle in kg. A value of 0 means that weight restrictions per axle are not considered.
    ///   - vehicleLength: Length of the vehicle in meters. A value of 0 means that length restrictions are not considered.
    ///   - vehicleHeight: Height of the vehicle in meters. A value of 0 means that height restrictions are not considered.
    ///   - vehicleWidth: Width of the vehicle in meters. A value of 0 means that width restrictions are not considered.
    ///   - vehicleMaxSpeed: Maximum speed of the vehicle in km/hour. The max speed in the vehicle profile is used to check whether a vehicle is allowed on motorways.
    /// * A value of 0 means that an appropriate value for the vehicle will be determined and applied during route planning.
    /// * A non-zero value may be overridden during route planning. For example, the current traffic flow is 60 km/hour. If the vehicle  maximum speed is set to 50 km/hour, the routing engine will consider 60 km/hour as this is the current situation.  If the maximum speed of the vehicle is provided as 80 km/hour but the current traffic flow is 60 km/hour, then routing engine will again use 60 km/hour.
    ///   - vehicleWeight: Weight of the vehicle in kilograms.
    /// * It is mandatory if any of the *Efficiency parameters are set.
    /// * It must be strictly positive when used in the context of the Consumption Model. Weight restrictions are considered.
    /// * If no detailed **Consumption Model** is specified and the value of **vehicleWeight** is non-zero, then weight restrictions are considered.
    /// * In all other cases, this parameter is ignored.
    /// Sensible Values : for **Combustion Model** : 1600, for **Electric Model** : 1900
    ///   - isCommercialVehicle: Whether the vehicle is used for commercial purposes. Commercial vehicles may not be allowed to drive on some roads.
    ///   - windingness: Level of turns for thrilling route. This parameter can only be used in conjunction with `routeType`=thrilling.
    ///   - inclineLevel: Degree of hilliness for thrilling route. This parameter can only be used in conjunction with `routeType`=thrilling.
    ///   - travelMode: The mode of travel for the requested route. If not defined, default is 'car'. Note that the requested travelMode may not be available for the entire route. Where the requested travelMode is not available for a particular section, the travelMode element of the response for that section will be "other". Note that travel modes bus, motorcycle, taxi and van are BETA functionality. Full restriction data is not available in all areas. In **calculateReachableRange** requests, the values bicycle and pedestrian must not be used.
    ///   - avoid: Specifies something that the route calculation should try to avoid when determining the route. Can be specified multiple times in one request, for example, '&avoid=motorways&avoid=tollRoads&avoid=ferries'. In calculateReachableRange requests, the value alreadyUsedRoads must not be used.
    ///   - useTrafficData: Possible values:
    ///   * true - Do consider all available traffic information during routing
    ///   * false - Ignore current traffic data during routing. Note that although the current traffic data is ignored
    ///   during routing, the effect of historic traffic on effective road speeds is still incorporated.
    ///   - routeType: The type of route requested.
    ///   - vehicleLoadType: Types of cargo that may be classified as hazardous materials and restricted from some roads. Available vehicleLoadType values are US Hazmat classes 1 through 9, plus generic classifications for use in other countries. Values beginning with USHazmat are for US routing while otherHazmat should be used for all other countries. vehicleLoadType can be specified multiple times. This parameter is currently only considered for travelMode=truck.
    ///   - vehicleEngineType: Engine type of the vehicle. When a detailed Consumption Model is specified, it must be consistent with the value of **vehicleEngineType**.
    ///   - constantSpeedConsumptionInLitersPerHundredKm: Specifies the speed-dependent component of consumption.
    /// Provided as an unordered list of colon-delimited speed & consumption-rate pairs. The list defines points on a consumption curve. Consumption rates for speeds not in the list are found as follows:
    ///  * by linear interpolation, if the given speed lies in between two speeds in the list
    ///  * by linear extrapolation otherwise, assuming a constant (ΔConsumption/ΔSpeed) determined by the nearest two points in the list
    /// The list must contain between 1 and 25 points (inclusive), and may not contain duplicate points for the same speed. If it only contains a single point, then the consumption rate of that point is used without further processing.
    /// Consumption specified for the largest speed must be greater than or equal to that of the penultimate largest speed. This ensures that extrapolation does not lead to negative consumption rates.
    /// Similarly, consumption values specified for the two smallest speeds in the list cannot lead to a negative consumption rate for any smaller speed.
    /// The valid range for the consumption values(expressed in l/100km) is between 0.01 and 100000.0.
    /// Sensible Values : 50,6.3:130,11.5
    /// **Note** : This parameter is required for **The Combustion Consumption Model**.
    ///   - currentFuelInLiters: Specifies the current supply of fuel in liters.
    /// Sensible Values : 55
    ///   - auxiliaryPowerInLitersPerHour: Specifies the amount of fuel consumed for sustaining auxiliary systems of the vehicle, in liters per hour.
    /// It can be used to specify consumption due to devices and systems such as AC systems, radio, heating, etc.
    /// Sensible Values : 0.2
    ///   - fuelEnergyDensityInMegajoulesPerLiter: Specifies the amount of chemical energy stored in one liter of fuel in megajoules (MJ). It is used in conjunction with the ***Efficiency** parameters for conversions between saved or consumed energy and fuel. For example, energy density is 34.2 MJ/l for gasoline, and 35.8 MJ/l for Diesel fuel.
    /// This parameter is required if any ***Efficiency** parameter is set.
    /// Sensible Values : 34.2
    ///   - accelerationEfficiency: Specifies the efficiency of converting chemical energy stored in fuel to kinetic energy when the vehicle accelerates _(i.e. KineticEnergyGained/ChemicalEnergyConsumed). ChemicalEnergyConsumed_ is obtained by converting consumed fuel to chemical energy using **fuelEnergyDensityInMJoulesPerLiter**.
    /// Must be paired with **decelerationEfficiency**.
    /// The range of values allowed are 0.0 to 1/**decelerationEfficiency**.
    /// Sensible Values : for **Combustion Model** : 0.33, for **Electric Model** : 0.66
    ///   - decelerationEfficiency: Specifies the efficiency of converting kinetic energy to saved (not consumed) fuel when the vehicle decelerates _(i.e. ChemicalEnergySaved/KineticEnergyLost). ChemicalEnergySaved_ is obtained by converting saved (not consumed) fuel to energy using **fuelEnergyDensityInMJoulesPerLiter**.
    /// Must be paired with **accelerationEfficiency**.
    /// The range of values allowed are 0.0 to 1/**accelerationEfficiency**.
    /// Sensible Values : for **Combustion Model** : 0.83, for **Electric Model** : 0.91
    ///   - uphillEfficiency: Specifies the efficiency of converting chemical energy stored in fuel to potential energy when the vehicle gains elevation _(i.e. PotentialEnergyGained/ChemicalEnergyConsumed). ChemicalEnergyConsumed_ is obtained by converting consumed fuel to chemical energy using **fuelEnergyDensityInMJoulesPerLiter**.
    /// Must be paired with **downhillEfficiency**.
    /// The range of values allowed are 0.0 to 1/**downhillEfficiency**.
    /// Sensible Values : for **Combustion Model** : 0.27, for **Electric Model** : 0.74
    ///   - downhillEfficiency: Specifies the efficiency of converting potential energy to saved (not consumed) fuel when the vehicle loses elevation _(i.e. ChemicalEnergySaved/PotentialEnergyLost). ChemicalEnergySaved_ is obtained by converting saved (not consumed) fuel to energy using **fuelEnergyDensityInMJoulesPerLiter**.
    /// Must be paired with **uphillEfficiency**.
    /// The range of values allowed are 0.0 to 1/**uphillEfficiency**.
    /// Sensible Values : for **Combustion Model** : 0.51, for **Electric Model** : 0.73
    ///   - constantSpeedConsumptionInKwHPerHundredKm: Specifies the speed-dependent component of consumption.
    /// Provided as an unordered list of speed/consumption-rate pairs. The list defines points on a consumption curve. Consumption rates for speeds not in the list are found as follows:
    /// * by linear interpolation, if the given speed lies in between two speeds in the list
    /// * by linear extrapolation otherwise, assuming a constant (ΔConsumption/ΔSpeed) determined by the nearest two points in the list
    /// The list must contain between 1 and 25 points (inclusive), and may not contain duplicate points for the same speed. If it only contains a single point, then the consumption rate of that point is used without further processing.
    /// Consumption specified for the largest speed must be greater than or equal to that of the penultimate largest speed. This ensures that extrapolation does not lead to negative consumption rates.
    /// Similarly, consumption values specified for the two smallest speeds in the list cannot lead to a negative consumption rate for any smaller  speed.
    /// The valid range for the consumption values(expressed in kWh/100km) is between 0.01 and 100000.0.
    /// Sensible Values : 50,8.2:130,21.3
    /// This parameter is required for **Electric consumption model**.
    ///   - currentChargeInKwH: Specifies the current electric energy supply in kilowatt hours (kWh).
    /// This parameter co-exists with **maxChargeInkWh** parameter.
    /// The range of values allowed are 0.0 to **maxChargeInkWh**.
    /// Sensible Values : 43
    ///   - maxChargeInKwH: Specifies the maximum electric energy supply in kilowatt hours (kWh) that may be stored in the vehicle's battery.
    /// This parameter co-exists with **currentChargeInkWh** parameter.
    /// Minimum value has to be greater than or equal to **currentChargeInkWh**.
    /// Sensible Values : 85
    ///   - auxiliaryPowerInKw: Specifies the amount of power consumed for sustaining auxiliary systems, in kilowatts (kW).
    /// It can be used to specify consumption due to devices and systems such as AC systems, radio, heating, etc.
    /// Sensible Values : 1.7
    ///   - clientRequestId: A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    ///   - cancellationToken: A token used to make a best-effort attempt at canceling a request.
    ///   - dispatchQueue: A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    ///   - context: A `PipelineContext` object to associate with the request.
    internal init(
        maxAlternatives: Int32? = nil,
        alternativeType: AlternativeRouteType? = nil,
        minDeviationDistance: Int32? = nil,
        minDeviationTime: Int32? = nil,
        instructionsType: RouteInstructionsType? = nil,
        language: String? = nil,
        computeBestWaypointOrder: Bool? = nil,
        routeRepresentationForBestOrder: RouteRepresentationForBestOrder? = nil,
        computeTravelTime: ComputeTravelTime? = nil,
        vehicleHeading: Int32? = nil,
        report: Report? = nil,
        filterSectionType: SectionType? = nil,
        arriveAt: Iso8601Date? = nil,
        departAt: Iso8601Date? = nil,
        vehicleAxleWeight: Int32? = nil,
        vehicleLength: Double? = nil,
        vehicleHeight: Double? = nil,
        vehicleWidth: Double? = nil,
        vehicleMaxSpeed: Int32? = nil,
        vehicleWeight: Int32? = nil,
        isCommercialVehicle: Bool? = nil,
        windingness: WindingnessLevel? = nil,
        inclineLevel: InclineLevel? = nil,
        travelMode: TravelMode? = nil,
        avoid: [RouteAvoidType]? = nil,
        useTrafficData: Bool? = nil,
        routeType: RouteType? = nil,
        vehicleLoadType: VehicleLoadType? = nil,
        vehicleEngineType: VehicleEngineType? = nil,
        constantSpeedConsumptionInLitersPerHundredKm: String? = nil,
        currentFuelInLiters: Double? = nil,
        auxiliaryPowerInLitersPerHour: Double? = nil,
        fuelEnergyDensityInMegajoulesPerLiter: Double? = nil,
        accelerationEfficiency: Double? = nil,
        decelerationEfficiency: Double? = nil,
        uphillEfficiency: Double? = nil,
        downhillEfficiency: Double? = nil,
        constantSpeedConsumptionInKwHPerHundredKm: String? = nil,
        currentChargeInKwH: Double? = nil,
        maxChargeInKwH: Double? = nil,
        auxiliaryPowerInKw: Double? = nil,
        clientRequestId: String? = nil,
        cancellationToken: CancellationToken? = nil,
        dispatchQueue: DispatchQueue? = nil,
        context: PipelineContext? = nil
    ) {
        self.maxAlternatives = maxAlternatives
        self.alternativeType = alternativeType
        self.minDeviationDistance = minDeviationDistance
        self.minDeviationTime = minDeviationTime
        self.instructionsType = instructionsType
        self.language = language
        self.computeBestWaypointOrder = computeBestWaypointOrder
        self.routeRepresentationForBestOrder = routeRepresentationForBestOrder
        self.computeTravelTime = computeTravelTime
        self.vehicleHeading = vehicleHeading
        self.report = report
        self.filterSectionType = filterSectionType
        self.arriveAt = arriveAt
        self.departAt = departAt
        self.vehicleAxleWeight = vehicleAxleWeight
        self.vehicleLength = vehicleLength
        self.vehicleHeight = vehicleHeight
        self.vehicleWidth = vehicleWidth
        self.vehicleMaxSpeed = vehicleMaxSpeed
        self.vehicleWeight = vehicleWeight
        self.isCommercialVehicle = isCommercialVehicle
        self.windingness = windingness
        self.inclineLevel = inclineLevel
        self.travelMode = travelMode
        self.avoid = avoid
        self.useTrafficData = useTrafficData
        self.routeType = routeType
        self.vehicleLoadType = vehicleLoadType
        self.vehicleEngineType = vehicleEngineType
        self.constantSpeedConsumptionInLitersPerHundredKm = constantSpeedConsumptionInLitersPerHundredKm
        self.currentFuelInLiters = currentFuelInLiters
        self.auxiliaryPowerInLitersPerHour = auxiliaryPowerInLitersPerHour
        self.fuelEnergyDensityInMegajoulesPerLiter = fuelEnergyDensityInMegajoulesPerLiter
        self.accelerationEfficiency = accelerationEfficiency
        self.decelerationEfficiency = decelerationEfficiency
        self.uphillEfficiency = uphillEfficiency
        self.downhillEfficiency = downhillEfficiency
        self.constantSpeedConsumptionInKwHPerHundredKm = constantSpeedConsumptionInKwHPerHundredKm
        self.currentChargeInKwH = currentChargeInKwH
        self.maxChargeInKwH = maxChargeInKwH
        self.auxiliaryPowerInKw = auxiliaryPowerInKw
        self.clientRequestId = clientRequestId
        self.cancellationToken = cancellationToken
        self.dispatchQueue = dispatchQueue
        self.context = context
    }
}
