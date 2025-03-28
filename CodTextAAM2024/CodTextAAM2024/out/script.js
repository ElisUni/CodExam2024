$(document).ready(function(){
	/*JS Bottoni codifica*/
    var base = "rgb(240, 240, 240)";
    function cambiaProf(btn, colore, classe, nuovoColoreTesto="black"){
        if( $(btn).css("background-color") == base){
            $(btn).css("background-color", colore);
            $("."+classe).css("background-color", colore);
            $("."+classe).css("color", nuovoColoreTesto);
            $(btn).css("color", nuovoColoreTesto);
        }
        else {
            $(btn).css("background-color", base);
            $(btn).css("color", "black"); 
            $("."+classe).css("background-color", $("#articoli").css("background-color")); 
            $("."+classe).css("color", "black");  
        }
    }

    //espandi, correzioni, regolarizza
    function cambiaNoi(btn, testo1, testo2, classe1, classe2, colore){
        if($("."+classe2).css("display") == "none"){ 
            $("."+classe1).hide();
            $("."+classe2).show();
            $(btn).text(testo1);
            $(btn).css("background-color", colore);
        }else{
            $(btn).text(testo2);
            $("."+classe1).show();
            $("."+classe2).hide();
            $(btn).css("background-color", base);
        }
    }
	
    function underline(btn, colore, classe){
        if(( $(btn).css("background-color") == base)){
            $(btn).css("background-color", colore);
            $("."+classe).css("text-decoration", "underline");
            $("."+classe).css("text-decoration-thickness", "0.2em");
            $("."+classe).css("text-decoration-color", colore);
        }
        else {
            $(btn).css("background-color", base);
            $("."+classe).css("text-decoration", "none");     
        }
    }
	
	/*JS Bottoni codifica fine*/
	
	/*istruzioni*/
	
	/*bottoniNoi*/
    $("#btn_espandi").click(function(){
        cambiaNoi(this, "Nascondi", "Espandi", "abbreviazione", "espansione", "rgb(255,218,185)");
    });
    
    $("#btn_corr").click(function(){
        cambiaNoi(this, "Sbagliato", "Correzioni", "sbagliato", "correzione", "rgb(250, 124, 124)");
        
    });
    $("#btn_reg").click(function(){
        cambiaNoi(this, "Originale", "Regolarizza", "originale", "regolarizzato", "rgb(130, 137, 255)");
    });
    /*Fine bottoniNoi*/
	
	/*BottoniProf */
    $("#btn_persone").click(function(){
       cambiaProf(this,"rgb(255, 255, 148)", "person");
    });
    
    $("#btn_luoghi").click(function(){
        cambiaProf(this,"rgb(255, 148, 240)", "place");
    });
    
    $("#btn_luoghi_naturali").click(function(){
        cambiaProf(this,"rgb(218, 148, 255)", "natural_place");
    });
    
    
    $("#btn_org").click(function(){
        cambiaProf(this,"rgb(255, 193, 148)", "organization");
    });
    
    $("#btn_foreign").click(function(){
        underline(this, "rgb(148, 255, 243)", "foreign");
    });
    
    $("#btn_date").click(function(){
        cambiaProf(this,"rgb(148, 255, 190)", "date");
    });
    $("#btn_casa_editrice").click(function(){
        cambiaProf(this,"rgb(255, 216, 148)", "publishinghouse");
    });
    $("#btn_opere").click(function(){
        cambiaProf(this,"rgb(154, 255, 148)", "opere");
    });
    $("#btn_cit").click(function(){
        underline(this,"rgb(255, 148, 189)", "cit");
    });
	$("#btn_themes").click(function(){
        underline(this,"rgb(129, 216, 255)", "themes");
    });
    
	/*Fine bottoneProf e underline*/
	
	/*Inizio area*/
    $("area").click(function(){
        $("p").css("font-weight", "normal"); //resetta 
        let corresp = $(this).attr("id").split("Img")[0]; 
        let testo = $("#articoli").find("p[id='"+ corresp +"Html']");
        let id= testo.attr("id");
        $('#'+id).css("font-weight", "bold");
        window.location.hash = id; //trascina fino a quel punto
		
		if(corresp.slice(-2,corresp.length-1)=='_'){
			$("#articoli").find("p[id^='"+ corresp.slice(0,corresp.length-1) +"']").css("font-weight", "bold");
		}
    });
	/*fine area*/

	/*trafiletti informativi*/

    $("span").mouseover(function(){
        $(this).next("span.specchietto").css("display", "inline");
    });
    $("span").mouseout(function(){
        $(this).next("span.specchietto").css("display", "none");
    });
    
	/*fine trafiletti informativi*/
	
	/*Creazione pagina*/
    var page = 0;
    $(function(){
        $("#colonna1").append($("#header1"));  
        $("#colonna1").append($("#testo_colonna1"));  
        
        $("#colonna2").append($("#testo_colonna2"));  
        
        $("#colonna3").append($("#header2"));  
        $("#colonna3").append($("#testo_colonna3"));  
        
        $("#colonna4").append($("#testo_colonna4"));

        $("#colonna5").append($("#testo_colonna5_1"));  
        $("#colonna5").append($("#testo_colonna5_2"));  
        $("#colonna5").append($("#header3"));  
        $("#colonna5").append($("#testo_colonna5_3"));  

        $("#colonna6").append($("#testo_colonna6"));  
        
        $("#colonna7").append($("#header4"));  
        $("#colonna7").append($("#testo_colonna7"));  
        
        $("#colonna8").append($("#header5"));  
        $("#colonna8").append($("#testo_colonna8")); 
        
        $("#colonna9").append($("#testo_colonna9_1"));  
        $("#colonna9").append($("#header6"));  
        $("#colonna9").append($("#testo_colonna9_2"));  
        $("#colonna9").append($("#header7"));  
        $("#colonna9").append($("#testo_colonna9_3"));  
        
        $("#colonna10").append($("#testo_colonna10_1"));  
        $("#colonna10").append($("#header8"));  
        $("#colonna10").append($("#testo_colonna10_2"));  

        $("#colonna11").append($("#testo_colonna11_1"));  
        $("#colonna11").append($("#testo_colonna11_2"));  

        $("#pagina1").append($("#fw_1"));
        $("#pagina1").append($("#colonna1"));
        $("#pagina1").append($("#colonna2"));
        
        $("#pagina2").append($("#fw_2"));
        $("#pagina2").append($("#colonna3"));
        $("#pagina2").append($("#colonna4"));

        $("#pagina3").append($("#fw_3"));
        $("#pagina3").append($("#colonna5"));
        $("#pagina3").append($("#colonna6"));
        
        $("#pagina4").append($("#fw_4"));
        $("#pagina4").append($("#colonna7"));

        $("#pagina5").append($("#fw_5"));
        $("#pagina5").append($("#colonna8"));
        $("#pagina5").append($("#colonna9"));
        
        $("#pagina6").append($("#fw_6"));
        $("#pagina6").append($("#colonna10"));
        $("#pagina6").append($("#colonna11"));
		
        MostraPagina(page+1);
        MostraImg(page);
        GestioneBottoni();
        $("#btn_div").hide();
        $("#immagini").hide();
        $("#bottoni").hide();
        $("#articoli").hide();
		$("#btn_su").hide();
		$("#btn_piusu").hide();
    });

	/*Fine Creazione pagina*/
	
    function MostraPagina(page){
        $("#articoli").children().hide();
        $("#pagina"+page).show();
    }

    function MostraImg(page){
        $("#immagini").children().hide();
        $("#immagini :nth-child("+(page+1).toString()+")").show();


    };

    function GestioneBottoni(){
        if(page==5)
            $("#avanti").hide();
        else $("#avanti").show();
        if(page==0)
            $("#indietro").hide();
        else $("#indietro").show();       
    }

    $(".cambio_pagina").click(
        function(){
            if($(this).attr("id")=="avanti")
                page = ((page+1) % 6);
            else page = ((page-1) % 6); 
            GestioneBottoni();
            MostraPagina(page+1);
            MostraImg(page);
    });
	
	$("#btn_su").click(
		function(){
			if ( $("#avanti").css('display') == 'none' || $("#avanti").css("visibility") == "hidden"){
				$(document.documentElement).animate({
					scrollTop: $("#indietro").offset().top
				}, 500);
			}
			else{
				$(document.documentElement).animate({
					scrollTop: $("#avanti").offset().top
				}, 500);
			}
		});
    
	$("#btn_piusu").click(
		function(){
			$(document.documentElement).animate({
				scrollTop: $("#btn_fronte").offset().top
			}, 500);
		});

	/*fine bottoni per la facilità lettura*/

    $("#btn_fronte").click(function(){
        if($(this).html() == "Torna alle info"){
            $(".frontefonte").show();
			$(".frontecod").show();
			$("#space").show();
            $("#descrizioni").show();
            $(this).html("Vai alla codifica");
            $("#btn_div").hide();
            $("#immagini").hide();
            $("#bottoni").hide();
            $("#articoli").hide();
			$("#btn_su").hide();
			$("#btn_piusu").hide();
        }
        else{
            $(".frontefonte").hide();
			$(".frontecod").hide();
			$("#space").hide();
            $("#descrizioni").hide();
            $(this).html("Torna alle info");
            $("#btn_div").show();
            $("#immagini").show();
            $("#bottoni").show();
            $("#articoli").show();
			$("#btn_su").show();
			$("#btn_piusu").show();
        }
    });

});