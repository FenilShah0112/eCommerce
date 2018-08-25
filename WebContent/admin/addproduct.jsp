    <%@ include file="head.jsp"%>
            <style>
            .entry:not(:first-of-type)
            {
            margin-top: 10px;
            }

            .glyphicon
            {
            font-size: 12px;
            }
            </style>
            <script>
        function addAttributes(divName){
        var newdiv = document.createElement('div');
        newdiv.innerHTML = "<br><input type='text' name='Sizes'> <input type='text' name='Colors[]'> <input type='text' name='Price[]'> <input type='file' name='Image[]'>";
        document.getElementById(divName).appendChild(newdiv);
        }
        function addCategory(divName){
        var newdiv = document.createElement('div');
        newdiv.innerHTML = "<br><select class='form-control' id='category' default='none' name='categories[]'><option disabled selected value>----select an option----</option><option>2</option><option>3</option><option>4</option></select><h4>OR</h4><input type='text' id='categorynew' value='Enter a new Category'>";
        document.getElementById(divName).appendChild(newdiv);
        }
        </script>
        <body class="hold-transition skin-blue sidebar-mini">

        <div class="wrapper">

        <%@ include file="header.jsp"%>
        <%@ include file="sidebar.jsp"%>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
        <h1>
        Add a product
        </h1>
        <ol class="breadcrumb">
        <li><a href="index.jsp"><i class="fa fa-dashboard"></i>Dashboard</a></li>
        <li class="active">Add a product</li>
        </ol>
        </section>

        <!-- Main content -->
                <section class="content">
                <!-- Form for adding a product -->
                        <form method="post" action="addproduct">
                                <label for="category">Select Category:</label>
                                <div id="dynamicCategory">
                                <select class="form-control" id="category" default="none" name="categories[]" required>
                                        <option disabled selected value>----select an option----</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                </select><br>
								<label for="subcategory1">Select Sub Category 1:</label>
                                <select class="form-control" id="subcategory1" default="none" name="subcat1[]" required>
                                        <option disabled selected value>----select an option----</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                </select><br>
								<label for="subcategory2">Select Sub Category 2:</label>
                                <select class="form-control" id="subcategory2" default="none" name="subcat2[]" required>
                                        <option disabled selected value>----select an option----</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                </select>
                                <br><br><br><br>
                                <label for="brand">Select Brand:</label>
                                <select class="form-control" id="brand" default="none" required>
                                        <option disabled selected value>----select an option----</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                </select> <h4>OR</h4>
                                <input type="text" id="brandnew" value="Enter a new value">
                                <br><br><br><br>
                                    <label for="name">Name of the product:</label><br>
                                    <input type="text" id="name"/>
                                <br><br><br><br>
                                    <label for="images">Images</label><input type="file" id="images" multiple>
                                <br><br>
                                    <div id="dynamicInput">
                                        <pre style="background-color:inherit;border:none;font-weight:bold;  ">Size                  Color                 Price</pre>
                                        <br><input type="text" name="Sizes[]" required> <input type="text" name="Colors[]" required> <input type="text" name="Price[]" required>
                                        <input id="image" type="file" required>
                                    </div>
                                    <button type="button" class="btn btn-default btn-sm" onClick="addAttributes('dynamicInput');">
                                            <span class="glyphicon glyphicon-plus"></span>
                                        </button>
                                <br>
                                <br>
                                <br>
                                    <input type="submit" value="SUBMIT"/>
        </form>
        </section>



        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
        <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
        <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
        <!-- Home tab content -->
        <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
        <li>
        <a href="javascript:void(0)">
        <i class="menu-icon fa fa-birthday-cake bg-red"></i>

        <div class="menu-info">
        <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

        <p>Will be 23 on April 24th</p>
        </div>
        </a>
        </li>
        <li>
        <a href="javascript:void(0)">
        <i class="menu-icon fa fa-user bg-yellow"></i>

        <div class="menu-info">
        <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

        <p>New phone +1(800)555-1234</p>
        </div>
        </a>
        </li>
        <li>
        <a href="javascript:void(0)">
        <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

        <div class="menu-info">
        <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

        <p>nora@example.com</p>
        </div>
        </a>
        </li>
        <li>
        <a href="javascript:void(0)">
        <i class="menu-icon fa fa-file-code-o bg-green"></i>

        <div class="menu-info">
        <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

        <p>Execution time 5 seconds</p>
        </div>
        </a>
        </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
        <li>
        <a href="javascript:void(0)">
        <h4 class="control-sidebar-subheading">
        Custom Template Design
        <span class="label label-danger pull-right">70%</span>
        </h4>

        <div class="progress progress-xxs">
        <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
        </div>
        </a>
        </li>
        <li>
        <a href="javascript:void(0)">
        <h4 class="control-sidebar-subheading">
        Update Resume
        <span class="label label-success pull-right">95%</span>
        </h4>

        <div class="progress progress-xxs">
        <div class="progress-bar progress-bar-success" style="width: 95%"></div>
        </div>
        </a>
        </li>
        <li>
        <a href="javascript:void(0)">
        <h4 class="control-sidebar-subheading">
        Laravel Integration
        <span class="label label-warning pull-right">50%</span>
        </h4>

        <div class="progress progress-xxs">
        <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
        </div>
        </a>
        </li>
        <li>
        <a href="javascript:void(0)">
        <h4 class="control-sidebar-subheading">
        Back End Framework
        <span class="label label-primary pull-right">68%</span>
        </h4>

        <div class="progress progress-xxs">
        <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
        </div>
        </a>
        </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        </div>
        <!-- /.tab-pane -->

        <!-- Settings tab content -->
        <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
        <h3 class="control-sidebar-heading">General Settings</h3>

        <div class="form-group">
        <label class="control-sidebar-subheading">
        Report panel usage
        <input type="checkbox" class="pull-right" checked>
        </label>

        <p>
        Some information about this general settings option
        </p>
        </div>
        <!-- /.form-group -->

        <div class="form-group">
        <label class="control-sidebar-subheading">
        Allow mail redirect
        <input type="checkbox" class="pull-right" checked>
        </label>

        <p>
        Other sets of options are available
        </p>
        </div>
        <!-- /.form-group -->

        <div class="form-group">
        <label class="control-sidebar-subheading">
        Expose author name in posts
        <input type="checkbox" class="pull-right" checked>
        </label>

        <p>
        Allow the user to show his name in blog posts
        </p>
        </div>
        <!-- /.form-group -->

        <h3 class="control-sidebar-heading">Chat Settings</h3>

        <div class="form-group">
        <label class="control-sidebar-subheading">
        Show me as online
        <input type="checkbox" class="pull-right" checked>
        </label>
        </div>
        <!-- /.form-group -->

        <div class="form-group">
        <label class="control-sidebar-subheading">
        Turn off notifications
        <input type="checkbox" class="pull-right">
        </label>
        </div>
        <!-- /.form-group -->

        <div class="form-group">
        <label class="control-sidebar-subheading">
        Delete chat history
        <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
        </label>
        </div>
        <!-- /.form-group -->
        </form>
        </div>
        <!-- /.tab-pane -->
        </div>
        </aside>
        <!-- /.control-sidebar -->
        <!-- Add the sidebar's background. This div must be placed
        immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>
            </div>
        </div>
        <!-- ./wrapper -->

        <%@ include file="foot.jsp"%>