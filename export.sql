--------------------------------------------------------
--  File created - Thursday-October-03-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CAMION
--------------------------------------------------------

  CREATE TABLE "HG191064"."CAMION" 
   (	"CAMION_ID" NUMBER(3,0), 
	"CPOSITION" VARCHAR2(30 BYTE), 
	"REMORQUE_ID" NUMBER(38,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "INF3080_20193" ;
REM INSERTING into HG191064.CAMION
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_CAMION_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HG191064"."PK_CAMION_ID" ON "HG191064"."CAMION" ("CAMION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "INF3080_20193" ;
--------------------------------------------------------
--  Constraints for Table CAMION
--------------------------------------------------------

  ALTER TABLE "HG191064"."CAMION" ADD CONSTRAINT "PK_CAMION_ID" PRIMARY KEY ("CAMION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "INF3080_20193"  ENABLE;
 
  ALTER TABLE "HG191064"."CAMION" MODIFY ("CAMION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HG191064"."CAMION" MODIFY ("CPOSITION" NOT NULL ENABLE);
 
  ALTER TABLE "HG191064"."CAMION" MODIFY ("REMORQUE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CAMION
--------------------------------------------------------

  ALTER TABLE "HG191064"."CAMION" ADD CONSTRAINT "FK_CPOSITION" FOREIGN KEY ("CPOSITION")
	  REFERENCES "HG191064"."POSITION" ("CPOSITION") ENABLE;
 
  ALTER TABLE "HG191064"."CAMION" ADD CONSTRAINT "FK_REMORQUE_ID" FOREIGN KEY ("REMORQUE_ID")
	  REFERENCES "HG191064"."REMORQUE" ("REMORQUE_ID") ENABLE;
