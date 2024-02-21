:: DELL PROPRIETARY INFORMATION
::
:: This software is confidential.  Dell Inc., or one of its subsidiaries, has supplied this
:: software to you under the terms of a license agreement,nondisclosure agreement or both.
:: You may not copy, disclose, or use this software except in accordance with those terms.
::
:: Copyright 2020 - 2021 Dell Inc. or its subsidiaries.  All Rights Reserved.
::
:: DELL INC. MAKES NO REPRESENTATIONS OR WARRANTIES ABOUT THE SUITABILITY OF THE SOFTWARE,
:: EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF
:: MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT.
:: DELL SHALL NOT BE LIABLE FOR ANY DAMAGES SUFFERED BY LICENSEE AS A RESULT OF USING,
:: MODIFYING OR DISTRIBUTING THIS SOFTWARE OR ITS DERIVATIVES.

@echo off

set arch=x86
if defined programfiles(x86) (set arch=x86_64)

cd "%0\..\%arch%"
cctk.exe --version

