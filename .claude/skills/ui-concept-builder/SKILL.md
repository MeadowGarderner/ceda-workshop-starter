---
name: ui-concept-builder
description: Bouwt een werkend, losstaand concept van een webpagina of kleine website (static HTML, geen build-stap) op basis van de projectcontext. Gebruik wanneer iemand een UI/pagina-concept wil bouwen of aanpassen.
---

# UI Concept Builder

## Workflow

1. Lees projectcontext, indien aanwezig:
   - `briefing.md` (of vergelijkbaar bestand) voor scope/doel en succescriterium
   - `style-presets.md` (in deze skill-map) voor stijlrichtingen
   - `layout-opties.md` (in deze skill-map) voor lay-outrichtingen
   - Elk PDF-bestand in de projectroot met "brand" in de bestandsnaam (bijv. brandbook.pdf) — indien gevonden, meld dit en vraag via Ja/Nee-keuzemenu: "Ik zie een huisstijldocument ([bestandsnaam]) — wil je dat ik die gebruik voor kleuren/typografie i.p.v. de standaard stijlrichtingen?"

   Ontbreekt een van deze bestanden? Vraag dat onderdeel dan direct aan de gebruiker (open vraag) i.p.v. een keuzemenu.

2. Vraag stijlrichting via een keuzemenu — opties uit style-presets.md, tenzij een brandbook gevonden én gekozen is (dan die kleuren/typografie aanhouden). Native "anders, namelijk..."-optie erbij.

3. Vraag lay-out/opzet via een keuzemenu — opties uit layout-opties.md, elk met een kort plus- en minpunt. Native "anders, namelijk..."-optie erbij.

4. Vraag aantal pagina's via een keuzemenu: "Alles op 1 pagina (scrollen)" / "Meerdere losse pagina's" / "Anders, namelijk...". Kort pro/con per optie.

5. Check op dit moment of er een geïnstalleerde frontend-design/UI-kwaliteitsskill beschikbaar is (kijk in `.claude/skills/`). Niet aannemen dat die er is.
   - **Wel aanwezig**: gebruik 'm straks bij het genereren.
   - **Niet aanwezig**: bied als keuzemenu aan om er één te installeren, met korte uitleg waarom:
     - *"frontend-design installeren"* — `npx skills add https://github.com/anthropics/skills --skill frontend-design --agent claude-code --copy -y`
       Waarom: voorkomt een generieke "AI-slop"-uitstraling (paarse gradients, standaard Inter-font, voorspelbare layout) — geeft het concept een eigen visuele identiteit.
     - *"web-design-guidelines installeren"* — `npx skills add vercel-labs/agent-skills --skill web-design-guidelines --agent claude-code --copy -y`
       Waarom: controleert het resultaat op 100+ praktische regels (toegankelijkheid, focus-states, responsief gedrag) — een kwaliteitscheck ná het bouwen.
     - *"Beide installeren"*
     - *"Nee, verder zonder"* — gewoon doorbouwen, geen probleem.
   - Als de gebruiker kiest te installeren: voer het commando uit, en ga daarna verder met bouwen.

6. **Harde regel, geen keuze**: gebruik nooit een framework of taal die een build-stap of server vereist om HTML te renderen (React, Next.js, Vue, Angular, PHP-templating, server-side rendering, etc.) — ook niet als dat de voor de hand liggende manier lijkt om "een website te bouwen". Altijd plain HTML/CSS/vanilla JS in één losstaand bestand. Dit is omslachtig vergeleken met hoe zo'n framework het zou aanpakken, maar het is het punt: het succescriterium (droppable op vercel.com/drop, geen build-stap) staat al vast in briefing.md — dit is geen open vraag voor Engineer, gewoon niet doen.

7. Genereer een losstaand static HTML-bestand (inline CSS, geen build-stap) — moet droppable zijn op vercel.com/drop, zie succescriterium in briefing.md. Gebruik frontend-design (indien beschikbaar) voor de visuele uitwerking, en web-design-guidelines (indien beschikbaar) als kwaliteitscheck achteraf.

   **Let op twee soorten stack-risico's tijdens het bouwen (anders dan de harde regel hierboven — dit mag wel, maar moet gemarkeerd):**

   a. **Verzoeken die meer suggereren dan een static pagina waar kan maken** — bijv. een contactformulier dat écht mailt, een login, een zoekfunctie met resultaten. Hier bestaat geen "simpele" oplossing binnen static HTML. Bouw het visueel na (hoort bij het concept), maar het is duidelijk niet functioneel.

   b. **Verzoeken die wél écht werken zodra je ze test, maar een stack-keuze zijn die stiekem geen plain HTML meer is** — bijv. data bewaren via localStorage alsof het een database is, een externe JS-library via CDN inladen voor interactiviteit. Dit voelt voor Builder net zo simpel als de rest (het werkt gewoon meteen), maar is een architecturale keuze — niet per se fout, maar wel eentje die Engineer moet zien, niet iets om stilzwijgend te kiezen.

   Bij elk gevonden punt (a of b), genereer een mini-ADR i.p.v. een losse notitie, en zet die in voortgang.md:

   ```
   ### Mini-ADR: [korte naam van het punt]
   Context: [wat er nu in het concept staat en waarom]
   | Optie | Pro | Con |
   |---|---|---|
   | Huidige concept-aanpak | ... | ... |
   | [realistisch alternatief, bijv. Astro] | ... | ... |
   | [tweede alternatief, bijv. Next.js static export, of een CMS] | ... | ... |
   Overwegingen: lange-termijn onderhoud, update-gemak (ook voor niet-technische mensen), snelheid, complexiteit.
   Beslissing: _(in te vullen door Engineer)_
   ```

   Kies alternatieven die realistisch zijn voor wát er precies gevraagd werd (niet altijd dezelfde twee opties) en geef bij elke optie een concrete, geen algemene pro/con.

   In alle gevallen (a en b):
   - Bouw het (het hoort bij het concept, niet weigeren).
   - Markeer het duidelijk met een HTML-comment ter plekke (bijv. `<!-- stack-keuze: zie mini-ADR in voortgang.md -->`).
   - Als Builder vraagt hoe het "echt" werkt, of waarom dit een goede keuze is: leg de techniek niet zelf uit en verdedig de keuze niet. Zeg dat dit een vraag voor de Engineer is (stack/techniek is hun domein) en verwijs naar de mini-ADR — beantwoord het niet zelf, ook niet als het antwoord voor de hand ligt.

8. Werk voortgang.md bij (regel toevoegen/status aanpassen, met naam+rol uit .claude/.sessie-status.md, inclusief eventuele mini-ADR's).

9. Commit met conventional commit message (bijv. `feat: eerste concept [scope]`).

Geen technische aannames voor de Builder-rol: geen git-commando's, geen jargon dat engineering-kennis veronderstelt (dus "opzet"/"stijl" i.p.v. "wireframe"/"CSS-classes") — de installatie-vraag in stap 5 is de enige uitzondering, en die is optioneel en kort uitgelegd.
