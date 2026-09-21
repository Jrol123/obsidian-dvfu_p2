/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */ 
/*                                                                           */
/*   File:    erwinupd.sql                                                   */ 
/*                                                                           */
/*   Purpose: Transact_SQL to update a ModelMart for compatibility           */
/*            with the latest client software                                */
/*                                                                           */
/* * * * * * * * * * * Copyright (c) Logic Works 1995  * * * * * * * * * * * */                                         

/* ERwin Version : $Header: /erwincsx/csxsql/erwinupd.sql 145   1/23/98 12:17p Dmccann $ */
/* $Revision: 145 $ */
/* $Date: 1/23/98 12:17p $ */

/*** place current version # and date in master table ***/

UPDATE %1..erw_Master
   set Version = %3,
       Creation_Date = GETDATE()
   where Repository_Name = '%2'
go

use %1
go
