# Mermaid 12.2.0 vendor patch

This directory contains the source patch used by
[mdview](https://github.com/kayven1981/mdview) for the Mermaid runtime.

The patch is based on Mermaid 12.2.0, upstream commit
`1fb7869866dd619168d840291c9c54b4f129758b`, and is maintained on the
`mdview/invisible-gateway-12.2.0` branch of this fork.

- patch: `mermaid-12.2.0-invisible-gateway.patch`
- patch SHA-256: `d94b9f5bb91223bf1033e40e452095e15a22b9f46c683c9ba4dcfcc0c05e4e00`

It adds:

- node-level `phantom: true`: the node stays in layout/edge routing but is
  0×0, invisible, and intersects at its center;
- ELK respect for an explicitly configured `flowchart.curve` / per-edge
  `curve` instead of always overwriting it with `rounded`.

See `docs/mdview-invisible-gateway.md` for the full background, build steps,
validation matrix, and limitations.
