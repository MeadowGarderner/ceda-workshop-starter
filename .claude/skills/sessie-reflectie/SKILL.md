---
name: sessie-reflectie
description: Reflecteert op het proces (niet het concept zelf) — werkwijze/interactie met Claude Code, wat gebruikt, wat ging goed, blinde vlekken, optioneel kosten. Kan op elk moment aangeroepen worden, niet alleen aan het eind.
---

# Sessie Reflectie

Trigger: op elk moment dat de gebruiker wil reflecteren of de tussenstand wil zien — tussendoor op verzoek, of aan het eind (na handoff.md/readiness.md).

## Statusbestand

`reflectie.md` — append-only, nooit overschrijven. Elke reflectie (tussentijds of eind) is een nieuwe genummerde entry, zodat eerdere reflecties bewaard blijven.

## Workflow

1. Vraag via Ja/Nee-keuzemenu: "Wil je ook de kosten tot nu toe zien?"
   - Ja → vraag de gebruiker om `/cost` te draaien (Claude Code heeft geen hook die dit automatisch kan uitlezen), en verwerk het resultaat in de entry.
   - Nee → sla over.
2. Kijk naar voortgang.md en .claude/.sessie-status.md om te zien wat er in de sessie is gebeurd.
3. Stel de vragen:
   - Hoe heb je dit aangepakt — je werkwijze en interactie met Claude Code tijdens dit project?
   - Wat heb je gebruikt (skills, tools, keuzes)?
   - Wat ging goed?
   - Wat zijn blinde vlekken — dingen die je nu pas ziet, of bewust hebt overgeslagen?
4. Voeg een nieuwe entry toe aan reflectie.md met naam+rol (uit .claude/.sessie-status.md), tijdstip, en deze secties. Nooit een bestaande entry overschrijven.
5. Commit met conventional commit message (bijv. `docs: sessie-reflectie [naam]`).

Geen technische aannames voor de Builder-rol: geen git-commando's, geen jargon dat engineering-kennis veronderstelt.
