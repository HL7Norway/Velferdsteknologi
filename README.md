# Område for profiler tilhørende Velferdsteknologisk knutepunkt (VKP)
- Profiler av resources
- Extensions
- Eksempler
- Implementasjonsguider med metafiler

## Publisering
Ferdige profiler publiseres også her: 


## Vi benytter Feature branch workflow
![Feature branch workflow](https://git.sarepta.ehelse.no/utvikling/FHIR/raw/92dff80b4b825be384908a90a3abfa7d6a8d6a46/Feature-branch-workflow.JPG)

Vi baserer oss på at nye features utvikles i egne feature branches og merges inn i master branch etterhvert som de er klare. Arbeidsflyten er forklart i detalj her:
https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow

## Katalogstruktur

|\\[prosjektnavn]| | |
|---|---|---|
| |\\CodeSystem | CodeSystem definisjoner |
| |\\CapabilityStatement | CapabilityStatement ressurser |
| |\\examples | eksempler |
| |\\Images | Bilder/figurer til IG |
| |\\NamingSystem | Optinal definisjon av navnerom |
| |\\Script | Optional |
| |\\SearchParameter | Optional definisjon av egne søkeparametere til CapabilityStatement|
| |\\StructureDefinition | alle extensions og profiler |
| |\\ValueSet | ValueSet definisjoner |
| |[prosjektnavn]-[versjon].zip | Pakke med det ferdige resultatet for en versjon |

## Navngivning av filer
Inne i katalogene benytter vi navngivningsregler fra [SIMPLIFIER Best practices](https://simplifier.net/guide/ProfilingAcademy/Best-practices)

**Filnavn for profiler og extensions:**  
vkp-Flag-v090.structuredefinition-profile.xml  
vkp-additionalpositiondata-v090.structuredefinition-extension.xml  

**URL'ene i koden:**  
http://ehelse.no/fhir/StructureDefinition/vkp-Flag-v090

## kontakt

jorn punktum sikkerbol at ehelse punktum no

thomas punktum tveit punktum rosenlund at ehelse punktum no

