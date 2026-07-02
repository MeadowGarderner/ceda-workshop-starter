---
name: readiness-writer
description: Genereert of actualiseert readiness.md wanneer Engineer klaar is. Trigger wanneer Engineer aangeeft klaar te zijn (via onboarding of expliciet).
---

# Readiness Writer

Trigger: Engineer geeft aan klaar te zijn (bijv. via de onboarding-vraag "klaar en readiness schrijven?").

## Workflow

1. Check of handoff.md al bestaat.
   - **Nee** (Builder nog niet klaar): stel de vraag "Welke aannames maak je over wat de Builder gaat opleveren?" en schrijf het antwoord in readiness.md onder een expliciet gemarkeerde sectie: "Aannames — nog niet geverifieerd tegen handoff.md."
   - **Ja** (Builder is al klaar): lees handoff.md en vervang aannames door de feiten daaruit. Geen vraag nodig over wat Builder oplevert — dat staat er al.
2. Stel altijd (ongeacht of handoff.md bestaat) de twee resterende vragen:
   - Welke hosting/stack-keuze maak je en waarom? (koppel aan stack-advisor's advies indien aanwezig)
   - Welke risico's zie je?
3. Schrijf/werk readiness.md bij met deze secties, plus een concrete instructie om een lege site live te zetten (GitHub Pages of vercel.com/drop — zie succescriterium in briefing.md).
4. Werk voortgang.md bij (regel toevoegen/status aanpassen, met naam+rol uit .claude/.sessie-status.md).
5. Commit met conventional commit message (bijv. `docs: readiness` of `docs: readiness bijgewerkt met handoff`).

Als Engineer eerder klaar is dan Builder en later nog tijd over heeft: readiness-writer opnieuw aanroepen zodra handoff.md er is, dan wordt de aannames-sectie automatisch vervangen door feiten.
