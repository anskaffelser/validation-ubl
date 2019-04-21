@echo off
call validate ..\xsd\maindoc\UBL-Order-2.3-TSC.xsd order-test-good.xml
call validate ..\xsd\maindoc\UBL-Order-2.3-TSC.xsd order-test-bad1.xml
call validate ..\xsd\maindoc\UBL-Order-2.3-TSC.xsd order-test-bad2.xml
