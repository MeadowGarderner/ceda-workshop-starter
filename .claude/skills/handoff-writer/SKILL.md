---
name: handoff-writer
description: Genereert handoff.md wanneer Builder klaar is met bouwen. Trigger wanneer Builder aangeeft klaar te zijn (via onboarding of expliciet).
---

# Handoff Writer

Trigger: Builder geeft aan klaar te zijn (bijv. via de onboarding-vraag "klaar en handoff maken?").

## Workflow

1. Genereer automatisch een concept-handoff.md met secties:
   - **Wat is gebouwd** — bestanden, secties, gekozen stijl (uit de sessie zelf)
   - **Tech stack** — gedetecteerd op basis van de daadwerkelijk gebouwde bestanden, niet aangenomen. Check expliciet: is dit droppable op vercel.com/drop (static bestanden, geen build-stap)? Dat is het succescriterium uit briefing.md.
   - **Vergelijking met briefing.md** — welke Solution-onderdelen gedekt, welke No-Gos overgeslagen
   - **Waarom deze keuzes** — voor zover af te leiden uit het gesprek
   - **Zorgen / open vragen voor de Engineer** — neem hier alle mini-ADR's uit voortgang.md letterlijk over (context, opties met pro/con, overwegingen, lege beslissing) — niet samenvatten tot een losse regel, Engineer moet de volledige afweging zien.
2. Toon dit concept altijd aan Builder. Vraag per sectie: "wil je deze aanpassen? Ja/Nee"
3. Verwerk aanpassingen bij Ja, laat de rest staan bij Nee.
4. Schrijf definitieve handoff.md.
5. Werk voortgang.md bij (regel toevoegen/status aanpassen, met naam+rol uit .claude/.sessie-status.md).
6. Commit met conventional commit message (bijv. `docs: handoff naar Engineer`).

Geen technische aannames voor de Builder-rol: geen git-commando's, geen jargon dat engineering-kennis veronderstelt.
