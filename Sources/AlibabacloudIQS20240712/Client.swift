import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = ""
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("iqs", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
    }

    public func getEndpoint(_ productId: String, _ regionId: String, _ endpointRule: String, _ network: String, _ suffix: String, _ endpointMap: [String: String], _ endpoint: String) throws -> String {
        if (!TeaUtils.Client.empty(endpoint)) {
            return endpoint as! String
        }
        if (!TeaUtils.Client.isUnset(endpointMap) && !TeaUtils.Client.empty(endpointMap[regionId as! String])) {
            return endpointMap[regionId as! String] ?? ""
        }
        return try AlibabacloudEndpointUtil.Client.getEndpointRules(productId, regionId, endpointRule, network, suffix)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bicyclingDirectionNovaWithOptions(_ request: BicyclingDirectionNovaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BicyclingDirectionNovaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationLatitude)) {
            query["destinationLatitude"] = request.destinationLatitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationLongitude)) {
            query["destinationLongitude"] = request.destinationLongitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originLatitude)) {
            query["originLatitude"] = request.originLatitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originLongitude)) {
            query["originLongitude"] = request.originLongitude ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BicyclingDirectionNova",
            "version": "2024-07-12",
            "protocol": "HTTPS",
            "pathname": "/ipaas/v2/direction/bicycling",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BicyclingDirectionNovaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bicyclingDirectionNova(_ request: BicyclingDirectionNovaRequest) async throws -> BicyclingDirectionNovaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await bicyclingDirectionNovaWithOptions(request as! BicyclingDirectionNovaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commonQueryBySceneWithOptions(_ request: CommonQueryBySceneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CommonQueryBySceneResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CommonQueryByScene",
            "version": "2024-07-12",
            "protocol": "HTTPS",
            "pathname": "/amap-function-call-agent/iqs-agent-service/v2/nl/common",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CommonQueryBySceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commonQueryByScene(_ request: CommonQueryBySceneRequest) async throws -> CommonQueryBySceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await commonQueryBySceneWithOptions(request as! CommonQueryBySceneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func drivingDirectionNovaWithOptions(_ request: DrivingDirectionNovaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DrivingDirectionNovaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.carType)) {
            query["carType"] = request.carType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationLatitude)) {
            query["destinationLatitude"] = request.destinationLatitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationLongitude)) {
            query["destinationLongitude"] = request.destinationLongitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originLatitude)) {
            query["originLatitude"] = request.originLatitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originLongitude)) {
            query["originLongitude"] = request.originLongitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.plate)) {
            query["plate"] = request.plate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DrivingDirectionNova",
            "version": "2024-07-12",
            "protocol": "HTTPS",
            "pathname": "/ipaas/v2/direction/driving",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DrivingDirectionNovaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func drivingDirectionNova(_ request: DrivingDirectionNovaRequest) async throws -> DrivingDirectionNovaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await drivingDirectionNovaWithOptions(request as! DrivingDirectionNovaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func electrobikeDirectionWithOptions(_ request: ElectrobikeDirectionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ElectrobikeDirectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationLatitude)) {
            query["destinationLatitude"] = request.destinationLatitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationLongitude)) {
            query["destinationLongitude"] = request.destinationLongitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originLatitude)) {
            query["originLatitude"] = request.originLatitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originLongitude)) {
            query["originLongitude"] = request.originLongitude ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ElectrobikeDirection",
            "version": "2024-07-12",
            "protocol": "HTTPS",
            "pathname": "/ipaas/v1/direction/electrobike",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ElectrobikeDirectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func electrobikeDirection(_ request: ElectrobikeDirectionRequest) async throws -> ElectrobikeDirectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await electrobikeDirectionWithOptions(request as! ElectrobikeDirectionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func electrobikeDirectionNovaWithOptions(_ request: ElectrobikeDirectionNovaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ElectrobikeDirectionNovaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationLatitude)) {
            query["destinationLatitude"] = request.destinationLatitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationLongitude)) {
            query["destinationLongitude"] = request.destinationLongitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originLatitude)) {
            query["originLatitude"] = request.originLatitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originLongitude)) {
            query["originLongitude"] = request.originLongitude ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ElectrobikeDirectionNova",
            "version": "2024-07-12",
            "protocol": "HTTPS",
            "pathname": "/ipaas/v2/direction/electrobike",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ElectrobikeDirectionNovaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func electrobikeDirectionNova(_ request: ElectrobikeDirectionNovaRequest) async throws -> ElectrobikeDirectionNovaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await electrobikeDirectionNovaWithOptions(request as! ElectrobikeDirectionNovaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func geoCodeWithOptions(_ request: GeoCodeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GeoCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["city"] = request.city ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GeoCode",
            "version": "2024-07-12",
            "protocol": "HTTPS",
            "pathname": "/ipaas/v1/geocode/geo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GeoCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func geoCode(_ request: GeoCodeRequest) async throws -> GeoCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await geoCodeWithOptions(request as! GeoCodeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func nearbySearchNovaWithOptions(_ request: NearbySearchNovaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> NearbySearchNovaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keywords)) {
            query["keywords"] = request.keywords ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.latitude)) {
            query["latitude"] = request.latitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.longitude)) {
            query["longitude"] = request.longitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.radius)) {
            query["radius"] = request.radius!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.types)) {
            query["types"] = request.types ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "NearbySearchNova",
            "version": "2024-07-12",
            "protocol": "HTTPS",
            "pathname": "/ipaas/v2/pois/nearby",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(NearbySearchNovaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func nearbySearchNova(_ request: NearbySearchNovaRequest) async throws -> NearbySearchNovaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await nearbySearchNovaWithOptions(request as! NearbySearchNovaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func placeSearchNovaWithOptions(_ request: PlaceSearchNovaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PlaceSearchNovaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keywords)) {
            query["keywords"] = request.keywords ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.types)) {
            query["types"] = request.types ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PlaceSearchNova",
            "version": "2024-07-12",
            "protocol": "HTTPS",
            "pathname": "/ipaas/v2/pois/place",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PlaceSearchNovaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func placeSearchNova(_ request: PlaceSearchNovaRequest) async throws -> PlaceSearchNovaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await placeSearchNovaWithOptions(request as! PlaceSearchNovaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rgeoCodeWithOptions(_ request: RgeoCodeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RgeoCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.latitude)) {
            query["latitude"] = request.latitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.longitude)) {
            query["longitude"] = request.longitude ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RgeoCode",
            "version": "2024-07-12",
            "protocol": "HTTPS",
            "pathname": "/ipaas/v1/geocode/regeo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RgeoCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rgeoCode(_ request: RgeoCodeRequest) async throws -> RgeoCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await rgeoCodeWithOptions(request as! RgeoCodeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transitIntegratedDirectionWithOptions(_ request: TransitIntegratedDirectionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TransitIntegratedDirectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationCity)) {
            query["destinationCity"] = request.destinationCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationLatitude)) {
            query["destinationLatitude"] = request.destinationLatitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationLongitude)) {
            query["destinationLongitude"] = request.destinationLongitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originCity)) {
            query["originCity"] = request.originCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originLatitude)) {
            query["originLatitude"] = request.originLatitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originLongitude)) {
            query["originLongitude"] = request.originLongitude ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransitIntegratedDirection",
            "version": "2024-07-12",
            "protocol": "HTTPS",
            "pathname": "/ipaas/v2/direction/transit/integrated",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransitIntegratedDirectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transitIntegratedDirection(_ request: TransitIntegratedDirectionRequest) async throws -> TransitIntegratedDirectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await transitIntegratedDirectionWithOptions(request as! TransitIntegratedDirectionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func walkingDirectionNovaWithOptions(_ request: WalkingDirectionNovaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> WalkingDirectionNovaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationLatitude)) {
            query["destinationLatitude"] = request.destinationLatitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationLongitude)) {
            query["destinationLongitude"] = request.destinationLongitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originLatitude)) {
            query["originLatitude"] = request.originLatitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originLongitude)) {
            query["originLongitude"] = request.originLongitude ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "WalkingDirectionNova",
            "version": "2024-07-12",
            "protocol": "HTTPS",
            "pathname": "/ipaas/v2/direction/walking",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(WalkingDirectionNovaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func walkingDirectionNova(_ request: WalkingDirectionNovaRequest) async throws -> WalkingDirectionNovaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await walkingDirectionNovaWithOptions(request as! WalkingDirectionNovaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
