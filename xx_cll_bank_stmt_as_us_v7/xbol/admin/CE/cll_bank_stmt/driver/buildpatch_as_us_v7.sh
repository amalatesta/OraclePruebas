#/*======================================================================+
#|  Copyright (c) 2016 Oracle Corporation, Buenos Aires, Argentina       |
#|                         ALL rights reserved.                          |
#+=======================================================================+
#|                                                                       |
#| FILENAME                                                              |
#|     buildpatch_db_us_v7.sh                                            |
#|                                                                       |
#| DESCRIPTION                                                           |
#|     Script para crear el patch.                                       |
#|                                                                       |
#| HISTORY                                                               |
#|     09-JUN-2016    DSP-AMalatesta     Created                         |
#|                                                                       |
#+=======================================================================*/

rm -rf $XBOL_TOP/patches/xx_cll_bank_stmt_as_us_v7

# Creo el patch con el driver
echo 'Creando el patch con el driver'
$XBOL_TOP/bin/xxbuildpatch xx_cll_bank_stmt_as_us_v7.drv xx_cll_bank_stmt_as_us_v7

sleep 1

# Armo el tar
echo 'Armando el tar'
cd $XBOL_TOP/patches
tar -cvf xx_cll_bank_stmt_as_us_v7.tar xx_cll_bank_stmt_as_us_v7
