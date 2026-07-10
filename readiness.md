# Readiness — Engineer

Datum: 2026-07-10
Engineer: Claude (autonoom, branch `workshop/claude-solo`)
Gebaseerd op: handoff.md (Builder klaar)

---

## Wat er ligt (feiten uit handoff.md)

- **Bestand**: `index.html` — één zelfstandig HTML-bestand, 726 regels, inline CSS
- **Geen build-stap**: direct droppable op vercel.com/drop ✅
- **Werkt lokaal**: open in browser, geen server vereist ✅
- **Alle drie de verplichte links aanwezig**: GitHub, Npuls, Community ✅
- **Font**: General Sans via FontShare CDN (internet vereist; fallback: `system-ui`)
- **Logo**: SVG-benadering van Npuls stippenmark (niet het officiële bestand)
- **JavaScript**: geen — de pagina heeft geen runtime-afhankelijkheden

---

## Hosting-keuze

**Nu (workshop):** vercel.com/drop

Sleep `index.html` naar [vercel.com/drop](https://vercel.com/drop). Klaar in <30 seconden, geen account vereist voor een preview-link. Dit is exact het succescriterium uit briefing.md.

**Productie (bonus, buiten workshop-scope):**

| Optie | Wanneer kiezen |
|-------|---------------|
| **GitHub Pages** | Repo staat al op GitHub → Pages aanzetten op `main` → gratis, automatisch, custom domein mogelijk. Laagste drempel. |
| **Vercel via repo-koppeling** | Als je preview-URLs per commit wil of een mooier dashboard. Gratis tier volstaat voor dit volume. |
| **Netlify** | Alternatief voor Vercel, vergelijkbaar aanbod. Geen voordeel boven Vercel hier. |

**Aanbeveling voor productie**: GitHub Pages — de repo bestaat al, nul extra tooling, geen account bij een derde partij nodig buiten wat al aanwezig is.

---

## Risico's

| Risico | Kans | Impact | Aanbeveling |
|--------|------|--------|-------------|
| FontShare CDN valt weg (geen internet, service down) | Laag | Laag — fallback `system-ui` werkt | Voor productie: woff2-bestanden self-hosten in repo |
| Npuls-logo niet officieel (SVG-benadering) | Zeker | Laag voor concept, hoog voor productie | Officieel SVG-bestand opvragen bij Npuls brandteam |
| Geen analytics | Zeker | Laag (workshop-concept) | Niet toevoegen in Fase 1; overweeg Plausible of Fathom in Fase 2 |
| Geen HTTPS bij lokaal openen | Zeker | Nul — browser-behavior, geen risico | Niet relevant voor `file://`; Vercel/GitHub Pages geeft automatisch HTTPS |
| Copy veroudert (statistieken, links) | Laag | Laag | Links zijn extern en stabiel; stats zijn illustratief |

---

## Concrete instructie: live zetten

### Optie A — vercel.com/drop (nu, <1 minuut)
1. Ga naar [vercel.com/drop](https://vercel.com/drop)
2. Sleep het bestand `index.html` naar het dropvlak
3. Vercel geeft een live URL terug (bijv. `https://index-abc123.vercel.app`)
4. Optioneel: claim de URL met een Vercel-account om 'm te behouden

### Optie B — GitHub Pages (productie, ~5 minuten)
1. Ga naar de repo op GitHub
2. Klik op **Settings → Pages**
3. Kies bij "Source": `Deploy from a branch` → branch `main` → map `/` (root)
4. Sla op — GitHub bouwt de site automatisch
5. URL wordt: `https://<gebruikersnaam>.github.io/<reponaam>/`

---

## Openstaande beslissingen (uit handoff.md)

| Vraag | Aanbeveling Engineer |
|-------|---------------------|
| FontShare CDN of self-hosten? | **Self-hosten** voor productie: woff2-bestanden downloaden van FontShare en in `/fonts/` zetten. Voor het concept: CDN is prima. |
| Officieel Npuls-logo of SVG-benadering? | **Officieel logobestand** opvragen voor productie. Voor het concept: huidige SVG-benadering is voldoende herkenbaar. |

---

## Conclusie

Het concept voldoet aan het succescriterium: statisch, droppable, werkt zonder configuratie. De twee openstaande punten (font + logo) zijn Fase 2-werk en blokkeren het concept niet. **Klaar voor drop op vercel.com/drop.**
