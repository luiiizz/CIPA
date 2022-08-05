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
                            <label class="control-label col-sm-2"><h3>Resultados:</h4></label>
                            
                              <table class="table table-striped table-hover">
                                 <thead>
                                  <tr>
                                    <th>Candidato</th>
                                    <th>Total de Votos</th>
                                  </tr>
                                 </thead>
                                 <tbody>
                                  <cfloop query="prod">
                                     <tr>
                                       <td>#prod.Codigo#</td>
                                       <td>#prod.Nome#</td>
                                       <td>#prod.Segundo_Nome#</td>
                                       <td>#prod.Planta#</td>
                                       <td>#prod.Cod_Tipo_Prod#</td>
                                       <td>#prod.Tipo_Prod#</td>
                                       <td>#prod.IDUnit1#</td>
                                       <td>#prod.Habilitado#</td>
                                     </tr>
                                  </cfloop>
                                  <div class="row">
                                     <p class="card-description">
                                     <i class="mdi mdi-brightness-1 text-danger">--</i>
                                     </i ><strong>Total Produtos: <cfoutput>#total.total#</strong></cfoutput>  
                                     </p>
                                  </div>
                                 </tbody>
                               </table>
                          </div>
  
                       </body>
                    </div>
                 </div>
              </div>
           </div>
        </div>
     </body>
  </html>   


             