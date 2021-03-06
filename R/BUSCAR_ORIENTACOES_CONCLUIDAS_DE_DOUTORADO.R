#' @title BUSCAR_ORIENTACOES_CONCLUIDAS_DE_DOUTORADO
#'
#' 
#'
#' @param doc a list of Lattes CV XML files
#'
#' 
#'
#'
#'
#' @export BUSCAR_ORIENTACOES_CONCLUIDAS_DE_DOUTORADO

BUSCAR_ORIENTACOES_CONCLUIDAS_DE_DOUTORADO<-function(doc){


ORIENTACOES_CONCLUIDAS_DE_DOUTORADO<-list()


OrientacoesMestrado=xmlRoot(doc)[["OUTRA-PRODUCAO"]][["ORIENTACOES-CONCLUIDAS"]][c("ORIENTACOES-CONCLUIDAS-PARA-DOUTORADO") ]

if(length(OrientacoesMestrado) != 0) { 
	for(orientacao in OrientacoesMestrado){
	 
		DADOS_BASICOS_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO<-new.env(parent=emptyenv())
		  atributos<-xmlAttrs(orientacao[["DADOS-BASICOS-DE-ORIENTACOES-CONCLUIDAS-PARA-DOUTORADO"]])
		DADOS_BASICOS_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$NATUREZA<- ValidateXmlAttr(atributos,"NATUREZA")
		DADOS_BASICOS_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$TIPO<- ValidateXmlAttr(atributos,"TIPO")


		DADOS_BASICOS_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$TITULO_DO_TRABALHO<-ValidateXmlAttr(atributos,"TITULO")
                DADOS_BASICOS_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$ANO<-ValidateXmlAttr(atributos,"ANO")
     
		DADOS_BASICOS_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$PAIS<- ValidateXmlAttr(atributos,"PAIS")
	

		

		DETALHAMENTO_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO<-new.env(parent=emptyenv())
		atributos<-xmlAttrs(orientacao[["DETALHAMENTO-DE-ORIENTACOES-CONCLUIDAS-PARA-DOUTORADO"]])

		  DETALHAMENTO_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$TIPO_DE_ORIENTACAO<- ValidateXmlAttr(atributos,"TIPO-DE-ORIENTACAO")

                  DETALHAMENTO_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$NOME_DO_ORIENTADO<- ValidateXmlAttr(atributos,"NOME-DO-ORIENTADO")

	          DETALHAMENTO_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$CODIGO_INSTITUICAO<-ValidateXmlAttr(atributos,"CODIGO-INSTITUICAO")

                  DETALHAMENTO_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$NOME_INSTITUICAO<- ValidateXmlAttr(atributos,"NOME-DA-INSTITUICAO")

                  DETALHAMENTO_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$CODIGO_CURSO<- ValidateXmlAttr(atributos,"CODIGO-CURSO")
                  DETALHAMENTO_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$NOME_CURSO<- ValidateXmlAttr(atributos,"NOME-DO-CURSO")
		  DETALHAMENTO_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$FLAG_BOLSA<- ValidateXmlAttr(atributos,"FLAG-BOLSA")
		  DETALHAMENTO_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$CODIGO_AGENCIA_FINANCIADORA<- ValidateXmlAttr(atributos,"CODIGO-AGENCIA-FINANCIADORA")
		  DETALHAMENTO_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$NOME_DA_AGENCIA<- ValidateXmlAttr(atributos,"NOME-DA-AGENCIA")
		  DETALHAMENTO_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO$NUMERO_ID_ORIENTADO<- ValidateXmlAttr(atributos,"NUMERO-ID-ORIENTADO")


	      		    
	
              
	     ORIENTACAO_CONCLUIDA_DE_DOUTORADO<-new.env(parent=emptyenv())

	     
	       ORIENTACAO_CONCLUIDA_DE_DOUTORADO$DETALHAMENTO<-DETALHAMENTO_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO
	       ORIENTACAO_CONCLUIDA_DE_DOUTORADO$DADOS_BASICOS<-DADOS_BASICOS_DE_ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO
	      
	       ORIENTACAO_CONCLUIDA_DE_DOUTORADO$IDLATTES<-"NULL"
	       ORIENTACAO_CONCLUIDA_DE_DOUTORADO$NOME_COMPLETO<-"NULL"

	    ORIENTACOES_CONCLUIDAS_DE_DOUTORADO<-c(ORIENTACOES_CONCLUIDAS_DE_DOUTORADO,list(ORIENTACAO_CONCLUIDA_DE_DOUTORADO))
	  
	  }
	  Resultado<-ORIENTACOES_CONCLUIDAS_DE_DOUTORADO
 } else{ Resultado<-NULL}

Resultado

}




