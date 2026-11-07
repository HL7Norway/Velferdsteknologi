# REVERSE ENGINEERING REPORT — HL7Norway/Velferdsteknologi

## Original repository
- Name: Velferdsteknologi
- URL: https://github.com/HL7Norway/Velferdsteknologi
- Type: Implementation Guide FHIR R4 for assistive technology (VKP, Velferdsteknologisk knutepunkt), Norway
- Branch: master
- Base: 9d28b9e Merge pull request #13 from HL7Norway/AddNewMedicationDispenseEvent

## Audit date
2026-11-07

## Tools used
- Git v2.49.0
- PowerShell 5.1
- gh (GitHub CLI), authenticated as admeduardovieira
- Kilo Code (static analysis of XML/JSON/markdown files)

## Identified architecture
FHIR R4 Implementation Guide for assistive technology of VKP region (Norway). Contains two main versions:
- `VKP-R4/` — FHIR R4 profiles (v090) — active version: CodeSystems, ValueSets, StructureDefinitions, CapabilityStatement, MessageDefinition, NamingSystem.
- `VFT-EPJ/` — EPJ profiles (v010) — old version, kept for reference: StructureDefinitions (Address, ContactPoint, Patient, etc.) and one patient example.
No executable code; clinical/FHIR definitions only.

## Technologies and dependencies
- FHIR R4 (4.0.0)
- Active dependency: hl7.fhir.no.basis: 2.0.14 (package.json)
- Lock file: fhirpkg.lock.json (complete, simplifier.core.r4 4.0.x)

## Maintenance status
- ~13 commits on master
- 8 open Issues (since 2020-2021, unresolved: MUST-krav, specific vs national profiles, secret telecom/address, etc.)
- 3 PRs (all merged; last on 2025-11-14)
- No automated tests configured
- Minimal `.gitignore` (only `Package-no-basis*/`)

## Investigation limitations
- Not executable code project; no environment to validate FHIR build

---

## Problems found (Velferdsteknologi)

| ID | Sev | Status | Location | Problem | Fix applied |
|---|---|---|---|---|---|
| REA-001 | P3 | CONFIRMED | .gitignore | Minimal `.gitignore` (only `Package-no-basis*/`); does not ignore build/output, OS, zip/log | `.gitignore` expanded with fsh-generated/, input-cache/, output/, temp/, *.zip, *.log, .DS_Store, Thumbs.db |
| REA-002 | P3 | CONFIRMED | README.md | README without open Issues list, without active version info (VKP-R4 vs VFT-EPJ) | README expanded with open Issues (#4-#12), active version, contact |
| REA-003 | P3 | HYPOTHESIS | README.md:12 | External image link to `git.sarepta.ehelse.no` (may break) | Not fixed (external reference; requires maintainer decision) |

## Recurring problems
- Issues #4-#12 (2020-2021) on MUST-krav, specific vs national profiles, secret telecom/address — still open, not resolved satisfactorily.

## Undocumented errors (new from audit)
REA-001, REA-002 have no visible public record.

## Changes implemented (Phase 2)
1. `.gitignore`: expanded with build/output, OS, zip/log patterns.
2. `README.md`: expanded with open Issues list (from GitHub), active version (VKP-R4 vs VFT-EPJ), contact.

## Changes NOT implemented
- External image link in README (`git.sarepta.ehelse.no`) — requires maintainer decision on hosting.

## Validation performed
- Static review of XML/JSON/markdown files.
- Not executed: FHIR/SUSHI build (not applicable; not executable code).

## Remaining risks
- Dependency `hl7.fhir.no.basis: 2.0.14` is external.
- Open Issues since 2020 unresolved.

## Recommendations for future audits
- Resolve Issues #4-#12 (MUST-krav, profiles, secret telecom).
- Add basic CI for FHIR XML validation.
