//
//  ViewController.m
//  ServerSentEventsObjectiveC
//
//  Created by iHub on 04/11/19.
//  Copyright © 2019 iHubTechnologiesPvtLtd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *serverURL = [NSURL URLWithString:@"http://139.59.17.219:8080/AnkuraHospitals/rest/doctorConsultation/serverSideEvent?locationId=1"];
    EventSource *source = [EventSource eventSourceWithURL:serverURL];
    [source onMessage:^(Event *e) {
        NSLog(@"%@: %@", e.event, e.data);
    }];
}


@end
