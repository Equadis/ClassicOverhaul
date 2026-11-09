--[[ Equadis' Classic Overhaul :: class training tables

  **What a class trainer would teach you, by level**, absorbed from What's
  Training? Turtle -- Sveng's addon, ported to Turtle by spawnedc and
  rebasedkon, MIT. See NOTICE for what ECO changed.

  This file only makes the table the nine class files fill. It is listed above
  them in the TOC because a data file that assigns into a global nobody created
  is a file that errors on load and takes the rest of the addon's load order
  with it.

  Two shapes live here:

  - `spells[CLASS][level]` -- a list of what becomes trainable at that level.
  - `overrides[CLASS][id]` -- ranks that a later rank wholly replaces. Knowing
    Heroic Strike 9 means knowing every rank below it, and without this the
    list would offer to sell you eight ranks you already have.
]]--

EquadisClassicOverhaulTrainingDB = {
    source = "What's Training? Turtle 1.1.0",
    spells = {},
    overrides = {},
}
