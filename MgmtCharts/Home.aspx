<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MgmtCharts.Home" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="/Style/style.css" type="text/css">
    <style type="text/css">
        .hide {
            display: none !important;
        }

        .small-box {
            cursor: pointer !important;
        }

        .amcharts-graph-g1 .amcharts-graph-fill {
            filter: url(#blur);
        }

        .amcharts-graph-g2 .amcharts-graph-fill {
            filter: url(#blur);
        }

        .amcharts-cursor-fill {
            filter: url(#shadow);
        }

        #legend {
            width: 200px;
            height: 400px;
            border: 1px solid #eee;
            margin-left: 10px;
            float: left;
        }

            #legend .legend-item {
                margin: 10px;
                font-size: 15px;
                font-weight: bold;
                cursor: pointer;
            }

                #legend .legend-item .legend-value {
                    font-size: 12px;
                    font-weight: normal;
                    margin-left: 22px;
                }

                #legend .legend-item .legend-marker {
                    display: inline-block;
                    width: 12px;
                    height: 12px;
                    border: 1px solid #ccc;
                    margin-right: 10px;
                }

                #legend .legend-item.disabled .legend-marker {
                    opacity: 0.5;
                    background: #ddd;
                }
    </style>
    <script src="/amcharts/amcharts.js" type="text/javascript"></script>
    <script src="/amcharts/pie.js" type="text/javascript"></script>
    <script src="/amcharts/serial.js" type="text/javascript"></script>

</head>
<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="index3.html" class="brand-link">
                <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                    style="opacity: .8">
                <span class="brand-text font-weight-light">MGMT CHARTS</span>
            </a>
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">Management Charts</h1>
                        </div>

                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <!-- Small boxes (Stat box) -->
                    <div class="row">
                        <div class="col-lg-2 col-6">
                            <!-- small box -->
                            <div class="small-box bg-info chart-type-hr">
                                <div class="inner">
                                    <h3>Employees </h3>

                                    <p>150</p>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-users"></i>
                                </div>
                                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                        <div class="col-lg-2 col-6">
                            <!-- small box -->
                            <div class="small-box bg-danger  chart-type-org-chart">
                                <div class="inner">
                                    <h3>Org Chart </h3>

                                    <p>65</p>
                                </div>
                                <div class="icon">
                                    <i class="fa  fa-industry"></i>
                                </div>
                                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                        <!-- ./col -->
                        <div class="col-lg-2 col-6">
                            <!-- small box -->
                            <div class="small-box bg-success chart-type-finance">
                                <div class="inner">
                                    <h3>Budget</h3>

                                    <p>5300</p>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-rupee"></i>
                                </div>
                                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                        <div class="col-lg-2 col-6">
                            <!-- small box -->
                            <div class="small-box bg-warning chart-type-reports">
                                <div class="inner">
                                    <h3>Reports </h3>

                                    <p>4400</p>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-user-secret"></i>
                                </div>
                                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                        <div class="col-lg-2 col-6">
                            <!-- small box -->
                            <div class="small-box bg-danger  chart-type-murasalat">
                                <div class="inner">
                                    <h3>Murasalats </h3>

                                    <p>65</p>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-file-text"></i>
                                </div>
                                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->

                    </div>
                    <!-- /.row -->
                    <!-- Main row -->
                    <div class="row reportinformationrow hrinformationrow chartrow">
                        <!-- right col (We are only adding the ID to make the widgets sortable)-->
                        <section class="col-lg-10 connectedSortable">
                            <!-- Map card -->
                            <div class="card ">
                                <div class="card-header d-flex p-0">
                                    <h3 class="card-title p-3">
                                        <i class="fa  fa-pie-chart mr-1"></i>
                                        FILTERS
                </h3>
                                </div>
                                <div class="card-body p-0">
                                    <div class="directorates">
                                        <button class="btn X-Small  btn-directorate">All</button>
                                        <button class="btn X-Small  btn-directorate">100</button>
                                        <button class="btn X-Small  btn-directorate">110</button>
                                        <button class="btn X-Small  btn-directorate">222</button>
                                        <button class="btn X-Small  btn-directorate">444</button>
                                        <button class="btn X-Small  btn-directorate">666</button>
                                    </div>
                                    <br />
                                    <div class="directorate-dept hide">
                                        <button class="btn X-Small  btn-directorate-dept">015</button>
                                        <button class="btn X-Small  btn-directorate-dept">060</button>
                                        <button class="btn X-Small  btn-directorate-dept">090</button>
                                    </div>
                                    <br />
                                    <div class="directorate-dept-section hide">
                                        <button class="btn X-Small  btn-directorate-dept-sec">016</button>
                                        <button class="btn X-Small  btn-directorate-dept-sec">028</button>
                                        <button class="btn X-Small  btn-directorate-dept-sec">025</button>
                                    </div>

                                </div>
                                <!-- /.card-body-->
                            </div>
                            <!-- /.card -->
                        </section>
                        <!-- right col -->
                    </div>






                </div>
                <!-- Main row -->
                <div class="row hrinformationrow chartrow">
                    <!-- Left col -->
                    <section class="col-lg-6 connectedSortable">
                        <!-- Custom tabs (Charts with tabs)-->
                        <div class="card">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-bar-chart mr-1"></i>
                                    Nationality By Department
                </h3>
                                <%-- <ul class="nav nav-pills ml-auto p-2">
                                        <li class="nav-item">
                                            <a class="nav-link active" href="#revenue-chart" data-toggle="tab">Area</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#sales-chart" data-toggle="tab">Donut</a>
                                        </li>
                                    </ul>--%>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <div class="tab-content p-0">
                                    <div id="barchartnationality" style="width: 100%; height: 400px;"></div>
                                </div>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->


                    </section>
                    <!-- /.Left col -->
                    <!-- right col (We are only adding the ID to make the widgets sortable)-->
                    <section class="col-lg-6 connectedSortable">

                        <!-- Map card -->
                        <div class="card ">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-pie-chart mr-1"></i>
                                    Nationality OverAll
                </h3>
                                <!-- card tools -->
                                <%--<div class="card-tools">
                                        <button type="button"
                                            class="btn btn-primary btn-sm daterange"
                                            data-toggle="tooltip"
                                            title="Date range">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                        <button type="button"
                                            class="btn btn-primary btn-sm"
                                            data-widget="collapse"
                                            data-toggle="tooltip"
                                            title="Collapse">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>--%>
                                <!-- /.card-tools -->
                            </div>
                            <div class="card-body p-0">
                                <div id="nationalitypiechart" style="width: 100%; height: 400px;"></div>
                                <div id="legend"></div>
                            </div>
                            <!-- /.card-body-->
                        </div>
                        <!-- /.card -->




                    </section>
                    <!-- right col -->
                </div>
                <!-- /.row (main row) -->

                <!-- Main row -->
                <div class="row hrinformationrow chartrow">
                    <!-- Left col -->
                    <section class="col-lg-6 connectedSortable">
                        <!-- Custom tabs (Charts with tabs)-->
                        <div class="card">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-bar-chart mr-1"></i>
                                    Grade By Department
                </h3>
                                <%-- <ul class="nav nav-pills ml-auto p-2">
                                        <li class="nav-item">
                                            <a class="nav-link active" href="#revenue-chart" data-toggle="tab">Area</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#sales-chart" data-toggle="tab">Donut</a>
                                        </li>
                                    </ul>--%>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <div class="tab-content p-0">
                                    <div id="barchartgrade" style="width: 100%; height: 400px;"></div>
                                </div>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->


                    </section>
                    <!-- /.Left col -->
                    <!-- right col (We are only adding the ID to make the widgets sortable)-->
                    <section class="col-lg-6 connectedSortable">

                        <!-- Map card -->
                        <div class="card ">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-pie-chart mr-1"></i>
                                    Grade OverAll
                </h3>
                                <!-- card tools -->
                                <%--<div class="card-tools">
                                        <button type="button"
                                            class="btn btn-primary btn-sm daterange"
                                            data-toggle="tooltip"
                                            title="Date range">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                        <button type="button"
                                            class="btn btn-primary btn-sm"
                                            data-widget="collapse"
                                            data-toggle="tooltip"
                                            title="Collapse">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>--%>
                                <!-- /.card-tools -->
                            </div>
                            <div class="card-body p-0">
                                <div id="gradepiechart" style="width: 100%; height: 400px;"></div>
                            </div>
                            <!-- /.card-body-->
                        </div>
                        <!-- /.card -->




                    </section>
                    <!-- right col -->
                </div>
                <!-- /.row (main row) -->


                <!-- Main row -->
                <div class="row hrinformationrow chartrow">

                    <!-- right col (We are only adding the ID to make the widgets sortable)-->
                    <section class="col-lg-10 connectedSortable">

                        <!-- Map card -->
                        <div class="card ">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-pie-chart mr-1"></i>
                                    Leave Statistics
                </h3>
                                <!-- card tools -->
                                <%--<div class="card-tools">
                                        <button type="button"
                                            class="btn btn-primary btn-sm daterange"
                                            data-toggle="tooltip"
                                            title="Date range">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                        <button type="button"
                                            class="btn btn-primary btn-sm"
                                            data-widget="collapse"
                                            data-toggle="tooltip"
                                            title="Collapse">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>--%>
                                <!-- /.card-tools -->
                            </div>
                            <div class="card-body p-0">
                                <div id="leaveinformationdiv" style="width: 100%; height: 400px;"></div>
                            </div>
                            <!-- /.card-body-->
                        </div>
                        <!-- /.card -->




                    </section>
                    <!-- right col -->
                </div>
                <!-- /.row (main row) -->

                <!-- Main row -->
                <div class="row hrinformationrow chartrow">

                    <!-- right col (We are only adding the ID to make the widgets sortable)-->
                    <section class="col-lg-10 connectedSortable">

                        <!-- Map card -->
                        <div class="card ">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-pie-chart mr-1"></i>
                                    RecruitmentByYear
                </h3>
                                <!-- card tools -->
                                <%--<div class="card-tools">
                                        <button type="button"
                                            class="btn btn-primary btn-sm daterange"
                                            data-toggle="tooltip"
                                            title="Date range">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                        <button type="button"
                                            class="btn btn-primary btn-sm"
                                            data-widget="collapse"
                                            data-toggle="tooltip"
                                            title="Collapse">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>--%>
                                <!-- /.card-tools -->
                            </div>
                            <div class="card-body p-0">
                                <div id="barchartrecruitmentbyyear" style="width: 100%; height: 400px;"></div>
                            </div>
                            <!-- /.card-body-->
                        </div>
                        <!-- /.card -->




                    </section>
                    <!-- right col -->
                </div>
                <!-- /.row (main row) -->

                <!-- Main row -->
                <div class="row orgchartrow chartrow">

                    <!-- right col (We are only adding the ID to make the widgets sortable)-->
                    <section class="col-lg-10 connectedSortable">

                        <!-- Map card -->
                        <div class="card ">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-pie-chart mr-1"></i>
                                    Age Chart
                </h3>
                                <!-- card tools -->
                                <%--<div class="card-tools">
                                        <button type="button"
                                            class="btn btn-primary btn-sm daterange"
                                            data-toggle="tooltip"
                                            title="Date range">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                        <button type="button"
                                            class="btn btn-primary btn-sm"
                                            data-widget="collapse"
                                            data-toggle="tooltip"
                                            title="Collapse">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>--%>
                                <!-- /.card-tools -->
                            </div>
                            <div class="card-body p-0">
                                <div id="ageChart" style="width: 100%; height: 400px;"></div>
                            </div>
                            <!-- /.card-body-->
                        </div>
                        <!-- /.card -->




                    </section>
                    <!-- right col -->
                </div>
                <!-- /.row (main row) -->

                <!-- Main row -->
                <div class="row budgetinformationrow chartrow">

                    <!-- right col (We are only adding the ID to make the widgets sortable)-->
                    <section class="col-lg-6 connectedSortable">

                        <!-- Map card -->
                        <div class="card ">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-pie-chart mr-1"></i>
                                    DRUM HISTORY CHART
                </h3>
                                <!-- card tools -->
                                <%--<div class="card-tools">
                                        <button type="button"
                                            class="btn btn-primary btn-sm daterange"
                                            data-toggle="tooltip"
                                            title="Date range">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                        <button type="button"
                                            class="btn btn-primary btn-sm"
                                            data-widget="collapse"
                                            data-toggle="tooltip"
                                            title="Collapse">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>--%>
                                <!-- /.card-tools -->
                            </div>
                            <div class="card-body p-0">
                                <div id="DrumChartDiv" style="width: 100%; height: 400px;"></div>
                            </div>
                            <!-- /.card-body-->
                        </div>
                        <!-- /.card -->




                    </section>
                    <!-- right col (We are only adding the ID to make the widgets sortable)-->
                    <section class="col-lg-6 connectedSortable">

                        <!-- Map card -->
                        <div class="card ">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-pie-chart mr-1"></i>
                                    OVER ALL BUDGET CHART
                </h3>
                                <!-- card tools -->
                                <%--<div class="card-tools">
                                        <button type="button"
                                            class="btn btn-primary btn-sm daterange"
                                            data-toggle="tooltip"
                                            title="Date range">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                        <button type="button"
                                            class="btn btn-primary btn-sm"
                                            data-widget="collapse"
                                            data-toggle="tooltip"
                                            title="Collapse">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>--%>
                                <!-- /.card-tools -->
                            </div>
                            <div class="card-body p-0">
                                <div id="PieChartForBudget" style="width: 100%; height: 400px;"></div>
                            </div>
                            <!-- /.card-body-->
                        </div>
                        <!-- /.card -->




                    </section>
                    <!-- right col -->
                </div>
                <!-- /.row (main row) -->

                <!-- Main row -->
                <div class="row budgetinformationrow chartrow">

                    <!-- right col (We are only adding the ID to make the widgets sortable)-->
                    <section class="col-lg-10 connectedSortable">

                        <!-- Map card -->
                        <div class="card ">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-pie-chart mr-1"></i>
                                    Category Based Chart
                </h3>
                                <!-- card tools -->
                                <%--<div class="card-tools">
                                        <button type="button"
                                            class="btn btn-primary btn-sm daterange"
                                            data-toggle="tooltip"
                                            title="Date range">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                        <button type="button"
                                            class="btn btn-primary btn-sm"
                                            data-widget="collapse"
                                            data-toggle="tooltip"
                                            title="Collapse">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>--%>
                                <!-- /.card-tools -->
                            </div>
                            <div class="card-body p-0">
                                <div id="budgetcategorychartdiv" style="width: 100%; height: 400px;"></div>
                            </div>
                            <!-- /.card-body-->
                        </div>
                        <!-- /.card -->




                    </section>
                    <!-- right col -->
                </div>
                <!-- /.row (main row) -->

                <!-- Main row -->
                <div class="row budgetinformationrow chartrow">

                    <!-- right col (We are only adding the ID to make the widgets sortable)-->
                    <section class="col-lg-10 connectedSortable">

                        <!-- Map card -->
                        <div class="card ">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-pie-chart mr-1"></i>
                                    Sub-Category Based Chart
                </h3>
                                <!-- card tools -->
                                <div class="card-tools">
                                    <button type="button"
                                        class="btn btn-primary btn-sm btn-category">
                                        Category 1
                                    </button>
                                    <button type="button"
                                        class="btn btn-primary btn-sm btn-category">
                                        Category 2
                                    </button>
                                    <button type="button"
                                        class="btn btn-primary btn-sm btn-category">
                                        Category 3
                                    </button>
                                </div>
                                <!-- /.card-tools -->
                            </div>
                            <div class="card-body p-0">
                                <div id="budgetsubcategorychartdiv" style="width: 100%; height: 400px;"></div>
                            </div>
                            <!-- /.card-body-->
                        </div>
                        <!-- /.card -->




                    </section>
                    <!-- right col -->
                </div>
                <!-- /.row (main row) -->

                <!-- Main row -->
                <div class="row reportinformationrow chartrow">

                    <!-- right col (We are only adding the ID to make the widgets sortable)-->
                    <section class="col-lg-10 connectedSortable">

                        <!-- Map card -->
                        <div class="card ">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-pie-chart mr-1"></i>
                                    DEPT REPORT COUNT
                </h3>
                                <!-- card tools -->
                                <%--<div class="card-tools">
                                        <button type="button"
                                            class="btn btn-primary btn-sm daterange"
                                            data-toggle="tooltip"
                                            title="Date range">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                        <button type="button"
                                            class="btn btn-primary btn-sm"
                                            data-widget="collapse"
                                            data-toggle="tooltip"
                                            title="Collapse">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>--%>
                                <!-- /.card-tools -->
                            </div>
                            <div class="card-body p-0">
                                <div id="reportbarbydept" style="width: 100%; height: 400px;"></div>
                            </div>
                            <!-- /.card-body-->
                        </div>
                        <!-- /.card -->




                    </section>
                    <!-- right col -->
                </div>
                <!-- /.row (main row) -->

                <!-- Main row -->
                <div class="row reportinformationrow chartrow">

                    <!-- right col (We are only adding the ID to make the widgets sortable)-->
                    <section class="col-lg-10 connectedSortable">

                        <!-- Map card -->
                        <div class="card ">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-pie-chart mr-1"></i>
                                    YEAR HISTORY CHART
                </h3>
                                <!-- card tools -->
                                <%--<div class="card-tools">
                                        <button type="button"
                                            class="btn btn-primary btn-sm daterange"
                                            data-toggle="tooltip"
                                            title="Date range">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                        <button type="button"
                                            class="btn btn-primary btn-sm"
                                            data-widget="collapse"
                                            data-toggle="tooltip"
                                            title="Collapse">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>--%>
                                <!-- /.card-tools -->
                            </div>
                            <div class="card-body p-0">
                                <div id="reportsyearhistorychartdiv" style="width: 100%; height: 400px;"></div>
                            </div>
                            <!-- /.card-body-->
                        </div>
                        <!-- /.card -->




                    </section>
                    <!-- right col -->
                </div>
                <!-- /.row (main row) -->

                <!-- Main row -->
                <div class="row orgchartrow chartrow">

                    <!-- right col (We are only adding the ID to make the widgets sortable)-->
                    <section class="col-lg-10 connectedSortable">

                        <!-- Map card -->
                        <div class="card ">
                            <div class="card-header d-flex p-0">
                                <h3 class="card-title p-3">
                                    <i class="fa  fa-pie-chart mr-1"></i>
                                    Orgnaization Chart
                </h3>

                            </div>
                            <div class="card-body p-0">
                                <div id="org-chart-container" style="width: 100%; height: 600px;"></div>
                            </div>
                            <!-- /.card-body-->
                        </div>
                        <!-- /.card -->




                    </section>
                    <!-- right col -->
                </div>
                <!-- /.row (main row) -->

                <div>
                    <div class="modal " id="modal-default">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title">Modal title</h4>
                                </div>
                                <div class="modal-body">
                                    <p>One fine body...</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>

                </div>

                <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>



    </div>

    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button)
</script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="plugins/morris/morris.min.js"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="plugins/knob/jquery.knob.js"></script>
    <!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.js"></script>

    <link rel="stylesheet" href="/plugins/orgchart/css/font-awesome.min.css">
    <link rel="stylesheet" href="/plugins/orgchart/css/jquery.orgchart.css">
    <link rel="stylesheet" href="/plugins/orgchart/css/style.css">

    <script type="text/javascript" src="/plugins/orgchart/js/jquery.mockjax.min.js"></script>
    <script type="text/javascript" src="/plugins/orgchart/js/jquery.orgchart.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            $('.btn-directorate').click(function () {
                $('.directorate-dept').addClass('hide');
                $('.directorate-dept-section').addClass('hide');
                if ($(this).text() != 'All') {
                    $('.directorate-dept').removeClass('hide');
                }
                return false;
            });
            $('.btn-directorate-dept').click(function () {
                $('.directorate-dept-section').removeClass('hide');
                return false;
            });

            $('.chart-type-hr').click(function () {
                $('.chartrow').addClass('hide');
                $('.hrinformationrow').removeClass('hide');
                $('a[title="JavaScript charts"]').addClass('hide');
                $('a[title="JavaScript charts"]').remove();
                return false;
            });
            $('.chart-type-finance').click(function () {
                $('.chartrow').addClass('hide');
                $('.budgetinformationrow').removeClass('hide');
                $('a[title="JavaScript charts"]').addClass('hide');
                $('a[title="JavaScript charts"]').remove();
                return false;
            });
            $('.chart-type-reports').click(function () {
                $('.chartrow').addClass('hide');
                $('.reportinformationrow').removeClass('hide');
                $('a[title="JavaScript charts"]').addClass('hide');
                $('a[title="JavaScript charts"]').remove();
                return false;
            });
            $('.chart-type-murasalat').click(function () {
                $('.chartrow').addClass('hide');
                $('a[title="JavaScript charts"]').addClass('hide');
                $('a[title="JavaScript charts"]').remove();
                return false;
            });
            $('.chart-type-org-chart').click(function () {
                $('.chartrow').addClass('hide');
                $('.orgchartrow').removeClass('hide');
                $('a[title="JavaScript charts"]').addClass('hide');
                $('a[title="JavaScript charts"]').remove();
                return false;
            });

            $('.chartrow').addClass('hide');
            $('.hrinformationrow').removeClass('hide');
            $('a[title="JavaScript charts"]').addClass('hide');
            $('a[title="JavaScript charts"]').remove();
        });
        function getRandomColor() {
            var letters = '0123456789ABCDEF';
            var color = '#';
            for (var i = 0; i < 6; i++) {
                color += letters[Math.floor(Math.random() * 16)];
            }
            return color;
        }
        function getRandomInt(min, max) {
            return Math.floor(Math.random() * (max - min + 1)) + min;
        }
    </script>
    <script>
        var nchart = AmCharts.makeChart("nationalitypiechart", {
            "type": "pie",
            "dataProvider": [{
                "country": "Qatar",
                "employees": 4200
            }, {
                "country": "Pakistan",
                "employees": 600
            }, {
                "country": "Indian",
                "employees": 500
            }, {
                "country": "Phillipines",
                "employees": 400
            }, {
                "country": "Bangladesh",
                "employees": 108.3
            }, {
                "country": "Egypt",
                "employees": 12
            }, {
                "country": "Nepal",
                "employees": 2
            }],
            "titleField": "country",
            "valueField": "employees",
            "labelRadius": 5,
            "labelText": "[[title]]",
            "marginTop": 0,
            "marginBottom": 0,
            "depth3D": 15,
            "angle": 30,
            "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>"

        });

        nchart.addListener('rendered', function (event) {
            // populate our custom legend when chart renders

            nchart.customLegend = document.getElementById('legend');
            for (var i in nchart.chartData) {
                var row = nchart.chartData[i];
                var color = nchart.colors[i];
                var percent = Math.round(row.percents * 100) / 100;
                var value = row.value;
                legend.innerHTML += '<div class="legend-item" id="legend-item-' + i + '" onclick="toggleSlice(' + i + ');" onmouseover="hoverSlice(' + i + ');" onmouseout="blurSlice(' + i + ');" style="color: ' + color + ';"><div class="legend-marker" style="background: ' + color + '"></div>' + row.title + '<div class="legend-value">' + value + ' | ' + percent + '%</div></div>';
            }
        });
        nchart.write("nationalitypiechart");
        function toggleSlice(item) {
            nchart.clickSlice(item);
        }

        function hoverSlice(item) {
            nchart.rollOverSlice(item);
        }

        function blurSlice(item) {
            nchart.rollOutSlice(item);
        }

    </script>

    <script>
        var nationalitychart;
        var nationalityChartData = [
            {
                "dept": 100,
                "qatarymale": 2.5,
                "qataryfemale": 2.5,
                "expatmale": 0.1,
                "expatfemale": 0.3
            },
            {
                "dept": 110,
                "qatarymale": 2.6,
                "qataryfemale": 2.7,
                "expatmale": 1.2,
                "expatfemale": 0.1
            },
            {
                "dept": 222,
                "qatarymale": 2.8,
                "qataryfemale": 0.9,
                "expatmale": 1.4,
                "expatfemale": 0.2
            }
        ];

        AmCharts.ready(function () {
            // SERIALL CHART
            nationalitychart = new AmCharts.AmSerialChart();
            nationalitychart.dataProvider = nationalityChartData;
            nationalitychart.categoryField = "dept";
            nationalitychart.plotAreaBorderAlpha = 0.2;
            nationalitychart.rotate = false;
            nationalitychart.depth3D = 20;
            nationalitychart.angle = 30;
            // AXES
            // Category
            var categoryAxis = nationalitychart.categoryAxis;
            categoryAxis.gridAlpha = 0.1;
            categoryAxis.axisAlpha = 0;
            categoryAxis.gridPosition = "start";

            // value
            var valueAxis = new AmCharts.ValueAxis();
            valueAxis.stackType = "regular";
            valueAxis.gridAlpha = 0.1;
            valueAxis.axisAlpha = 0;
            nationalitychart.addValueAxis(valueAxis);

            // GRAPHS
            // firstgraph
            var nationalityGraph = new AmCharts.AmGraph();
            nationalityGraph.title = "qatarymale";
            nationalityGraph.labelText = "[[value]]";
            nationalityGraph.valueField = "qatarymale";
            nationalityGraph.type = "column";
            nationalityGraph.lineAlpha = 0;
            nationalityGraph.fillAlphas = 1;
            nationalityGraph.lineColor = getRandomColor();
            nationalityGraph.balloonText = "<b><span style='color:#C72C95'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            nationalityGraph.labelPosition = "middle";
            nationalitychart.addGraph(nationalityGraph);

            // second nationalityGraph
            nationalityGraph = new AmCharts.AmGraph();
            nationalityGraph.title = "qatar female";
            nationalityGraph.labelText = "[[value]]";
            nationalityGraph.valueField = "qataryfemale";
            nationalityGraph.type = "column";
            nationalityGraph.lineAlpha = 0;
            nationalityGraph.fillAlphas = 1;
            nationalityGraph.lineColor = getRandomColor();
            nationalityGraph.balloonText = "<b><span style='color:#afbb86'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            nationalityGraph.labelPosition = "middle";
            nationalitychart.addGraph(nationalityGraph);

            // third nationalityGraph
            nationalityGraph = new AmCharts.AmGraph();
            nationalityGraph.title = "Expat Male";
            nationalityGraph.labelText = "[[value]]";
            nationalityGraph.valueField = "expatmale";
            nationalityGraph.type = "column";
            nationalityGraph.lineAlpha = 0;
            nationalityGraph.fillAlphas = 1;
            nationalityGraph.lineColor = getRandomColor();
            nationalityGraph.balloonText = "<b><span style='color:#74bdb0'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            nationalityGraph.labelPosition = "middle";
            nationalitychart.addGraph(nationalityGraph);

            // fourth nationalityGraph
            nationalityGraph = new AmCharts.AmGraph();
            nationalityGraph.title = "Expat Female";
            nationalityGraph.labelText = "[[value]]";
            nationalityGraph.valueField = "expatfemale";
            nationalityGraph.type = "column";
            nationalityGraph.lineAlpha = 0;
            nationalityGraph.fillAlphas = 1;
            nationalityGraph.lineColor = getRandomColor();
            nationalityGraph.balloonText = "<b><span style='color:#69A55C'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            nationalityGraph.labelPosition = "middle";
            nationalitychart.addGraph(nationalityGraph);



            // LEGEND
            var legend = new AmCharts.AmLegend();
            legend.position = "right";
            legend.borderAlpha = 0.3;
            legend.horizontalGap = 10;
            legend.switchType = "v";
            nationalitychart.addLegend(legend);
            nationalitychart.addListener("clickGraphItem", handlenationlitygraphclick);
            nationalitychart.creditsPosition = "top-right";
            nationalitychart.write("barchartnationality");
        });

        function handlenationlitygraphclick(event) {
            //alert(event.item.category + ' ' + event.target.valueField);
            $('#modal-default').modal('show');
        }
        </script>


    <script>
        AmCharts.makeChart("gradepiechart", {
            "type": "pie",
            "dataProvider": [{
                "Grade": "QatarMaleOfficer",
                "employees": 4200
            }, {
                "Grade": "QatayMaleNonOffice",
                "employees": 600
            }, {
                "Grade": "QataryFemaleOfficer",
                "employees": 500
            }, {
                "Grade": "QataryFemaleNonOfficer",
                "employees": 400
            }, {
                "Grade": "ExpatMaleSeniorStaff",
                "employees": 108.3
            }, {
                "Grade": "ExpatMaleJuniorStaff",
                "employees": 90
            }, {
                "Grade": "ExpatFemaleSeniorStaff",
                "employees": 20
            }, {
                "Grade": "ExpatFemaleJuniorStaff",
                "employees": 20
            }],
            "titleField": "Grade",
            "valueField": "employees",
            "innerRadius": "30%",
            // this makes the chart 3D
            "depth3D": 15,
            "angle": 30,
            "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
            "legend": {
                "align": "center",
                "markerType": "circle"
            }

        });
    </script>

    <script>
        var gradechart;
        var gradeChartData = [
            {
                "dept": 100,
                "QatarMaleOfficer": 3.5,
                "QatayMaleNonOffice": 2.5,
                "QataryFemaleOfficer": 0.1,
                "QataryFemaleNonOfficer": 0.3,
                "ExpatMaleSeniorStaff": 1.5,
                "ExpatMaleJuniorStaff": 1.5,
                "ExpatFemaleSeniorStaff": 0.1,
                "ExpatFemaleJuniorStaff": 0.3
            },
            {
                "dept": 110,
                "QatarMaleOfficer": 1.5,
                "QatayMaleNonOffice": 2.5,
                "QataryFemaleOfficer": 2.1,
                "QataryFemaleNonOfficer": 1.3,
                "ExpatMaleSeniorStaff": 1.5,
                "ExpatMaleJuniorStaff": 1.5,
                "ExpatFemaleSeniorStaff": 0.1,
                "ExpatFemaleJuniorStaff": 0.3
            },
            {
                "dept": 222,
                "QatarMaleOfficer": 2.5,
                "QatayMaleNonOffice": 2.5,
                "QataryFemaleOfficer": 1.1,
                "QataryFemaleNonOfficer": 2.3,
                "ExpatMaleSeniorStaff": 1.5,
                "ExpatMaleJuniorStaff": 1.5,
                "ExpatFemaleSeniorStaff": 0.1,
                "ExpatFemaleJuniorStaff": 0.3
            }
        ];

        AmCharts.ready(function () {
            // SERIALL CHART
            gradechart = new AmCharts.AmSerialChart();
            gradechart.dataProvider = gradeChartData;
            gradechart.categoryField = "dept";
            gradechart.plotAreaBorderAlpha = 0.2;
            gradechart.rotate = false;
            gradechart.depth3D = 20;
            gradechart.angle = 30;
            // AXES
            // Category
            var categoryAxis = gradechart.categoryAxis;
            categoryAxis.gridAlpha = 0.1;
            categoryAxis.axisAlpha = 0;
            categoryAxis.gridPosition = "start";

            // value
            var valueAxis = new AmCharts.ValueAxis();
            valueAxis.stackType = "regular";
            valueAxis.gridAlpha = 0.1;
            valueAxis.axisAlpha = 0;
            gradechart.addValueAxis(valueAxis);

            // GRAPHS
            // firstgraph
            var gradeGraph = new AmCharts.AmGraph();
            gradeGraph.title = "QatarMaleOfficer";
            gradeGraph.labelText = "[[value]]";
            gradeGraph.valueField = "QatarMaleOfficer";
            gradeGraph.type = "column";
            gradeGraph.lineAlpha = 0;
            gradeGraph.fillAlphas = 1;
            gradeGraph.lineColor = "#C72C95";
            gradeGraph.balloonText = "<b><span style='color:#C72C95'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            gradeGraph.labelPosition = "middle";
            gradechart.addGraph(gradeGraph);

            // second gradeGraph
            gradeGraph = new AmCharts.AmGraph();
            gradeGraph.title = "QatayMaleNonOffice";
            gradeGraph.labelText = "[[value]]";
            gradeGraph.valueField = "QatayMaleNonOffice";
            gradeGraph.type = "column";
            gradeGraph.lineAlpha = 0;
            gradeGraph.fillAlphas = 1;
            gradeGraph.lineColor = "#D8E0BD";
            gradeGraph.balloonText = "<b><span style='color:#afbb86'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            gradeGraph.labelPosition = "middle";
            gradechart.addGraph(gradeGraph);

            // third gradeGraph
            gradeGraph = new AmCharts.AmGraph();
            gradeGraph.title = "QataryFemaleOfficer";
            gradeGraph.labelText = "[[value]]";
            gradeGraph.valueField = "QataryFemaleOfficer";
            gradeGraph.type = "column";
            gradeGraph.lineAlpha = 0;
            gradeGraph.fillAlphas = 1;
            gradeGraph.lineColor = "#B3DBD4";
            gradeGraph.balloonText = "<b><span style='color:#74bdb0'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            gradeGraph.labelPosition = "middle";
            gradechart.addGraph(gradeGraph);

            // fourth gradeGraph
            gradeGraph = new AmCharts.AmGraph();
            gradeGraph.title = "QataryFemaleNonOfficer";
            gradeGraph.labelText = "[[value]]";
            gradeGraph.valueField = "QataryFemaleNonOfficer";
            gradeGraph.type = "column";
            gradeGraph.lineAlpha = 0;
            gradeGraph.fillAlphas = 1;
            gradeGraph.lineColor = "#69A55C";
            gradeGraph.balloonText = "<b><span style='color:#69A55C'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            gradeGraph.labelPosition = "middle";
            gradechart.addGraph(gradeGraph);



            // fifth gradeGraph
            gradeGraph = new AmCharts.AmGraph();
            gradeGraph.title = "ExpatMaleSeniorStaff";
            gradeGraph.labelText = "[[value]]";
            gradeGraph.valueField = "ExpatMaleSeniorStaff";
            gradeGraph.type = "column";
            gradeGraph.lineAlpha = 0;
            gradeGraph.fillAlphas = 1;
            gradeGraph.lineColor = "#B5B8D3";
            gradeGraph.balloonText = "<b><span style='color:#69A55C'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            gradeGraph.labelPosition = "middle";
            gradechart.addGraph(gradeGraph);


            // 6 gradeGraph
            gradeGraph = new AmCharts.AmGraph();
            gradeGraph.title = "ExpatMaleJuniorStaff";
            gradeGraph.labelText = "[[value]]";
            gradeGraph.valueField = "ExpatMaleJuniorStaff";
            gradeGraph.type = "column";
            gradeGraph.lineAlpha = 0;
            gradeGraph.fillAlphas = 1;
            gradeGraph.lineColor = "#69A55C";
            gradeGraph.balloonText = "<b><span style='color:#69A55C'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            gradeGraph.labelPosition = "middle";
            gradechart.addGraph(gradeGraph);


            // 7th gradeGraph
            gradeGraph = new AmCharts.AmGraph();
            gradeGraph.title = "ExpatFemaleSeniorStaff";
            gradeGraph.labelText = "[[value]]";
            gradeGraph.valueField = "ExpatFemaleSeniorStaff";
            gradeGraph.type = "column";
            gradeGraph.lineAlpha = 0;
            gradeGraph.fillAlphas = 1;
            gradeGraph.lineColor = "#F4E23B";
            gradeGraph.balloonText = "<b><span style='color:#69A55C'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            gradeGraph.labelPosition = "middle";
            gradechart.addGraph(gradeGraph);


            // 8th gradeGraph
            gradeGraph = new AmCharts.AmGraph();
            gradeGraph.title = "ExpatFemaleJuniorStaff";
            gradeGraph.labelText = "[[value]]";
            gradeGraph.valueField = "ExpatFemaleJuniorStaff";
            gradeGraph.type = "column";
            gradeGraph.lineAlpha = 0;
            gradeGraph.fillAlphas = 1;
            gradeGraph.lineColor = "#89A55C";
            gradeGraph.balloonText = "<b><span style='color:#69A55C'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            gradeGraph.labelPosition = "middle";
            gradechart.addGraph(gradeGraph);

            // LEGEND
            var legend = new AmCharts.AmLegend();
            legend.position = "right";
            legend.borderAlpha = 0.3;
            legend.horizontalGap = 10;
            legend.switchType = "v";
            gradechart.addLegend(legend);

            gradechart.creditsPosition = "top-right";
            gradechart.write("barchartgrade");
        });


        </script>


    <script>
        var recruitmentchart;
        var recruitmentChartData = [
            {
                "year": 2018,
                "qatarymale": 2.5,
                "qataryfemale": 2.5,
                "expatmale": 0.1,
                "expatfemale": 0.3
            },
            {
                "year": 2017,
                "qatarymale": 2.6,
                "qataryfemale": 2.7,
                "expatmale": 1.2,
                "expatfemale": 0.1
            },
            {
                "year": 2016,
                "qatarymale": 2.8,
                "qataryfemale": 0.9,
                "expatmale": 1.4,
                "expatfemale": 0.2
            }
        ];

        AmCharts.ready(function () {
            // SERIALL CHART
            recruitmentchart = new AmCharts.AmSerialChart();
            recruitmentchart.dataProvider = recruitmentChartData;
            recruitmentchart.categoryField = "year";
            recruitmentchart.plotAreaBorderAlpha = 0.2;
            recruitmentchart.rotate = true;
            recruitmentchart.depth3D = 20;
            recruitmentchart.angle = 30;
            // AXES
            // Category
            var categoryAxis = recruitmentchart.categoryAxis;
            categoryAxis.gridAlpha = 0.1;
            categoryAxis.axisAlpha = 0;
            categoryAxis.gridPosition = "start";

            // value
            var valueAxis = new AmCharts.ValueAxis();
            valueAxis.stackType = "regular";
            valueAxis.gridAlpha = 0.1;
            valueAxis.axisAlpha = 0;
            recruitmentchart.addValueAxis(valueAxis);

            // GRAPHS
            // firstgraph
            var recruitmentGraph = new AmCharts.AmGraph();
            recruitmentGraph.title = "qatarymale";
            recruitmentGraph.labelText = "[[value]]";
            recruitmentGraph.valueField = "qatarymale";
            recruitmentGraph.type = "column";
            recruitmentGraph.lineAlpha = 0;
            recruitmentGraph.fillAlphas = 1;
            recruitmentGraph.lineColor = getRandomColor();
            recruitmentGraph.balloonText = "<b><span style='color:#C72C95'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            recruitmentGraph.labelPosition = "middle";
            recruitmentchart.addGraph(recruitmentGraph);

            // second recruitmentGraph
            recruitmentGraph = new AmCharts.AmGraph();
            recruitmentGraph.title = "qatar female";
            recruitmentGraph.labelText = "[[value]]";
            recruitmentGraph.valueField = "qataryfemale";
            recruitmentGraph.type = "column";
            recruitmentGraph.lineAlpha = 0;
            recruitmentGraph.fillAlphas = 1;
            recruitmentGraph.lineColor = getRandomColor();
            recruitmentGraph.balloonText = "<b><span style='color:#afbb86'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            recruitmentGraph.labelPosition = "middle";
            recruitmentchart.addGraph(recruitmentGraph);

            // third recruitmentGraph
            recruitmentGraph = new AmCharts.AmGraph();
            recruitmentGraph.title = "Expat Male";
            recruitmentGraph.labelText = "[[value]]";
            recruitmentGraph.valueField = "expatmale";
            recruitmentGraph.type = "column";
            recruitmentGraph.lineAlpha = 0;
            recruitmentGraph.fillAlphas = 1;
            recruitmentGraph.lineColor = getRandomColor()
            recruitmentGraph.balloonText = "<b><span style='color:#74bdb0'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            recruitmentGraph.labelPosition = "middle";
            recruitmentchart.addGraph(recruitmentGraph);

            // fourth recruitmentGraph
            recruitmentGraph = new AmCharts.AmGraph();
            recruitmentGraph.title = "Expat Female";
            recruitmentGraph.labelText = "[[value]]";
            recruitmentGraph.valueField = "expatfemale";
            recruitmentGraph.type = "column";
            recruitmentGraph.lineAlpha = 0;
            recruitmentGraph.fillAlphas = 1;
            recruitmentGraph.lineColor = getRandomColor();
            recruitmentGraph.balloonText = "<b><span style='color:#69A55C'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            recruitmentGraph.labelPosition = "middle";
            recruitmentchart.addGraph(recruitmentGraph);



            // LEGEND
            var legend = new AmCharts.AmLegend();
            legend.position = "right";
            legend.borderAlpha = 0.3;
            legend.horizontalGap = 10;
            legend.switchType = "v";
            recruitmentchart.addLegend(legend);

            recruitmentchart.creditsPosition = "top-right";
            recruitmentchart.write("barchartrecruitmentbyyear");
        });


        </script>
    <script>

        var chart = AmCharts.makeChart("ageChart", {
            "type": "serial",
            "theme": "light",
            "rotate": true,
            "marginBottom": 50,
            "dataProvider": [{
                "age": "85+",
                "male": -0.1,
                "female": 0.3,
                "emale": -0.3,
                "efemale": 0.2,
            }, {
                "age": "80-54",
                "male": -0.32,
                "female": 0.43,
                "emale": -0.2,
                "efemale": 0.3
            }],
            "startDuration": 1,
            "graphs": [{
                "fillAlphas": 0.8,
                "lineAlpha": 0.2,
                "type": "column",
                "valueField": "male",
                "title": "Male",
                "labelText": "[[value]]",
                "clustered": true,
                "labelFunction": function (item) {
                    return Math.abs(item.values.value);
                },
                "balloonFunction": function (item) {
                    return item.category + ": " + Math.abs(item.values.value) + "%";
                }
            }, {
                "fillAlphas": 0.8,
                "lineAlpha": 0.2,
                "type": "column",
                "valueField": "female",
                "title": "Female",
                "labelText": "[[value]]",
                "clustered": true,
                "labelFunction": function (item) {
                    return Math.abs(item.values.value);
                },
                "balloonFunction": function (item) {
                    return item.category + ": " + Math.abs(item.values.value) + "%";
                }
            },
            {
                "fillAlphas": 0.8,
                "lineAlpha": 0.2,
                "type": "column",
                "valueField": "emale",
                "title": "E-Male",
                "labelText": "[[value]]",
                "clustered": true,
                "labelFunction": function (item) {
                    return Math.abs(item.values.value);
                },
                "balloonFunction": function (item) {
                    return item.category + ": " + Math.abs(item.values.value) + "%";
                }
            }, {
                "fillAlphas": 0.8,
                "lineAlpha": 0.2,
                "type": "column",
                "valueField": "efemale",
                "title": "E-Female",
                "labelText": "[[value]]",
                "clustered": true,
                "labelFunction": function (item) {
                    return Math.abs(item.values.value);
                },
                "balloonFunction": function (item) {
                    return item.category + ": " + Math.abs(item.values.value) + "%";
                }
            }],
            "categoryField": "age",
            "categoryAxis": {
                "gridPosition": "start",
                "gridAlpha": 0.2,
                "axisAlpha": 0
            },
            "valueAxes": [{
                "gridAlpha": 0,
                "ignoreAxisWidth": true,
                "labelFunction": function (value) {
                    return Math.abs(value) + '%';
                },
                "guides": [{
                    "value": 0,
                    "lineAlpha": 0.2
                }]
            }],
            "balloon": {
                "fixedPosition": true
            },
            "legend": {
                "align": "center",
                "markerType": "circle"
            },
            "chartCursor": {
                "valueBalloonsEnabled": false,
                "cursorAlpha": 0.05,
                "fullWidth": true
            },
            "allLabels": [{
                "text": "Male",
                "x": "28%",
                "y": "97%",
                "bold": true,
                "align": "middle"
            }, {
                "text": "Female",
                "x": "75%",
                "y": "97%",
                "bold": true,
                "align": "middle"
            }],
            "export": {
                "enabled": true
            }

        });
    </script>
    <script>

        var leavechart = AmCharts.makeChart("leaveinformationdiv", {
            "type": "serial",
            "theme": "light",
            "categoryField": "dept",
            "rotate": true,
            "depth3D": 20,
            "angle": 30,
            "startDuration": 1,
            "categoryAxis": {
                "gridPosition": "start",
                "position": "left"
            },
            "listeners": [{
                "event": "clickGraphItem",
                "method": function (event) {

                    //  alert(event.item.category + event.target.valueField);
                    $('#modal-default').modal('show');
                }
            }],
            "trendLines": [],
            "graphs": [
                {
                    "balloonText": "Available:[[value]]",
                    "fillAlphas": 0.8,
                    "id": "AmGraph-1",
                    "lineAlpha": 0.2,
                    "title": "Available",
                    "type": "column",
                    "valueField": "Available",
                    "lineColor": getRandomColor()
                },
                {
                    "balloonText": "Leave:[[value]]",
                    "fillAlphas": 0.8,
                    "id": "AmGraph-2",
                    "lineAlpha": 0.2,
                    "title": "Leave",
                    "type": "column",
                    "valueField": "Leave",
                    "lineColor": getRandomColor()
                }
            ],
            "guides": [],
            "valueAxes": [
                {
                    "id": "ValueAxis-1",
                    "position": "top",
                    "axisAlpha": 0
                }
            ],
            "allLabels": [],
            "balloon": {},
            "titles": [],
            "dataProvider": [
                {
                    "dept": 100,
                    "Available": 230.5,
                    "Leave": 18.1
                },
                {
                    "dept": 110,
                    "Available": 260.2,
                    "Leave": 22.8
                },
                {
                    "dept": 222,
                    "Available": 300.1,
                    "Leave": 23.9
                },
                {
                    "dept": 444,
                    "Available": 290.5,
                    "Leave": 25.1
                },
                {
                    "dept": 666,
                    "Available": 240.6,
                    "Leave": 25
                }
            ],
            "export": {
                "enabled": true
            }

        });

        // LEGEND
        var legend = new AmCharts.AmLegend();
        legend.position = "right";
        legend.borderAlpha = 0.3;
        legend.horizontalGap = 10;
        legend.switchType = "v";
        leavechart.addLegend(legend);
    </script>
    <script>

        var rptChartData = [{
            "year": 2010,
            "cars": 1691,
            "motorcycles": 737

        }, {
            "year": 2011,
            "cars": 1098,
            "motorcycles": 680,
            "reportCount": 910
        }, {
            "year": 2012,
            "cars": 975,
            "motorcycles": 664,
            "reportCount": 670
        }, {
            "year": 2013,
            "cars": 1246,
            "motorcycles": 648,
            "reportCount": 930
        }, {
            "year": 2014,
            "cars": 1218,
            "motorcycles": 637,
            "reportCount": 1010
        }, {
            "year": 2015,
            "cars": 1913,
            "motorcycles": 133,
            "reportCount": 1770
        }, {
            "year": 2016,
            "cars": 1299,
            "motorcycles": 621,
            "reportCount": 820
        }, {
            "year": 2017,
            "cars": 1110,
            "motorcycles": 10,
            "reportCount": 1050
        }, {
            "year": 2018,
            "cars": 765,
            "motorcycles": 232,
            "reportCount": 650
        }, {
            "year": 2019,
            "cars": 1145,
            "motorcycles": 219,
            "reportCount": 780
        }];

        var chart = AmCharts.makeChart("reportsyearhistorychartdiv", {
            "type": "serial",
            "fontFamily": "Lato",
            "autoMargins": true,
            "addClassNames": true,
            "zoomOutText": "",
            "defs": {
                "filter": [{
                    "x": "-50%",
                    "y": "-50%",
                    "width": "200%",
                    "height": "200%",
                    "id": "blur",
                    "feGaussianBlur": {
                        "in": "SourceGraphic",
                        "stdDeviation": "50"
                    }
                }, {
                    "id": "shadow",
                    "width": "150%",
                    "height": "150%",
                    "feOffset": {
                        "result": "offOut",
                        "in": "SourceAlpha",
                        "dx": "2",
                        "dy": "2"
                    },
                    "feGaussianBlur": {
                        "result": "blurOut",
                        "in": "offOut",
                        "stdDeviation": "10"
                    },
                    "feColorMatrix": {
                        "result": "blurOut",
                        "type": "matrix",
                        "values": "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 .2 0"
                    },
                    "feBlend": {
                        "in": "SourceGraphic",
                        "in2": "blurOut",
                        "mode": "normal"
                    }
                }]
            },
            "fontSize": 15,

            "dataProvider": rptChartData,
            "dataDateFormat": "YYYY",
            "marginTop": 0,
            "marginRight": 0,
            "marginLeft": 0,
            "autoMarginOffset": 0,
            "categoryField": "year",
            "categoryAxis": {
                "gridAlpha": 0.07,
                "axisColor": "#DADADA",
                "startOnAxis": true,
                "tickLength": 0,
                "parseDates": true,
                "minPeriod": "YYYY"
            },
            "valueAxes": [{
                "stackType": "regular",
                "gridAlpha": 0.07,
                "axisAlpha": 0,
                "inside": true,
                "labelFrequency": 2
            }],
            "graphs": [{
                "id": "g1",
                "type": "line",
                "title": "Cars",
                "valueField": "cars",
                "fillColors": [
                  "#0066e3",
                  "#802ea9"
                ],
                "lineAlpha": 0,
                "fillAlphas": 0.8,
                "showBalloon": false
            }, {
                "id": "g2",
                "type": "line",
                "title": "Motorcycles",
                "valueField": "motorcycles",
                "lineAlpha": 0,
                "fillAlphas": 0.8,
                "lineColor": "#5bb5ea",
                "showBalloon": false
            }, {
                "id": "g3",
                "title": "reportCount",
                "valueField": "reportCount",
                "lineAlpha": 0.5,
                "lineColor": "#FFFFFF",
                "bullet": "round",
                "dashLength": 2,
                "bulletBorderAlpha": 1,
                "bulletAlpha": 1,
                "bulletSize": 15,
                "stackable": false,
                "bulletColor": "#5d7ad9",
                "bulletBorderColor": "#FFFFFF",
                "bulletBorderThickness": 3,
                "balloonText": "<div style='margin-bottom:30px;text-shadow: 2px 2px rgba(0, 0, 0, 0.1); font-weight:200;font-size:30px; color:#ffffff'>[[value]]</div>"
            }],
            "chartCursor": {
                "cursorAlpha": 1,
                "zoomable": false,
                "cursorColor": "#FFFFFF",
                "categoryBalloonColor": "#8d83c8",
                "fullWidth": true,
                "categoryBalloonDateFormat": "YYYY",
                "balloonPointerOrientation": "vertical"
            },
            "balloon": {
                "borderAlpha": 0,
                "fillAlpha": 0,
                "shadowAlpha": 0,
                "offsetX": 40,
                "offsetY": -50
            }
        });

        // we zoom chart in order to have better blur (form side to side)
        chart.addListener("dataUpdated", zoomChart);

        function zoomChart() {
            chart.zoomToIndexes(1, rptChartData.length - 2);
        }
            </script>

    <script>

        var budgetDrumdata = [{
            "category": "Budget For 2018",
            "value1": 683838,
            "value2": 700000
        }];


        AmCharts.makeChart("DrumChartDiv", {
            "theme": "light",
            "type": "serial",
            "depth3D": 100,
            "angle": 30,
            "autoMargins": false,
            "marginBottom": 100,
            "marginLeft": 350,
            "marginRight": 300,
            "dataProvider": budgetDrumdata,
            "valueAxes": [{
                "stackType": "100%",
                "gridAlpha": 0
            }],
            "graphs": [{
                "type": "column",
                "topRadius": 1,
                "columnWidth": 1,
                "showOnAxis": true,
                "lineThickness": 2,
                "lineAlpha": 0.5,
                "lineColor": "#FFFFFF",
                "fillColors": "#8d003b",
                "fillAlphas": 0.8,
                "valueField": "value1"
            }, {
                "type": "column",
                "topRadius": 1,
                "columnWidth": 1,
                "showOnAxis": true,
                "lineThickness": 2,
                "lineAlpha": 0.5,
                "lineColor": "#cdcdcd",
                "fillColors": "#cdcdcd",
                "fillAlphas": 0.5,
                "valueField": "value2"
            }],

            "categoryField": "category",
            "categoryAxis": {
                "axisAlpha": 0,
                "labelOffset": 40,
                "gridAlpha": 0
            },
            "export": {
                "enabled": true
            }
        });
    </script>

    <script>
        AmCharts.makeChart("PieChartForBudget", {
            "type": "pie",
            "dataProvider": [{
                "Category": "Category 1",
                "Amount": 4200
            }, {
                "Category": "Category 2",
                "Amount": 600
            }, {
                "Category": "Category 3",
                "Amount": 500
            }, {
                "Category": "Category 4",
                "Amount": 400
            }],
            "titleField": "Category",
            "valueField": "Amount",
            // this makes the chart 3D
            "depth3D": 15,
            "angle": 30,
            "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
            "legend": {
                "align": "center",
                "markerType": "circle"
            }

        });
    </script>

    <script>
        var budgetcategorychart;
        var budgetcategorychartData = [
            {
                "Category": 'Category 1',
                "TotalOrgBalance": getRandomInt(5000, 6000),
                "TotalAmountPaid": getRandomInt(5000, 6000),
                "TotalPending": getRandomInt(5000, 6000),
                "TotalBalance": getRandomInt(5000, 6000)
            },
            {
                "Category": 'Category 22',
                "TotalOrgBalance": getRandomInt(5000, 6000),
                "TotalAmountPaid": getRandomInt(5000, 6000),
                "TotalPending": getRandomInt(5000, 6000),
                "TotalBalance": getRandomInt(5000, 6000)
            },
            {
                "Category": 'Category 3',
                "TotalOrgBalance": getRandomInt(5000, 6000),
                "TotalAmountPaid": getRandomInt(5000, 6000),
                "TotalPending": getRandomInt(5000, 6000),
                "TotalBalance": getRandomInt(5000, 6000)
            }
        ];

        AmCharts.ready(function () {
            // SERIALL CHART
            budgetcategorychart = new AmCharts.AmSerialChart();
            budgetcategorychart.dataProvider = budgetcategorychartData;
            budgetcategorychart.categoryField = "Category";
            budgetcategorychart.plotAreaBorderAlpha = 0.2;
            budgetcategorychart.rotate = false;
            budgetcategorychart.depth3D = 20;
            budgetcategorychart.angle = 30;
            // AXES
            // Category
            var categoryAxis = budgetcategorychart.categoryAxis;
            categoryAxis.gridAlpha = 0.1;
            categoryAxis.axisAlpha = 0;
            categoryAxis.gridPosition = "start";

            // value
            var valueAxis = new AmCharts.ValueAxis();
            valueAxis.stackType = "regular";
            valueAxis.gridAlpha = 0.1;
            valueAxis.axisAlpha = 0;
            budgetcategorychart.addValueAxis(valueAxis);

            // GRAPHS
            // firstgraph
            var budgetcategorygraph = new AmCharts.AmGraph();
            budgetcategorygraph.title = "TotalOrgBalance";
            budgetcategorygraph.labelText = "[[value]]";
            budgetcategorygraph.valueField = "TotalOrgBalance";
            budgetcategorygraph.type = "column";
            budgetcategorygraph.lineAlpha = 0;
            budgetcategorygraph.fillAlphas = 1;
            budgetcategorygraph.lineColor = getRandomColor();
            budgetcategorygraph.balloonText = "<b><span style='color:#C72C95'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            budgetcategorygraph.labelPosition = "middle";
            budgetcategorychart.addGraph(budgetcategorygraph);

            // second budgetcategorygraph
            budgetcategorygraph = new AmCharts.AmGraph();
            budgetcategorygraph.title = "TotalAmountPaid";
            budgetcategorygraph.labelText = "[[value]]";
            budgetcategorygraph.valueField = "TotalAmountPaid";
            budgetcategorygraph.type = "column";
            budgetcategorygraph.lineAlpha = 0;
            budgetcategorygraph.fillAlphas = 1;
            budgetcategorygraph.lineColor = getRandomColor();
            budgetcategorygraph.balloonText = "<b><span style='color:#afbb86'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            budgetcategorygraph.labelPosition = "middle";
            budgetcategorychart.addGraph(budgetcategorygraph);

            // third budgetcategorygraph
            budgetcategorygraph = new AmCharts.AmGraph();
            budgetcategorygraph.title = "TotalPending";
            budgetcategorygraph.labelText = "[[value]]";
            budgetcategorygraph.valueField = "TotalPending";
            budgetcategorygraph.type = "column";
            budgetcategorygraph.lineAlpha = 0;
            budgetcategorygraph.fillAlphas = 1;
            budgetcategorygraph.lineColor = getRandomColor();
            budgetcategorygraph.balloonText = "<b><span style='color:#74bdb0'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            budgetcategorygraph.labelPosition = "middle";
            budgetcategorychart.addGraph(budgetcategorygraph);

            // fourth budgetcategorygraph
            budgetcategorygraph = new AmCharts.AmGraph();
            budgetcategorygraph.title = "TotalBalance";
            budgetcategorygraph.labelText = "[[value]]";
            budgetcategorygraph.valueField = "TotalBalance";
            budgetcategorygraph.type = "column";
            budgetcategorygraph.lineAlpha = 0;
            budgetcategorygraph.fillAlphas = 1;
            budgetcategorygraph.lineColor = getRandomColor();
            budgetcategorygraph.balloonText = "<b><span style='color:#69A55C'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            budgetcategorygraph.labelPosition = "middle";
            budgetcategorychart.addGraph(budgetcategorygraph);



            // LEGEND
            var legend = new AmCharts.AmLegend();
            legend.position = "right";
            legend.borderAlpha = 0.3;
            legend.horizontalGap = 10;
            legend.switchType = "v";
            budgetcategorychart.addLegend(legend);

            budgetcategorychart.creditsPosition = "top-right";
            budgetcategorychart.write("budgetcategorychartdiv");
        });


        </script>
    <script>
        var budgetsubcategorychart;
        var budgetsubcategorychartData = [
            {
                "Category": 'Category 1 SUB1',
                "TotalOrgBalance": getRandomInt(100, 200),
                "TotalAmountPaid": getRandomInt(100, 200),
                "TotalPending": getRandomInt(100, 200),
                "TotalBalance": getRandomInt(100, 200)
            },
            {
                "Category": 'Category 1 SUB 2',
                "TotalOrgBalance": getRandomInt(100, 200),
                "TotalAmountPaid": getRandomInt(100, 200),
                "TotalPending": getRandomInt(100, 200),
                "TotalBalance": getRandomInt(100, 200)
            },
            {
                "Category": 'Category 1 SUB 3',
                "TotalOrgBalance": getRandomInt(100, 200),
                "TotalAmountPaid": getRandomInt(100, 200),
                "TotalPending": getRandomInt(100, 200),
                "TotalBalance": getRandomInt(100, 200)
            }
        ];

        AmCharts.ready(function () {
            // SERIALL CHART
            budgetsubcategorychart = new AmCharts.AmSerialChart();
            budgetsubcategorychart.dataProvider = budgetsubcategorychartData;
            budgetsubcategorychart.categoryField = "Category";
            budgetsubcategorychart.plotAreaBorderAlpha = 0.2;
            budgetsubcategorychart.rotate = false;
            budgetsubcategorychart.depth3D = 20;
            budgetsubcategorychart.angle = 30;
            // AXES
            // Category
            var categoryAxis = budgetsubcategorychart.categoryAxis;
            categoryAxis.gridAlpha = 0.1;
            categoryAxis.axisAlpha = 0;
            categoryAxis.gridPosition = "start";

            // value
            var valueAxis = new AmCharts.ValueAxis();
            valueAxis.stackType = "regular";
            valueAxis.gridAlpha = 0.1;
            valueAxis.axisAlpha = 0;
            budgetsubcategorychart.addValueAxis(valueAxis);

            // GRAPHS
            // firstgraph
            var budgetsubcategorygraph = new AmCharts.AmGraph();
            budgetsubcategorygraph.title = "TotalOrgBalance";
            budgetsubcategorygraph.labelText = "[[value]]";
            budgetsubcategorygraph.valueField = "TotalOrgBalance";
            budgetsubcategorygraph.type = "column";
            budgetsubcategorygraph.lineAlpha = 0;
            budgetsubcategorygraph.fillAlphas = 1;
            budgetsubcategorygraph.lineColor = getRandomColor();
            budgetsubcategorygraph.balloonText = "<b><span style='color:#C72C95'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            budgetsubcategorygraph.labelPosition = "middle";
            budgetsubcategorychart.addGraph(budgetsubcategorygraph);

            // second budgetsubcategorygraph
            budgetsubcategorygraph = new AmCharts.AmGraph();
            budgetsubcategorygraph.title = "TotalAmountPaid";
            budgetsubcategorygraph.labelText = "[[value]]";
            budgetsubcategorygraph.valueField = "TotalAmountPaid";
            budgetsubcategorygraph.type = "column";
            budgetsubcategorygraph.lineAlpha = 0;
            budgetsubcategorygraph.fillAlphas = 1;
            budgetsubcategorygraph.lineColor = getRandomColor();
            budgetsubcategorygraph.balloonText = "<b><span style='color:#afbb86'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            budgetsubcategorygraph.labelPosition = "middle";
            budgetsubcategorychart.addGraph(budgetsubcategorygraph);

            // third budgetsubcategorygraph
            budgetsubcategorygraph = new AmCharts.AmGraph();
            budgetsubcategorygraph.title = "TotalPending";
            budgetsubcategorygraph.labelText = "[[value]]";
            budgetsubcategorygraph.valueField = "TotalPending";
            budgetsubcategorygraph.type = "column";
            budgetsubcategorygraph.lineAlpha = 0;
            budgetsubcategorygraph.fillAlphas = 1;
            budgetsubcategorygraph.lineColor = getRandomColor();
            budgetsubcategorygraph.balloonText = "<b><span style='color:#74bdb0'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            budgetsubcategorygraph.labelPosition = "middle";
            budgetsubcategorychart.addGraph(budgetsubcategorygraph);

            // fourth budgetsubcategorygraph
            budgetsubcategorygraph = new AmCharts.AmGraph();
            budgetsubcategorygraph.title = "TotalBalance";
            budgetsubcategorygraph.labelText = "[[value]]";
            budgetsubcategorygraph.valueField = "TotalBalance";
            budgetsubcategorygraph.type = "column";
            budgetsubcategorygraph.lineAlpha = 0;
            budgetsubcategorygraph.fillAlphas = 1;
            budgetsubcategorygraph.lineColor = getRandomColor();
            budgetsubcategorygraph.balloonText = "<b><span style='color:#69A55C'>[[title]]</b></span><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
            budgetsubcategorygraph.labelPosition = "middle";
            budgetsubcategorychart.addGraph(budgetsubcategorygraph);



            // LEGEND
            var legend = new AmCharts.AmLegend();
            legend.position = "right";
            legend.borderAlpha = 0.3;
            legend.horizontalGap = 10;
            legend.switchType = "v";
            budgetsubcategorychart.addLegend(legend);

            budgetsubcategorychart.creditsPosition = "top-right";
            budgetsubcategorychart.write("budgetsubcategorychartdiv");
        });


        </script>
    <script>
        AmCharts.makeChart("reportbarbydept", {
            "theme": "light",
            "type": "serial",
            "dataProvider": [{
                "Dept": 100,
                "count": 23.5
            }, {
                "Dept": 110,
                "count": 26.2
            }, {
                "Dept": 222,
                "count": 30.1
            }, {
                "Dept": 444,
                "count": 29.5
            }, {
                "Dept": 666,
                "count": 24.6
            }],
            "valueAxes": [{
                "title": "REPORT Comparision by department"
            }],
            "graphs": [{
                "balloonText": "Income in [[category]]:[[value]]",
                "fillAlphas": 1,
                "lineAlpha": 0.2,
                "title": "count",
                "type": "column",
                "valueField": "count"
            }],
            "depth3D": 20,
            "angle": 30,
            "rotate": true,
            "categoryField": "Dept",
            "categoryAxis": {
                "gridPosition": "start",
                "fillAlpha": 0.05,
                "position": "left"
            },
            "export": {
                "enabled": true
            }
        });
    </script>

    <script type="text/javascript">
        $(function () {

            $.mockjax({
                url: '/orgchart/initdata',
                responseTime: 1000,
                contentType: 'application/json',
                responseText: {
                    'name': 'President',
                    'title': 'President',
                    'children': [
                      { 'name': '100 Director', 'title': 'Director' },
                      {
                          'name': '110 Director', 'title': 'Director',
                          'children': [
                            { 'name': 'DEPT Head1', 'title': 'DEPT HEAD ' },
                            {
                                'name': 'DEPT Head2', 'title': 'DEPT HEAD',
                                'children': [
                                  { 'name': 'SECTION HEAD 1', 'title': 'SECT HEAD' },
                                  { 'name': 'SECTION HEAD 2', 'title': 'SECT HEAD' }
                                ]
                            }
                          ]
                      },
                      { 'name': '222 Director', 'title': 'Director' },
                      { 'name': '444 Director', 'title': 'Director' },
                      { 'name': '666 Director', 'title': 'Director' }
                    ]
                }
            });

            $('#org-chart-container').orgchart({
                'data': '/orgchart/initdata',
                'nodeContent': 'title'
            });

        });
  </script>
</body>
</html>
