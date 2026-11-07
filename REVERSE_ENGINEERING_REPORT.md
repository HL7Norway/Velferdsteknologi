# REVERSE ENGINEERING REPORT — HL7Norway/Velferdsteknologi

## Repositório original
- Nome: Velferdsteknologi
- URL: https://github.com/HL7Norway/Velferdsteknologi
- Tipo: Implementation Guide FHIR R4 para tecnologia assistencial (VKP, Velferdsteknologisk knutepunkt), Noruega
- Branch: master
- Base: 9d28b9e Merge pull request #13 from HL7Norway/AddNewMedicationDispenseEvent

## Data da auditoria
2026-11-07

## Ferramentas utilizadas
- Git v2.49.0
- PowerShell 5.1
- gh (GitHub CLI), autenticado como admeduardovieira
- Kilo Code (análise estática de arquivos XML/JSON/markdown)

## Arquitetura identificada
Implementation Guide FHIR R4 para tecnologia assistencial da região VKP (Noruega). Contém duas versões principais:
- `VKP-R4/` — perfis FHIR R4 (v090) — versão ativa: CodeSystems, ValueSets, StructureDefinitions, CapabilityStatement, MessageDefinition, NamingSystem.
- `VFT-EPJ/` — perfis EPJ (v010) — versão antiga, mantida por referência: StructureDefinitions (Address, ContactPoint, Patient, etc.) e um exemplo de paciente.
Não há código executável; são definições clínicas/FHIR.

## Tecnologias e dependências
- FHIR R4 (4.0.0)
- Dependência ativa: hl7.fhir.no.basis: 2.0.14 (package.json)
- Lock file: fhirpkg.lock.json (completo, simplifier.core.r4 4.0.x)

## Estado de manutenção
- ~13 commits no master
- 8 Issues abertas (desde 2020-2021, não resolvidas: MUST-krav, perfis específicos vs nacionais, telecom/address secreto, etc.)
- 3 PRs (todos mergados; último em 2025-11-14)
- Nenhum teste automatizado configurado
- `.gitignore` mínimo (apenas `Package-no-basis*/`)

## Limitações da investigação
- Não é projeto de código executável; não há ambiente para validar build FHIR

---

## Problemas encontrados (Velferdsteknologi)

| ID | Sev | Status | Localização | Problema | Correção aplicada |
|---|---|---|---|---|---|
| REA-001 | P3 | CONFIRMADO | .gitignore | .gitignore mínimo (apenas `Package-no-basis*/`); não ignora build/output, OS, zip/log | .gitignore expandido com fsh-generated/, input-cache/, output/, temp/, *.zip, *.log, .DS_Store, Thumbs.db |
| REA-002 | P3 | CONFIRMADO | README.md | README sem lista de Issues abertas, sem informação de versão ativa (VKP-R4 vs VFT-EPJ) | README expandido com Issues abertas (#4-#12), versão ativa, contato |
| REA-003 | P3 | HIPÓTESE | README.md:12 | Link de imagem para `git.sarepta.ehelse.no` (externo, pode quebrar) | Não corrigido (referência externa; requer decisão do mantenedor) |

## Problemas recorrentes
- Issues #4-#12 (2020-2021) sobre MUST-krav, perfis específicos vs nacionais, telecom/address secreto — ainda abertas, não resolvidas satisfatoriamente.

## Erros não documentados (novos da auditoria)
REA-001, REA-002 não têm registro público visível.

## Mudanças implementadas (Fase 2)
1. `.gitignore`: expandido com build/output, OS, zip/log padrões.
2. `README.md`: expandido com lista de Issues abertas (do GitHub), versão ativa (VKP-R4 vs VFT-EPJ), contato.

## Mudanças NÃO implementadas
- Link de imagem externo no README (requer decisão do mantenedor sobre hospedagem).

## Validação executada
- Revisão estática dos arquivos XML/JSON/markdown.
- Não executado: build FHIR/SUSHI (não aplicável; não é código executável).

## Riscos remanescentes
- Dependência `hl7.fhir.no.basis: 2.0.14` é externa.
- Issues abertas desde 2020 não resolvidas.

## Recomendações para auditorias futuras
- Resolver Issues #4-#12 (MUST-krav, perfis, telecom secreto).
- Adicionar CI básico para validação de XML FHIR.
