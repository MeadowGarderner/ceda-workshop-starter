---
name: stack-advisor
description: Geeft de Engineer kort en concreet stack/hosting-advies voor het concept dat de Builder bouwt. Gebruik wanneer Engineer advies wil over stack of hosting.
---

# Stack Advisor

## Workflow

1. Lees briefing.md (succescriterium: droppable op vercel.com/drop) en, indien aanwezig, voortgang.md om te zien wat er gebouwd wordt.
2. Vraag kort via keuzemenu's (1-3 vragen): type concept (statisch/interactief), verwacht verkeer (laag/onbekend/hoog), integraties nodig (geen/CMS/API's).
3. Geef kort en concreet advies. Default: static hosting (GitHub Pages of Vercel), aansluitend op het succescriterium uit briefing.md. Wijk alleen af als de antwoorden daar aanleiding toe geven.
4. Check of er al een deploy-skill geïnstalleerd is (kijk in `.claude/skills/`). Niet aannemen dat die er is.
   - **Niet aanwezig**: bied via keuzemenu aan om 'm te installeren, met korte uitleg:
     - *"Ja, installeer vercel-deploy-claimable"* — `npx skills add vercel-labs/agent-skills --skill vercel-deploy-claimable --agent claude-code --copy -y`
       Waarom: deployt het concept direct naar een live, claimbare URL — handig om het advies meteen te kunnen laten zien i.p.v. alleen te beschrijven.
     - *"Nee, verder zonder"* — advies blijft geldig, alleen geen directe live-preview.
5. Werk voortgang.md bij (regel toevoegen/status aanpassen, met naam+rol uit .claude/.sessie-status.md).
6. Commit met conventional commit message (bijv. `docs: stack-advies`).
