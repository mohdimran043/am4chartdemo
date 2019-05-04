<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="am4demo.aspx.cs" Inherits="MgmtCharts.am4demo" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>amCharts V4 Example - simple-bar-chart</title>
    <link rel="stylesheet" href="index.css" />
    <style>
        #chartdiv {
            width: 100%;
            height: 650px;
        }
    </style>
</head>
<body>
    <div id="chartdiv"></div>
    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

    <!-- Resources -->
    <script src="https://www.amcharts.com/lib/4/core.js"></script>
    <script src="https://www.amcharts.com/lib/4/charts.js"></script>
    <script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>

    <%-- <!-- Chart code -->
    <script>
        am4core.ready(function () {

            // Themes begin
            am4core.useTheme(am4themes_animated);
            // Themes end

            // Create chart instance
            var chart = am4core.create("chartdiv", am4charts.XYChart);
            chart.scrollbarX = new am4core.Scrollbar();

            // Add data
            chart.data = [{
                "country": "USA",
                "visits": 3025000
            }, {
                "country": "China",
                "visits": 1882999
            }, {
                "country": "Japan",
                "visits": 1809999
            }, {
                "country": "Germany",
                "visits": 1322
            }];

            // Create axes
            var categoryAxis = chart.xAxes.push(new am4charts.XYChart3D());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.grid.template.location = 0;
            categoryAxis.renderer.minGridDistance = 30;
            categoryAxis.renderer.labels.template.horizontalCenter = "right";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.renderer.labels.template.rotation = 270;
            categoryAxis.tooltip.disabled = true;
            categoryAxis.renderer.minHeight = 110;

            var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.renderer.minWidth = 50;

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries());
            series.sequencedInterpolation = true;
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.tooltipText = "[{categoryX}: bold]{valueY}[/]";
            series.columns.template.strokeWidth = 0;

            series.tooltip.pointerOrientation = "vertical";

            series.columns.template.column.cornerRadiusTopLeft = 10;
            series.columns.template.column.cornerRadiusTopRight = 10;
            series.columns.template.column.fillOpacity = 0.8;


             var valueLabel = series.bullets.push(new am4charts.LabelBullet());
            valueLabel.label.text = "{visits}";
            valueLabel.label.fontSize = 20;
           // valueLabel.label.horizontalCenter = "left";
            valueLabel.label.dy = -20;

            //// on hover, make corner radiuses bigger
            //var hoverState = series.columns.template.column.states.create("hover");
            //hoverState.properties.cornerRadiusTopLeft = 0;
            //hoverState.properties.cornerRadiusTopRight = 0;
            //hoverState.properties.fillOpacity = 1;

            //series.columns.template.adapter.add("fill", function (fill, target) {
            //    return chart.colors.getIndex(target.dataItem.index);
            //});

           
            // Cursor
            chart.cursor = new am4charts.XYCursor();

        }); // end am4core.ready()
    </script>--%>
    <!-- Chart code -->
    <script>
        am4core.ready(function () {

            // Themes begin
            am4core.useTheme(am4themes_animated);
            // Themes end

            // Create chart instance
            var chart = am4core.create("chartdiv", am4charts.XYChart3D);

            // Add data
            chart.data = [{
                "country": "Project1",
                "visits": 4025999
            }, {
                "country": "Project2",
                "visits": 18829999
            }, {
                "country": "Project3",
                "visits": 180900
            }];

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.rotation = 60;
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "right";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.tooltip.label.rotation = 270;
            categoryAxis.tooltip.label.horizontalCenter = "right";
            categoryAxis.tooltip.label.verticalCenter = "middle";

            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "Expenditure";
            valueAxis.title.fontWeight = "bold";
          //  valueAxis.title.rotation = 20;
            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX}: [bold]{valueY}[/]";
            series.columns.template.fillOpacity = .8;

            var columnTemplate = series.columns.template;
            columnTemplate.strokeWidth = 2;
            columnTemplate.strokeOpacity = 1;
            columnTemplate.stroke = am4core.color("#FFFFFF");

            columnTemplate.adapter.add("fill", (fill, target) => {
                return chart.colors.getIndex(target.dataItem.index);
            })

            columnTemplate.adapter.add("stroke", (stroke, target) => {
                return chart.colors.getIndex(target.dataItem.index);
            })

            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;

            var valueLabel = series.bullets.push(new am4charts.LabelBullet());
            valueLabel.label.text = "{visits}";
            valueLabel.label.fontSize = 20;
            // valueLabel.label.horizontalCenter = "left";
            valueLabel.label.dy = -20;
        }); // end am4core.ready()
    </script>

</body>
</html>
