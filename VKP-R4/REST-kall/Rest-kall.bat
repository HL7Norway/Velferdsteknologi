På hjemmepc:

curl.exe http://localhost:8080/baseDstu2/StructureDefinition/Velocityms --upload-file extensions\Velocityms.structuredefinition.xml
curl.exe http://tgs-fhir-web.testsenter.nhn.no/baseDstu3/Bundle --upload-file examples/eVik-message-bundle-01.json
curl.exe http://localhost:8080/baseDstu3/Bundle --upload-file examples/eVik-message-bundle-01.json

curl.exe http://localhost:8080/baseDstu3/StructureDefinition/vft-timestamp --upload-file StructureDefinition\vft-timestamp.structuredefinition.xml
curl.exe http://localhost:8080/baseDstu3/StructureDefinition/test-flag --upload-file StructureDefinition\test-flag.structuredefinition.xml
curl.exe http://localhost:8080/baseDstu3/Flag/test-flag --upload-file examples\test-flag-testing.xml

curl.exe http://localhost:8080/baseDstu3/StructureDefinition/vft-flag --upload-file StructureDefinition\vft-flag.structuredefinition.xml
curl.exe http://localhost:8080/baseDstu3/StructureDefinition/vft-geoposition --upload-file StructureDefinition\vft-geoposition.structuredefinition.xml
curl.exe http://localhost:8080/baseDstu3/StructureDefinition/vft-quantityaltitudemeters --upload-file StructureDefinition\vft-quantityaltitudemeters.structuredefinition.xml
curl.exe http://localhost:8080/baseDstu3/StructureDefinition/vft-timestamp --upload-file StructureDefinition\vft-timestamp.structuredefinition.xml
curl.exe http://localhost:8080/baseDstu3/StructureDefinition/vft-URL --upload-file StructureDefinition\vft-URL.structuredefinition.xml
curl.exe http://localhost:8080/baseDstu3/StructureDefinition/vft-severityvalueset --upload-file StructureDefinition\vft-severityvalueset.structuredefinition.xml

curl.exe https://vkp-functionapp-larslekekasse.azurewebsites.net/api/ValidateFhir --upload-file StructureDefinition\vft-flag.structuredefinition.xml