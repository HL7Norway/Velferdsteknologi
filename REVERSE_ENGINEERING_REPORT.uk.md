# ЗВІТ З РЕВЕРСНОЇ ІНЖЕНЕРІЇ — HL7Norway/Velferdsteknologi

## Оригінальний репозиторій
- Назва: Velferdsteknologi
- URL: https://github.com/HL7Norway/Velferdsteknologi
- Тип: Implementation Guide FHIR R4 для технологій допомоги (VKP, Velferdsteknologisk knutepunkt), Норвегія
- Гілка: master
- База: 9d28b9e Merge pull request #13 from HL7Norway/AddNewMedicationDispenseEvent

## Дата аудиту
2026-11-07

## Використані інструменти
- Git v2.49.0
- PowerShell 5.1
- gh (GitHub CLI), автентифіковано як admeduardovieira
- Kilo Code (статичний аналіз файлів XML/JSON/markdown)

## Виявлена архітектура
FHIR R4 Implementation Guide для технологій допомоги регіону VKP (Норвегія). Містить дві основні версії:
- `VKP-R4/` — профілі FHIR R4 (v090) — активна версія: CodeSystems, ValueSets, StructureDefinitions, CapabilityStatement, MessageDefinition, NamingSystem.
- `VFT-EPJ/` — профілі EPJ (v010) — стара версія, збережена для довідки: StructureDefinitions (Address, ContactPoint, Patient тощо) та один приклад пацієнта.
Виконавчий код відсутній; лише клінічні/FHIR визначення.

## Технології та залежності
- FHIR R4 (4.0.0)
- Активна залежність: hl7.fhir.no.basis: 2.0.14 (package.json)
- Файл блокування: fhirpkg.lock.json (повний, simplifier.core.r4 4.0.x)

## Стан обслуговування
- ~13 комітів на master
- 8 відкритих проблем (з 2020-2021, не вирішені: MUST-krav, специфічні vs національні профілі, секретна telecom/address тощо)
- 3 PR (усі злито; останній 2025-11-14)
- Немає автоматизованих тестів
- Мінімальний `.gitignore` (лише `Package-no-basis*/`)

## Обмеження дослідження
- Не є проєктом виконавчого коду; немає середовища для валідації збірки FHIR

---

## Виявлені проблеми (Velferdsteknologi)

| ID | Sev | Статус | Місцезнаходження | Проблема | Виправлення застосовано |
|---|---|---|---|---|---|
| REA-001 | P3 | ПІДТВЕРДжено | .gitignore | Мінімальний `.gitignore` (лише `Package-no-basis*/`); не ігнорує збирання/вивід, ОС, zip/log | `.gitignore` розширено з fsh-generated/, input-cache/, output/, temp/, *.zip, *.log, .DS_Store, Thumbs.db |
| REA-002 | P3 | ПІДТВЕРДжено | README.md | README без списку відкритих проблем, без інформації про активну версію (VKP-R4 vs VFT-EPJ) | README розширено зі списком відкриtych проблем (#4-#12), активною версією, контактом |
| REA-003 | P3 | ГІПОТЕЗА | README.md:12 | Зовнішнє посилання на зображення `git.sarepta.ehelse-no` (може пошкодитися) | Não corrigido (посилання зовнішнє; потребує рішення секретаря проєкту) |

## Повторювані проблеми
- Проблеми #4-#12 (2020-2021) про MUST-krav, специфічні vs національні профілі, секретна telecom/address — ще відкриті, не вирішені успішно.

## Нездокументовані помилки (нові з аудиту)
REA-001, REA-002 не мають публічного запису.

## Зміни, що було впроваджено (Фаза 2)
1. `.gitignore`: розширено з збиранням/виводом, ОС, zip/log шаблонами.
2. `README.md`: розширено зі списком відкритих проблем (з GitHub, #4-#12), активною версією (VKP-R4 vs VFT-EPJ), контактом.

## Зміни, що НЕ було впроваджено
- Зовнішнє посилання на зображення в README (`git.sarepta.ehelse-no`) — вимагає рішення секретаря проєкту щодо розміщення.

## Валідація, що проведено
- Статичний перегляд файлів XML/JSON/markdown.
- Не виконано: збірка FHIR/SUSHI (не застосовується; не є виконавальним кодом).

## Залишаючіся ризики
- Залежність `hl7.fhir.no.basis: 2.0.14` є зовнішньою.
- Відкриті проблеми з 2020 не вирішені.

## Рекомендації для майбутніх аудитів
- Розв'язати проблеми #4-#12 (MUST-krav, профілі, секретна telecom).
- Додати базовий CI для валідації XML FHIR.
