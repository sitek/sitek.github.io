
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Kevin R Sitek"
#let locale-catalog-page-numbering-style = context { "Kevin R Sitek - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in Apr 2026"
#let locale-catalog-language = "en"
#let design-page-size = "us-letter"
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 79, 144)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 79, 144)
#let design-colors-connections = rgb(0, 79, 144)
#let design-colors-links = rgb(0, 79, 144)
#let design-section-titles-font-family = "Source Sans 3"
#let design-section-titles-bold = true
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.4em
#let design-section-titles-type = "with-partial-line"
#let design-section-titles-vertical-space-above = 0.5cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = false
#let design-text-font-size = 10pt
#let design-text-leading = 0.6em
#let design-text-font-family = "Source Sans 3"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = false
#let design-header-name-font-family = "Source Sans 3"
#let design-header-name-font-size = 30pt
#let design-header-name-bold = true
#let design-header-small-caps-for-name = false
#let design-header-connections-font-family = "Source Sans 3"
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 0.7cm
#let design-header-use-icons-for-connections = false
#let design-header-horizontal-space-between-connections = 0.5cm
#let design-header-separator-between-connections = ""
#let design-header-alignment = center
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "•"
#let design-highlights-nested-bullet = "-"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0.4cm
#let design-highlights-vertical-space-between-highlights = 0.25cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.5em
#let design-entries-vertical-space-between-entries = 1.2em
#let design-entries-date-and-location-width = 4.15cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0.2cm
#let design-page-top-margin = 2cm
#let design-page-bottom-margin = 2cm
#let design-page-left-margin = 2cm
#let design-page-right-margin = 2cm
#let design-page-show-last-updated-date = true
#let design-page-show-page-numbering = true
#let design-links-underline = false
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)
#set enum(
  spacing: design-entries-vertical-space-between-entries,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-nested-bullet,
  spacing: design-highlights-vertical-space-between-highlights,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let bullet-entry(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: 0pt,
    indent: 0pt,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    font: design-header-name-font-family,
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #if design-header-small-caps-for-name [
    #smallcaps(it.body)
  ] else [
    #it.body
  ]
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    font: design-section-titles-font-family,
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-partial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  set text(fill: design-colors-connections, font: design-header-connections-font-family)
  set par(leading: design-text-leading*1.7, justify: false)
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

= Kevin R Sitek

// Print connections:
#let connections-list = (
  [#box(original-link("mailto:kevin.sitek@northwestern.edu")[kevin.sitek\@northwestern.edu])],
  [#box(original-link("https://sitek.github.io/")[sitek.github.io])],
  [#box(original-link("https://scholar.google.com/citations?user=fNPFNhsAAAAJ")[Google Scholar])],
  [#box(original-link("https://orcid.org/0000-0002-2172-5786")[0000-0002-2172-5786])],
  [#box(original-link("https://github.com/sitek")[GitHub\/sitek])],
  [#box(original-link("https://bsky.app/profile/sitek.bsky.social")[Bluesky \(sitek.bsky.social\)])],
  [#box(original-link("https://fediscience.org/@sitek")[Mastodon \(\@sitek\@fediscience.org\)])],
)
#connections(connections-list)



== Education


// YES DATE, YES DEGREE
#three-col-entry(
  left-column-width: 1cm,
  left-content: [#strong[PhD]],
  middle-content: [
    #strong[Harvard University], Speech and Hearing Bioscience and Technology
  ],
  right-content: [
    2013 – 2019
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([Division of Medical Sciences, Harvard–MIT Program],[Advisor: Satrajit S. Ghosh, PhD],[Dissertation: #link("https://dash.harvard.edu/handle/1/42013097")[Mapping the Human Subcortical Auditory System With MRI]],)
  ],
  inset: (
    left: design-entry-types-education-entry-degree-column-width + design-entries-horizontal-space-between-columns + design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, YES DEGREE
#three-col-entry(
  left-column-width: 1cm,
  left-content: [#strong[BA]],
  middle-content: [
    #strong[University of California, Berkeley], Linguistics \(Honors\) and Cognitive Science
  ],
  right-content: [
    2007 – 2011
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([Advisor: Keith Johnson, PhD],[Linguistics honors thesis: Phonetic context effects in ipsilateral and contralateral conditions],)
  ],
  inset: (
    left: design-entry-types-education-entry-degree-column-width + design-entries-horizontal-space-between-columns + design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)



== Experience


#two-col-entry(
  left-content: [
    #strong[Northwestern University], Research Assistant Professor
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Department of Communication Sciences and Disorders],[Affiliated Faculty: Cognitive Science Program; Northwestern University Interdepartmental Neuroscience \(NUIN\) PhD Program],)
  ],
  right-content: [
    Evanston, IL

2023 – present
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[University of Pittsburgh], Research Scientist
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Department of Communication Science and Disorders],[SoundBrain Lab \(Director: Bharath Chandrasekaran, PhD\)],)
  ],
  right-content: [
    Pittsburgh, PA

2021 – 2023
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[University of Pittsburgh], Postdoctoral Associate
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Department of Communication Science and Disorders],)
  ],
  right-content: [
    Pittsburgh, PA

2021 – 2021
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Baylor College of Medicine], Postdoctoral Associate
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Department of Neuroscience],)
  ],
  right-content: [
    Houston, TX

2019 – 2021
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[MIT McGovern Institute for Brain Research], Graduate Student Researcher
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Gabrieli Laboratory],)
  ],
  right-content: [
    Cambridge, MA

2014 – 2019
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[San Francisco VA Medical Center \/ NCIRE], Staff Research Assistant I\/II
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Brain Imaging and EEG Laboratory \(PIs: Judith Ford, PhD; Daniel Mathalon, PhD, MD\)],)
  ],
  right-content: [
    San Francisco, CA

2011 – 2013
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[UC Berkeley Department of Linguistics], Undergraduate\/Staff Research Assistant
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Phonology Laboratory \(PI: Keith Johnson, PhD\)],)
  ],
  right-content: [
    Berkeley, CA

2009 – 2011
  ],
)



== Grants


#two-col-entry(
  left-content: [
    #strong[Auditory–motor interactions in neural processing and the frequency-following response]
  ],
  right-content: [
    2025–2028
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([NIH NIDCD ECR R21 · Grant: 1R21DC022906-01],[Role: Principal Investigator],[Co-Investigators: Bharath Chandrasekaran, PhD; Peer Herholz, Dr. rer. nat.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[High-resolution functional imaging of speech-induced sensory modulation]
  ],
  right-content: [
    2024–2028
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([NIH NIDCD R01 · Grant: R01 DC020963-01A1],[Role: Co-Investigator \(PI: Jason W. Bohland, PhD\)],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Investigating human non-lemniscal inferior colliculus contributions to auditory learning with 7T MRI]
  ],
  right-content: [
    2022–2027
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([NIH NIDCD K01 Mentored Career Development Award · Grant: K01 DC019421-01A1],[Role: Principal Investigator],[Co-Mentors: Bharath Chandrasekaran, PhD; Tamer Ibrahim, PhD; Srivatsun Sadagopan, PhD],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Administrative Supplement — K01 DC019421]
  ],
  right-content: [
    2025–2026
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([NIH NIDCD Administrative Supplement · Grant: 3K01DC019421-05S1],[Role: Principal Investigator],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Cortical-subcortical interactions in auditory cognition]
  ],
  right-content: [
    2023–2028
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([CIHR Project Grant],[Role: Collaborator \(PI: Robert Zatorre, PhD\)],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Subcortical auditory feedback mechanisms in speech: Function and structure]
  ],
  right-content: [
    2016–2018
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([NIH NIDCD F31 NRSA Predoctoral Fellowship · Grant: F31 DC015695-01 \(completed\)],[Role: Principal Investigator],[Sponsor: Satrajit S. Ghosh, PhD; Co-Sponsor: John D. E. Gabrieli, PhD],)
  ],
)



== Submitted Manuscripts and Preprints


#two-col-entry(
  left-content: [
    #strong[Distinct 7T functional MRI response patterns to stimulus, response, and feedback across dorsal striatum during auditory learning]

  ],
  right-content: [
    in revision
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);#strong[Sitek, K.R.], Roark, C.L., Helou, L.B., Chandrasekaran, B])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[The recognition and comprehension of speech sound patterns show a mechanistic dissociation along the ventral and dorsal streams]

  ],
  right-content: [
    in review
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Llanos, F., #strong[Sitek, K.R.], Feng, G., Chandrasekaran, B])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Auditory corticostriatal connections in the human brain]

  ],
  right-content: [
    in revision
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);#strong[Sitek, K.R.], Helou, L.B., Chandrasekaran, B.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1101/2022.08.04.502679")[10.1101/2022.08.04.502679] (bioRxiv)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Bayesian Tensor Factorized Mixed Effects Vector Autoregressive Processes for Inferring Granger Causality Patterns from High-Dimensional Neuroimage Data]

  ],
  right-content: [
    2022
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Fan, J., #strong[Sitek, K.R.], Chandrasekaran, B., Sarkar, A.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.48550/arXiv.2206.10757")[10.48550/arXiv.2206.10757] (arXiv)])



== Publications


#two-col-entry(
  left-content: [
    #strong[Mapping Whole-Brain Auditory Activation with 3T Multi-Echo fMRI at the Group and Individual-Subject Level]

  ],
  right-content: [
    2026
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Medina, M.C., Reddy, N.H., #strong[Sitek, K.R.], Bright, M.G.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1016/j.heares.2026.109622")[10.1016/j.heares.2026.109622] (Hearing Research)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Communication is the foundation of an impactful and resilient scientific community]

  ],
  right-content: [
    2025
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);#strong[Sitek, K.R.], Wearn, A., DuPre, E.M.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.52294/001c.143510")[10.52294/001c.143510] (Aperture Neuro 2025;5\(SI 3\))])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[The Organization for Human Brain Mapping Time Machine: A freely accessible archive of Annual Meeting talks on YouTube]

  ],
  right-content: [
    2025
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Wearn, A., #strong[Sitek, K.R.], Valk, S.L., Forkel, S.J.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.52294/001c.138647")[10.52294/001c.138647] (Aperture Neuro 2025;5\(SI 2\))])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Functional connectivity across the human subcortical auditory system using an autoregressive matrix-Gaussian copula graphical model approach with partial correlations]

  ],
  right-content: [
    2024
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Chandra, N.K.#sym.ast.basic#h(0pt, weak: true) , #strong[Sitek, K.R.]#sym.ast.basic#h(0pt, weak: true) , Sarkar, A., Chandrasekaran, B.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1162/imag_a_00258")[10.1162/imag_a_00258] (Imaging Neuroscience)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Cortical-subcortical interactions to violations of auditory predictions measured with 7T functional MRI]

  ],
  right-content: [
    2024
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Ara, A., Provias, V., #strong[Sitek, K.R.], Coffey, E., Zatorre, R.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1093/cercor/bhae316")[10.1093/cercor/bhae316] (Cerebral Cortex)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[On the role of neural oscillations across timescales in speech and music processing]

  ],
  right-content: [
    2022
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Gnanateja, G.N., Devaraju, D.S., Heyne, M., Quique, Y.M., #strong[Sitek, K.R.], Tardif, M.C., Tessmer, R., Dial, H.R.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.3389/fncom.2022.872093")[10.3389/fncom.2022.872093] (Frontiers in Computational Neuroscience)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Structural connectivity of human inferior colliculus subdivisions using in vivo and post mortem diffusion MRI tractography]

  ],
  right-content: [
    2022
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);#strong[Sitek, K.R.], Calabrese, E., Johnson, G.A., Ghosh, S.S., Chandrasekaran, B.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.3389/fnins.2022.751595")[10.3389/fnins.2022.751595] (Frontiers in Neuroscience)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Depth relationships and measures of tissue thickness in dorsal midbrain]

  ],
  right-content: [
    2020
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Truong, P., Kim, J.H., Savjani, R., #strong[Sitek, K.R.], Hagberg, G., Scheffler, K., Ress, D.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1002/hbm.25185")[10.1002/hbm.25185] (Human Brain Mapping)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Mapping the human subcortical auditory system using histology, postmortem MRI and in vivo MRI at 7T]

  ],
  right-content: [
    2019
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);#strong[Sitek, K.R.]#sym.ast.basic#h(0pt, weak: true) , Gulban, O.F.#sym.ast.basic#h(0pt, weak: true) , Calabrese, E., Johnson, G.A., Lage-Castellanos, A., Moerel, M., Ghosh, S.S.†, De Martino, F.†

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.7554/eLife.48932")[10.7554/eLife.48932] (eLife)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Alterations in the inferior longitudinal fasciculus in autism and associations with visual processing: a diffusion-weighted MRI study]

  ],
  right-content: [
    2018
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Boets, B., Van Eylen, L., #strong[Sitek, K.], Moors, P., Noens, I., Steyaert, J., Sunaert, S., Wagemans, J.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1186/s13229-018-0188-6")[10.1186/s13229-018-0188-6] (Molecular Autism)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Diffusion tensor imaging of central auditory pathways in patients with sensorineural hearing loss: a systematic review]

  ],
  right-content: [
    2018
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Tarabichi, O., Kozin, E.D., Kanumuri, V.V., Barber, S., Ghosh, S., #strong[Sitek, K.R.], Reinshagen, K., Herrmann, B., Remenschneider, A.K., Lee, D.J.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1177/0194599817739838")[10.1177/0194599817739838] (Otolaryngology–Head and Neck Surgery)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Decreased cerebellar-orbitofrontal connectivity correlates with stuttering severity: whole-brain functional and structural connectivity associations with persistent developmental stuttering]

  ],
  right-content: [
    2016
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);#strong[Sitek, K.R.], Cai, S., Beal, D.S., Perkell, J.S., Guenther, F.H., Ghosh, S.S.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.3389/fnhum.2016.00190")[10.3389/fnhum.2016.00190] (Frontiers in Human Neuroscience)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Auditory cortex processes variation in our own speech]

  ],
  right-content: [
    2013
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);#strong[Sitek, K.R.], Mathalon, D.H., Roach, B.J., Houde, J.F., Niziolek, C.A., Ford, J.M.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1371/journal.pone.0082925")[10.1371/journal.pone.0082925] (PLoS ONE)])



== Teaching


#two-col-entry(
  left-content: [
    #strong[Communicating Science \(CSD 550-3\)]
  ],
  right-content: [
    2024, 2025
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Instructor of Record \(Adjunct\), Northwestern University],[Graduate PhD course: oral, written, visual, and multimedia science communication],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Speech Communication \(MIT 6.541\/HST.710\/SHBT 204\)]
  ],
  right-content: [
    2015, 2016
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Graduate Teaching Assistant, MIT\/Harvard University],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Guest Lectures]
  ],
  right-content: [
    2016—present
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Auditory Cognitive Neuroscience — Northwestern CSD 366 \(Cognitive Science Proseminar\)],[Subcortical Auditory Anatomy — Pitt CSD 2110 \(Neuroscience of Communication\)],[Subcortical Contributions to Language — UT Dallas \(Brain & Language\)],[Subcortical Auditory Anatomy and Human Function — Pitt CSD 1024 \(Anatomy & Physiology of Hearing\)],[Acoustic Phonetics: Vowels — Harvard SHBT 204 \(Speech Communication\)],)
  ],
)



== Mentorship



#one-col-entry(
  content: [
    #strong[PhD Students]

    #v(-design-text-leading)
    #v(design-highlights-top-margin);#highlights([Laura Raiff, Biomedical Engineering, Northwestern \(2026–present; lead advisor, dissertation advisory committee\)],[Michelle Medina, Biomedical Engineering, Northwestern \(2024–present; dissertation advisory committee\)],[Serena Mon, Communication Sciences and Disorders, Northwestern \(2023–2024; qualifying exam committee\)],)
  ],
)

#v(design-entries-vertical-space-between-entries)

#one-col-entry(
  content: [
    #strong[Doctor of Audiology]

    #v(-design-text-leading)
    #v(design-highlights-top-margin);#highlights([Laura Cahalan, University of Pittsburgh \(Capstone Research Project\)],)
  ],
)

#v(design-entries-vertical-space-between-entries)

#one-col-entry(
  content: [
    #strong[Undergraduate Research Assistants]

    #v(-design-text-leading)
    #v(design-highlights-top-margin);#highlights([Max Chen, BA Cognitive Science, Northwestern \(2025–present; FFRPREP contributor\)],[Gabrielle Butler, BA Cognitive Science, Northwestern \(2024–2025; honors thesis\)],[Amp Kangusmrith, BA Cognitive Science, Northwestern \(2024–present; Independent Study in Cognitive Science\)],[Angelina Dinardo, BA CSD, University of Pittsburgh \(Completed MS in Speech Language Pathology at Northeastern University\)],[Madison Andreano, BA CSD, University of Pittsburgh \(Completed her MS in Speech Language Pathology at the University of Minnesota\)],[Olivia Flemm, BA CSD, University of Pittsburgh \(Completed her AuD at the University of Pittsburgh\)],)
  ],
)

#v(design-entries-vertical-space-between-entries)

#one-col-entry(
  content: [
    #strong[High School Research Assistants]

    #v(-design-text-leading)
    #v(design-highlights-top-margin);#highlights([Leo Chen \(2025, Northwestern University; FFRPREP contributor\)],[Karen Linares Mendoza \(2022, University of Pittsburgh; Now pursuing undergraduate studies at Johns Hopkins University\)],)
  ],
)



== Awards and Honors


#two-col-entry(
  left-content: [
    #strong[Aperture Neuro Best Reviewer Award]
  ],
  right-content: [
    2025
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Organization for Human Brain Mapping, Brisbane, Australia],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[ASHA Lessons for Success]
  ],
  right-content: [
    2023
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Accepted participant],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[OHBM Merit Award]
  ],
  right-content: [
    2020
  ],
)
#one-col-entry(
  content: [
    
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Harvard Brain Science Initiative Young Scientist Travel Award]
  ],
  right-content: [
    2018
  ],
)
#one-col-entry(
  content: [
    
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Mass. Eye and Ear Amelia Peabody Scholarship]
  ],
  right-content: [
    2017–2018
  ],
)
#one-col-entry(
  content: [
    
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[OHBM Hackathon Travel Award]
  ],
  right-content: [
    2017
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Vancouver, BC],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Neurohackweek \/ Neurohackademy]
  ],
  right-content: [
    2017
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Accepted participant, Seattle, WA],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Certificate of Distinction in Teaching]
  ],
  right-content: [
    2015
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Harvard University, Derek Bok Center for Teaching and Learning],)
  ],
)



== Service


#two-col-entry(
  left-content: [
    #strong[#emph[Aperture Neuro] Editorial Review Board]
  ],
  right-content: [
    2026—present
  ],
)
#one-col-entry(
  content: [
    
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[#emph[Frontiers in Language Sciences] Review Editor]
  ],
  right-content: [
    2022—present
  ],
)
#one-col-entry(
  content: [
    
  ],
)

#v(design-entries-vertical-space-between-entries)

#one-col-entry(
  content: [
    #strong[Ad hoc reviewer]

    #v(-design-text-leading)
    #v(design-highlights-top-margin);#highlights([Journals: #emph[Aperture Neuro, Brain & Language, Brain Structure and Function, Cerebral Cortex, Frontiers in Psychology, Heliyon, Journal of the Association for Research in Otolaryngology, Journal of Neuroscience Research, Journal of Speech, Language, and Hearing Research, Molecular Genetics & Genomic Medicine, NeuroImage, Neuropsychologia, OHBM Abstract Submissions, PLOS ONE]],[Granting agenncies: European Research Council, Swiss National Science Foundation],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[PhD Admissions Committee, Northwestern University Interdepartmental Neuroscience \(NUIN\) Program]
  ],
  right-content: [
    2025–2026
  ],
)
#one-col-entry(
  content: [
    
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[ASHA Convention Topic Committee: Hearing, Balance, Tinnitus]
  ],
  right-content: [
    2024, 2025
  ],
)
#one-col-entry(
  content: [
    
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Undergraduate Studies Committee, Northwestern CSD]
  ],
  right-content: [
    2023–2025
  ],
)
#one-col-entry(
  content: [
    
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Organization for Human Brain Mapping, Communications Committee]
  ],
  right-content: [
    2021–2025
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Past Chair \(2024–2025\)],[Chair \(2023–2024\)],[Chair-Elect \/ Blog Team Lead \(2022–2023\)],[Podcast Team Co-founder and Editor \(2021–2022\)],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Organization for Human Brain Mapping, Student–Postdoc Special Interest Group]
  ],
  right-content: [
    2019–2021
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Social Media and Communications Lead],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Society for Cognitive Auditory Neuroscience \(SCAN\) Moderator]
  ],
  right-content: [
    2021–2023
  ],
)
#one-col-entry(
  content: [
    
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Science in the News \(Harvard\)]
  ],
  right-content: [
    2013–2019
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Social Media Outreach Lead \(2015–2019\)],[Editor, Science in the News Blog \(2013–2018\)],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[BrainHack Boston Organizing Committee]
  ],
  right-content: [
    2017
  ],
)
#one-col-entry(
  content: [
    
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[SMALL Journal Club Co-founder and Organizer]
  ],
  right-content: [
    2016–2019
  ],
)
#one-col-entry(
  content: [
    
  ],
)



