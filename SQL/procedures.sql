--------------------------------------------------------
--  Arquivo criado - Sábado-Janeiro-11-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure INCLUIR_PESSOA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "T20WPS2"."INCLUIR_PESSOA" (
	vNOME  VARCHAR2,
	vEMAIL VARCHAR2,
	vSENHA VARCHAR2)
	 
IS
vEXCEPTION EXCEPTION;
BEGIN
	
	INSERT INTO T20WPS2.TB_PESSOA (COD_PESSOA, vNOME, vEMAIL, vSENHA) VALUES (T20WPS2.SQ_PESSOA_1.NEXTVAL, vNOME, vEMAIL, vSENHA)
	
	EXCEPTION
		WHEN vEXCEPTION THEN
		 RAISE_APPLICATION_ERROR(-20999,'ATENÇÃO! Falha na inclusão de pessoa', FALSE);
		
END

/
