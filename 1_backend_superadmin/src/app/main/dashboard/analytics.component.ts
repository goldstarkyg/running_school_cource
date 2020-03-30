import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { fuseAnimations } from '@fuse/animations';
import { AnalyticsDashboardService } from 'app/main/dashboard/analytics.service';
import { ViewChild } from '@angular/core';

import { } from 'googlemaps';
declare var google;

@Component({
    selector     : 'analytics-dashboard',
    templateUrl  : './analytics.component.html',
    styleUrls    : ['./analytics.component.scss'],
    encapsulation: ViewEncapsulation.None,
    animations   : fuseAnimations
})
export class AnalyticsDashboardComponent implements OnInit
{
    widgets: any;
    widget1SelectedYear = '2016';
    widget5SelectedDay = 'today';

    @ViewChild('map') mapElement: any;
    map: google.maps.Map;

    /**
     * Constructor
     *
     * @param {AnalyticsDashboardService} _analyticsDashboardService
     */
    constructor(
        private _analyticsDashboardService: AnalyticsDashboardService
    )
    {
        // Register the custom chart.js plugin
        this._registerCustomChartJSPlugin();
    }

    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------

    /**
     * On init
     */
    ngOnInit(): void
    {
        // Get the widgets from the service
        this.widgets = this._analyticsDashboardService.widgets;
        this.refreshGoogleMap();
    }

    refreshGoogleMap()
    {
        const mapProperties = {
            center: new google.maps.LatLng(41.90370080000001, 12.496235200000001),
            zoom: 14,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        this.map = new google.maps.Map(this.mapElement.nativeElement, mapProperties);
        this.setMarkers();
        this.setVistors();
    }

    setMarkers() {
        var marker, i;

        // marker of widgets.widget6.markers
        for (i = 0; i < this.widgets.widget6.markers.length; i++) {

            var lat = +this.widgets.widget6.markers[i].lat;
            var lng = +this.widgets.widget6.markers[i].lng;
            let latlngset = new google.maps.LatLng(lat, lng);

            var marker = new google.maps.Marker({
                map: this.map, title: this.widgets.widget6.markers[i].label, position: latlngset
            });
            this.map.setCenter(marker.getPosition());
        }
    }

    setVistors() {        
        var datasets = this.widgets.widget1.datasets;
        var result = Object.keys(datasets).map(function(key) {                
                var data = [1.9, 1.9, 1.9, 1.9, 2.9, 2.9, 2.9, 2.9, 4.1, 4.1, 4.1, 7.9];                
                var label   = 'Sales';
                var fill    = 'start' ;
                if(key == '2016') {
                    datasets[2013] = [];
                    datasets[2013][0] = {};                   
                    datasets[2013][0].label  = label;
                    datasets[2013][0].data   = data;
                    datasets[2013][0].fill   = fill;
                    //delete datasets[key];
                }
            return [Number(key), datasets[key]];
          });
    }

    /**
     * Register a custom plugin
     */
    private _registerCustomChartJSPlugin(): void
    {
        (window as any).Chart.plugins.register({
            afterDatasetsDraw: function(chart, easing): any {
                // Only activate the plugin if it's made available
                // in the options
                if (
                    !chart.options.plugins.xLabelsOnTop ||
                    (chart.options.plugins.xLabelsOnTop && chart.options.plugins.xLabelsOnTop.active === false)
                )
                {
                    return;
                }

                // To only draw at the end of animation, check for easing === 1
                const ctx = chart.ctx;

                chart.data.datasets.forEach(function(dataset, i): any {
                    const meta = chart.getDatasetMeta(i);
                    if ( !meta.hidden )
                    {
                        meta.data.forEach(function(element, index): any {

                            // Draw the text in black, with the specified font
                            ctx.fillStyle = 'rgba(255, 255, 255, 0.7)';
                            const fontSize = 13;
                            const fontStyle = 'normal';
                            const fontFamily = 'Roboto, Helvetica Neue, Arial';
                            ctx.font = (window as any).Chart.helpers.fontString(fontSize, fontStyle, fontFamily);

                            // Just naively convert to string for now
                            const dataString = dataset.data[index].toString() + 'k';

                            // Make sure alignment settings are correct
                            ctx.textAlign = 'center';
                            ctx.textBaseline = 'middle';
                            const padding = 15;
                            const startY = 24;
                            const position = element.tooltipPosition();
                            ctx.fillText(dataString, position.x, startY);

                            ctx.save();

                            ctx.beginPath();
                            ctx.setLineDash([5, 3]);
                            ctx.moveTo(position.x, startY + padding);
                            ctx.lineTo(position.x, position.y - padding);
                            ctx.strokeStyle = 'rgba(255,255,255,0.12)';
                            ctx.stroke();

                            ctx.restore();
                        });
                    }
                });
            }
        });
    }
}

