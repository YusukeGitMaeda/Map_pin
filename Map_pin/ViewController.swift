//
//  ViewController.swift
//  Map_pin
//
//  Created by 前田雄亮 on 2015/06/12.
//  Copyright (c) 2015年 前田雄亮. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Mapviewを作成
        var myMapView: MKMapView = MKMapView()
        myMapView.frame = self.view.frame
        
        //軽度、緯度
        let myLatitude: CLLocationDegrees = 34.6972427
        let myLongitude: CLLocationDegrees = 135.4924325

        //中心点
        let center: CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLatitude, myLongitude)
        
        //MapViewに中心点を設定
        myMapView.setCenterCoordinate(center, animated: true)
        
        //縮尺
        //表示領域
        let mySpan: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let myRegion: MKCoordinateRegion = MKCoordinateRegionMake(center, mySpan)
        
        //MapViewにregionを追加
        self.view.addSubview(myMapView)
        
        //ピンを生成
        var myPin: MKPointAnnotation = MKPointAnnotation()
        
        //座標を設定
        myPin.coordinate = center
        
        //タイトルを設定
        myPin.title = "LiT大阪支社"
        
        //サブタイトルを設定
        myPin.subtitle = "9:30集合"
        
        //MapViewにピンを追加
        myMapView.addAnnotation(myPin)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

