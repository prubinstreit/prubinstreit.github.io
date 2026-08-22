---
layout: archive
title: "Passion Projects"
permalink: /passion-projects/
author_profile: true
---

Beyond my professional work, I build data tools to explore the things I love.
This one turns years of my personal travel calendar into an interactive map of
every flight I've taken.

## ✈️ Flight Passport — Personal Flight History Map

The dashboard below is generated from my own flight records. A Python pipeline
([`flight_history`](https://github.com/prubinstreit)) parses flight events out of
my calendar export (`.ics`), geocodes each airport, and draws the great‑circle
route for every leg using **Folium/Leaflet**. The version shown here is the
mobile‑optimized build from **July 21, 2026**, covering trips from **2006–2027**.

<div style="width: 100%; max-width: 1000px; margin: 1.5em auto;">
  <iframe
    src="/files/html/routes_map_20260817_mobile2.html"
    title="Interactive map of Philip Strumine's personal flight history"
    width="100%"
    height="640"
    style="border: 1px solid #ddd; border-radius: 6px;"
    loading="lazy">
  </iframe>
</div>

<p style="text-align:center;">
  <a href="/files/html/routes_map_20260817_mobile2.html" target="_blank" rel="noopener">
    Open the full‑screen interactive map ↗
  </a>
</p>

### What the map shows

* **Passport summary tiles** — a headline row totals the journey at a glance:
  **450 flights**, **534,070 miles** flown, **58d 21h** of airtime, and
  **100 distinct airports** visited.
* **Countries visited** — a flag strip tallies the **47 countries** I've touched
  down in, from Argentina to the United States.
* **Routes flown** — each line is one flight segment drawn along the
  great‑circle path between its origin and destination airport (~200 segments
  across **30+ airlines**), fanning out from my U.S. hubs to Europe, the Middle
  East, and Asia.
* **Airports** — sized markers sit at every airport I've departed from or arrived
  at; the larger the dot, the more times I've flown through it.
* **Airline & aircraft detail** — clicking a route or marker opens a popup with
  the carrier (e.g. United, Qatar Airways, Singapore Airlines) and the specific
  aircraft type flown (e.g. Airbus A350, A321, Boeing widebodies).
* **Interactivity** — pan, zoom, and click directly in the embedded frame, all
  drawn over a clean CartoDB "light" basemap so the routes stay the visual focus.

### How it's built

| Stage | Tooling |
|-------|---------|
| Source data | Calendar export (`.ics`) of booked/flown flights |
| Parsing & enrichment | Python (`pandas`); optional airline/aircraft lookup via the aviationstack API |
| Airport geocoding | Airport code → lat/lon reference table |
| Rendering | `folium` + Leaflet, great‑circle polylines with per‑airline styling |
| Output | Self‑contained interactive HTML (desktop and mobile builds) |

The full source and generator script live in my
[GitHub repositories](https://github.com/prubinstreit).
