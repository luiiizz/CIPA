
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
          <style>
               label.radio-inline{
                  text-decoration: white;
                  border-radius: 5px;
                  border-color: aqua;
                  margin-right:40px; 
                  margin-top: 10px;
                  font-size: 18;
                  font-weight: bold;
                  background-color: rgb(1, 1, 70);
                  border: 2px;
                  color: white;
                  margin: 10px;
                  width: 200px;
                  height: 35px;
                  text-align: center;
                  vertical-align: center
                  
               };
               input.mat{
                  width: 80%;
                  border-radius: 5px;

               }
               div.lab{
                  background-color: white;
                  width: 1150px;
                  height: 60px;
               }
              
          </style>
       </head></cfoutput>
       <body>
         <cfset setLocale("Portuguese (Brazilian)")>
          <div class="container-scroller">
   
             <!-- partial -->
             <div class="main-panel">
                <div class="content-wrapper" style="height: 20cm">
                   <!-- Page Title Header Starts-->
                   <div class="row page-title-header">
                      <div class="col-12">
                        <img src="CAOATEC.png" alt="logo" style="height:15%;"/>
                        <a style="margin-left: 28cm" href="result.cfm">Resultados</a>
                           <div class="container"><br><br>
                             <h1>Votação CIPA</h1><br>
                             <form class="form-horizontal" action="index.cfm">
                               <div class="form-group">
                                 <label class="control-label col-sm-2"><h3>Matrícula:</h4></label>
                                 <div class="col-sm-10">
                                   <input class="mat" type="number"  placeholder="Digite sua matrícula" name="matricula" required>
                                 </div>
                               </div><br>
                               <div><br>
                                 <label class="control-label col-sm-2"><h3>Candidato:</h4></label><br><br>
                                 <div class="col-sm-12">

                                    <div class="lab"><label class="radio-inline"><input type="radio" name="candidato" value="1" required> - Candidato 1 </label>
                                    <label class="radio-inline"><input type="radio" name="candidato" value="2"> - Candidato 2 </label>
                                    <label class="radio-inline"><input type="radio" name="candidato" value="3"> - Candidato 3 </label>
                                    <label class="radio-inline"><input type="radio" name="candidato" value="4"> - Candidato 4 </label>
                                    <label class="radio-inline"><input type="radio" name="candidato" value="5"> - Candidato 5 </label></div>
                                    
                                 </div>
                               </div><br><br>
   
                               <div class="form-group">        
                                 <div class="col-sm-offset-2 col-sm-10">
                                   <button type="submit" class="btn btn-default" style="font-size:18; color: black; background-color: green"> CONFIMAR</button>
                                   <cfif not isDefined('url.candidato')>
                                       <button type="reset" class="btn btn-default" style="font-size:18; color: black; background-color: RED; margin-left: 8px"> ANULAR</button>
                                    </cfif>
                                    <cfset data_hora = lsDateTimeFormat(now(), "dd/mm/yy HH:mm:ss")>
                               
                                    <!---
                                    <cfquery datasource="SINCPROD">
                                       INSERT INTO INTCOLDFUSION.vot_cipa (MATRICULA_ELEITOR, CANDIDATO, DATA_HORA) VALUES('#url.matricula#','#url.candidato#','#data_hora#')
                                    </cfquery>
                                    --->
                                   
                                   <cfif isDefined("url.candidato")>
                                     <cfoutput>
                                        <button class="btn btn-default" style="font-size:18; color: black; background-color: aquamarine; width: 10cm; margin-left: 3cm" > VOTO CONFIRMADO NO CANDIDATO #URL.candidato#</button>
                                        <meta http-equiv="refresh" content="1.5; URL=index.cfm"/>
                                     </cfoutput>
                                   </cfif>
                                 </div>
                               </div>
                             </form>
                           </div>
   
                        </body>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </body>
   </html> 
<!---<cfcatch type="any">
   <br><br><br><br>
   <label  style="font-size:18; color: black; background-color: red; width: 14cm; border-radius: 5px">
   <h4> - ERROR!!! CONTATE O ADM DO SISTEMA /luiz.barreira</h3></label>
</cfcatch>
</cftry>--->
     


              