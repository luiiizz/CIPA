<cfoutput>
    <html lang="pt">
       <head>
          <!-- Required meta tags -->
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
          <title>CAOATEC - Dashboard Produção</title>
          <!-- plugins:css -->
          <link rel="stylesheet" href="../../assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
          <link rel="stylesheet" href="../../assets/vendors/iconfonts/ionicons/css/ionicons.css">
          <link rel="stylesheet" href="../../assets/vendors/iconfonts/typicons/src/font/typicons.css">
          <link rel="stylesheet" href="../../assets/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css">
          <link rel="stylesheet" href="../../assets/vendors/css/vendor.bundle.base.css">
          <link rel="stylesheet" href="../../assets/vendors/css/vendor.bundle.addons.css">
          <!-- endinject -->
          <!-- plugin css for this page -->
          <!-- End plugin css for this page -->
          <!-- inject:css -->
          <link rel="stylesheet" href="../../assets/css/shared/style.css?v=3">
          <!-- endinject -->
          <!-- Layout styles -->
          <link rel="stylesheet" href="../../assets/css/demo_1/style.css?v=3">
          <!-- End Layout styles -->
          <link rel="shortcut icon" href="../../assets/images/favicon.png" />
       </head></cfoutput>
       <body>
          <div class="container-scroller">
   
             <!-- partial -->
             <div class="main-panel">
                <div class="content-wrapper">
                   <!-- Page Title Header Starts-->
                   <div class="row page-title-header">
                      <div class="col-12">
                        <img src="CAOATEC.png" alt="logo" style="height:10%;"/>

                           <div class="container"><br><br>
                             <h1>Votação CIPA</h1><br>
                             <form class="form-horizontal" action="index.cfm">
                               <div class="form-group">
                                 <label class="control-label col-sm-2"><h3>Matrícula:</h4></label>
                                 <div class="col-sm-10">
                                   <input type="number" class="form-control" id="nummber" placeholder="Digite sua matrícula" name="matricula">
                                 </div>
                               </div>
                               <div class="form-group"><br>
                                 <label class="control-label col-sm-2"><h3>Candidato:</h4></label><br><br>
                                 <div class="col-sm-10">          
                                    <label class="radio-inline" style="margin-right:18px; font-size: 18"><input id= 1 type="radio" name="optradio" value="10" >Option 1</label>
                                    <label class="radio-inline" style="margin-right:18px; font-size: 18"><input id= 2 type="radio" name="optradio" value="20">Option 2</label>
                                    <label class="radio-inline" style="margin-right:18px; font-size: 18"><input type="radio" name="optradio" value="30">Option 3</label>
                                 </div>
                               </div><br>
   
                               <div class="form-group">        
                                 <div class="col-sm-offset-2 col-sm-10">
                                   <button type="submit" class="btn btn-default" style="font-size:18; color: black; background-color: green"> CONFIMAR</button>
                                 </div>
                               </div>
                             </form>
                           </div>
                           
                           
                           <cfoutput>#url.optradio#</cfoutput>
                           
                        </body>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </body>
   </html>   


              