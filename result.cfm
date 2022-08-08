<cfset total=0>
<cfquery name="resultados" datasource="SINCPROD">
   select candidato, count(*) votos from intcoldfusion.vot_cipa group by candidato order by votos desc
</cfquery>

<cfspreadsheet  action="write" query="resultados" filename="Resultados_CIPA.xls" sheetname="Resultados" overwrite=true>

<cfoutput>
   <html lang="pt">
      <head>
         <!-- Required meta tags -->
         <meta charset="utf-8">
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
         <title>CAOATEC - Dashboard Resultados</title>
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

         <style>
            h5{
               margin-left: 23cm; 
               background-color: green; 
               text-align: center;
               border-radius: 5px;
               font-size: 18;
               font-style: unset;
               color: white;
            }
            
         </style>

      </head>
</cfoutput>
      <body>
         <div class="container-scroller">
  
            <!-- partial -->
            <div class="main-panel">
               <div class="content-wrapper">
                  <!-- Page Title Header Starts-->
                  <div class="row page-title-header">
                     <div class="col-12">
                        <img src="CAOATEC.png" alt="logo" style="height:10%;"/>
                  
                        <a style="margin: 30cm" href="index.cfm">Votar</a>
        
                          <div class="container"><br><br>
                           
                            <h1>Resultados CIPA</h1><br><br>
                            <label class="control-label col-sm-2"><h3>Acompanhamento:</h4></label>
                            
                              <table class="table table-striped table-hover">
                                 <thead>
                                  <tr>
                                    <th>Candidato</th>
                                    <th>Total de Votos</th>
                                  </tr>
                                 </thead>
                                 <tbody>
                                 <cfoutput>
                                  <cfloop query="resultados">
                                     <tr>
                                       <div class="linha">
                                          <td>#resultados.candidato#</td>
                                          <td>#resultados.votos#</td>
                                       </div>
                                     </tr>
                                     <cfset total=total+ #resultados.votos#>
                                  </cfloop>
                     
                                    <h5><strong>Total Votos:  #total#</strong></h5>
                                    <strong><a style="margin: 25.5cm; color: black; text-decoration: underline" href="Resultados_CIPA.xls">Download</a></strong>

                                 </cfoutput>
                                 </tbody>
                              </table>
                           </div>
                     </div> </body>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </body>
   </html> 

<meta http-equiv="refresh" content="5, URL=result.cfm">

             