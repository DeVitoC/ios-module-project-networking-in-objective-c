//
//  CBDCurrentForcast.m
//  DailyWeather
//
//  Created by Christopher Devito on 5/13/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "CBDCurrentForcast.h"

@implementation CBDCurrentForcast

- (instancetype)initWithTemperature:(NSNumber *)temperature
                apparentTemperature:(NSNumber *)apparentTemperature
                               time:(NSDate *)time
                            summary:(NSString *)summary
                               icon:(NSString *)icon
                  precipProbability:(NSNumber *)precipProbability
                    precipIntensity:(NSNumber *)precipIntensity
                           humidity:(NSNumber *)humidity
                           pressure:(NSNumber *)pressure
                          windSpeed:(NSNumber *)windSpeed
                        windBearing:(NSNumber *)windBearing
                            uvIndex:(NSNumber *)uvIndex {
    self = [super init];
    if (self) {
        _temperature = temperature;
        _apparentTemperature = apparentTemperature;
        self.time = time;
        self.summary = summary;
        self.icon = icon;
        self.precipProbability = precipProbability;
        self.precipIntensity = precipIntensity;
        self.humidity = humidity;
        self.pressure = pressure;
        self.windSpeed = windSpeed;
        self.windBearing = windBearing;
        self.uvIndex = uvIndex;
    }
    
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    NSNumber *timeNumber = dictionary[@"time"];
    NSString *summary = dictionary[@"summary"];
    NSString *icon = dictionary[@"icon"];
    NSNumber *precipProbability = dictionary[@"precipProbability"];
    NSNumber *precipIntensity = dictionary[@"precipIntensity"];
    NSNumber *temperature = dictionary[@"temperature"];
    NSNumber *apparentTemperature = dictionary[@"apparentTemperature"];
    NSNumber *humidity = dictionary[@"humidity"];
    NSNumber *pressure = dictionary[@"pressure"];
    NSNumber *windSpeed = dictionary[@"windSpeed"];
    NSNumber *windBearing = dictionary[@"windBearing"];
    NSNumber *uvIndex = dictionary[@"uvIndex"];
    
    double timeInMilliseconds = timeNumber.doubleValue;
    NSDate *time = [NSDate dateWithTimeIntervalSince1970:timeInMilliseconds/1000.0];

    
    return [self initWithTemperature:temperature
                 apparentTemperature:apparentTemperature
                                time:time
                             summary:summary
                                icon:icon
                   precipProbability:precipProbability
                     precipIntensity:precipIntensity
                            humidity:humidity
                            pressure:pressure
                           windSpeed:windSpeed
                         windBearing:windBearing
                             uvIndex:uvIndex];
}

@end
