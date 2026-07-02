---
name: onboarding
description: Start bij elke nieuwe sessie. Herkent terugkerende gebruikers via een append-only statuslog (geen naam opnieuw nodig, alleen bevestigen), vraagt rol (Builder/Engineer) via een keuzemenu, en toont het rolafhankelijke stappenplan als eerste output.
---

# Onboarding

Trigger: altijd bij de EERSTE boodschap van een sessie.

Scope van de workshop is Fase 1 (Idee ↔ Concept) — geen fase-vraag nodig, iedereen zit altijd in Fase 1.

## Statusbestand

`.claude/.sessie-status.md` — append-only log, nooit overschrijven. Elke sessie voegt een nieuwe genummerde entry toe:

```
## Sessie <nummer> — <datum/tijd>
Naam: ...
Rol: Builder | Engineer
Status: ...
```

Staat in `.gitignore` — puur lokaal, wordt nooit gedeeld via git.

## Workflow

1. Check `.claude/.sessie-status.md`.
   - **Bestaat en bevat een entry**: lees de meest recente entry (ongeacht naam) en toon 'm: "Ik heb van de vorige keer: [naam], [rol], bezig met [status]. Klopt dit nog?" — als Ja/Nee-keuzemenu. **Vraag hier geen naam** — die staat al in de entry.
     - Ja → vraag als Ja/Nee-keuzemenu of ze klaar zijn met hun huidige stap, ga direct door naar de bijbehorende vervolgstap of skill (sla stap 2-4 hieronder over).
     - Nee → vraag naam opnieuw (open vraag), ga verder bij stap 2.
   - **Bestaat niet of leeg**: vraag naam (open vraag), ga verder bij stap 2.
2. Vraag rol via een keuzemenu: Builder of Engineer.
3. Check of er al een git-workflow-skill geïnstalleerd is (kijk in `.claude/skills/`, bijv. een map met "git-workflow" in de naam). Niet aannemen dat die er is.
   - **Wel aanwezig**: ga door naar stap 4.
   - **Niet aanwezig**: bied via keuzemenu aan om 'm te installeren, met korte uitleg — dit geldt voor Builder én Engineer, ongeacht rol:
     - *"Ja, installeer"* — `npx skills add https://github.com/netresearch/git-workflow-skill --skill git-workflow --agent claude-code --copy -y`
       Waarom: ik commit sowieso namens je (zit al in elke skill als laatste stap) — dit zorgt dat die commits een consistent, leesbaar formaat volgen (conventional commits), ook al typ je zelf nooit een git-commando.
     - *"Nee, verder zonder"* — geen probleem, commits worden dan zonder die extra kennis gemaakt.
4. **Alleen bij rol Engineer**: wijs erop dat ze aan het begin even kunnen kijken op deze directories voor skills/MCP's/agents die Builder (of henzelf) verder kunnen helpen — bijv. iets specifieks voor de content, het soort site, of een integratie die nuttig blijkt:
   - https://www.skills.sh/ — agent skills
   - https://mcpmarket.com/ — MCP servers én skills
   - https://smithery.ai/ — MCP servers, groot aanbod
   - https://glama.ai/mcp/servers — MCP servers, met previews
   - https://subagents.app/ — kant-en-klare Claude Code subagents (bijv. code-review, debugging, testing)
   Geen verplichte stap, gewoon een pointer, niet uitgebreid op ingaan tenzij Engineer er iets mee wil.
5. Voeg een nieuwe entry toe aan `.claude/.sessie-status.md` (toevoegen, nooit een bestaande entry overschrijven).
6. Toon als eerste output het stappenplan (tonen, geen vraag):
   - **Builder**: briefing.md bekijken → ui-concept-builder → content-drafter → (zodra klaar) handoff-writer
   - **Engineer**: briefing.md bekijken → stack-advisor → readiness-writer (zodra klaar — gebruikt aannames als Builder nog niet klaar is, anders feiten uit handoff.md) → optioneel, als er tijd over is: architecture-diff, of productie-rewrite (dit laatste is puur de code zelf herschrijven voor productie — Fase 2-werk, buiten scope van de workshop, alleen als bonus na de sessie)
7. Begin met de eerste stap uit dat plan.

Belangrijk: rol en Ja/Nee-vragen altijd tonen als keuzemenu (AskUserQuestion), nooit als open tekstvraag. Naam wordt alleen gevraagd als er geen (kloppende) eerdere entry is.

Geen technische aannames voor de Builder-rol: geen git-commando's, geen jargon dat engineering-kennis veronderstelt — de installatie-vraag in stap 3 is de enige uitzondering, en die is optioneel en kort uitgelegd.
