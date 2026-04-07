// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Kevin R Sitek",
  title: "Kevin R Sitek - CV",
  footer: context { [#emph[Kevin R Sitek -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 2cm,
  page-bottom-margin: 2cm,
  page-left-margin: 2cm,
  page-right-margin: 2cm,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 4,
    day: 7,
  ),
)


= Kevin R Sitek

  #headline([Research Assistant Professor, Northwestern University])

#connections(
  [#link("mailto:kevin.sitek@northwestern.edu", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[kevin.sitek\@northwestern.edu]]],
  [#link("https://sitek.github.io/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[sitek.github.io]]],
  [#link("https://scholar.google.com/citations?user=fNPFNhsAAAAJ", icon: false, if-underline: false, if-color: false)[#connection-with-icon("graduation-cap")[Google Scholar]]],
  [#link("https://orcid.org/0000-0002-2172-5786", icon: false, if-underline: false, if-color: false)[#connection-with-icon("orcid")[0000-0002-2172-5786]]],
  [#link("https://researchgate.net/profile/Kevin-Sitek", icon: false, if-underline: false, if-color: false)[#connection-with-icon("researchgate")[Kevin-Sitek]]],
  [#link("https://github.com/sitek", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[sitek]]],
  [#link("https://bsky.app/profile/sitek.bsky.social", icon: false, if-underline: false, if-color: false)[#connection-with-icon("bluesky")[sitek.bsky.social]]],
  [#link("https://fediscience.org/@sitek", icon: false, if-underline: false, if-color: false)[#connection-with-icon("mastodon")[\@sitek\@fediscience.org]]],
)


== Education

#education-entry(
  [
    #strong[Harvard University], Speech and Hearing Bioscience and Technology

    - Division of Medical Sciences, Harvard–MIT Program

    - Advisor: Satrajit S. Ghosh, PhD

    - Dissertation: #link("https://dash.harvard.edu/handle/1/42013097")[Mapping the Human Subcortical Auditory System With MRI]

  ],
  [
    2013 – 2019

  ],
  degree-column: [
    #strong[PhD]
  ],
)

#education-entry(
  [
    #strong[University of California, Berkeley], Linguistics (Honors) and Cognitive Science

    - Advisor: Keith Johnson, PhD

    - Linguistics honors thesis: Phonetic context effects in ipsilateral and contralateral conditions

  ],
  [
    2007 – 2011

  ],
  degree-column: [
    #strong[BA]
  ],
)

== Experience

#regular-entry(
  [
    #strong[Northwestern University], Research Assistant Professor

    - Department of Communication Sciences and Disorders

    - Affiliated Faculty: Cognitive Science Program; Northwestern University Interdepartmental Neuroscience (NUIN) PhD Program

  ],
  [
    Evanston, IL

    2023 – present

  ],
)

#regular-entry(
  [
    #strong[University of Pittsburgh], Research Scientist

    - Department of Communication Science and Disorders

    - SoundBrain Lab (PI: Bharath Chandrasekaran, PhD)

  ],
  [
    Pittsburgh, PA

    2021 – 2023

  ],
)

#regular-entry(
  [
    #strong[University of Pittsburgh], Postdoctoral Associate

    - Department of Communication Science and Disorders

    - SoundBrain Lab (PI: Bharath Chandrasekaran, PhD)

  ],
  [
    Pittsburgh, PA

    2021 – 2021

  ],
)

#regular-entry(
  [
    #strong[Baylor College of Medicine], Postdoctoral Associate

    - Department of Neuroscience

    - High Resolution Brain Imaging Lab (PI: David Ress, PhD)

  ],
  [
    Houston, TX

    2019 – 2021

  ],
)

#regular-entry(
  [
    #strong[MIT McGovern Institute for Brain Research], Graduate Student Researcher

    - Gabrieli Laboratory

  ],
  [
    Cambridge, MA

    2014 – 2019

  ],
)

#regular-entry(
  [
    #strong[San Francisco VA Medical Center \/ NCIRE], Staff Research Assistant I\/II

    - Brain Imaging and EEG Laboratory (PIs: Judith Ford, PhD; Daniel Mathalon, PhD, MD)

  ],
  [
    San Francisco, CA

    2011 – 2013

  ],
)

#regular-entry(
  [
    #strong[UC Berkeley Department of Linguistics], Undergraduate\/Staff Research Assistant

    - Phonology Laboratory (PI: Keith Johnson, PhD)

  ],
  [
    Berkeley, CA

    2009 – 2011

  ],
)

== Grants

#regular-entry(
  [
    #strong[Auditory–motor interactions in neural processing and the frequency-following response]

    - NIH NIDCD ECR R21 · Grant: 1R21DC022906-01

    - Role: Principal Investigator

    - Co-Investigators: Bharath Chandrasekaran, PhD; Peer Herholz, Dr. rer. nat.

  ],
  [
    2025–2028

  ],
)

#regular-entry(
  [
    #strong[High-resolution functional imaging of speech-induced sensory modulation]

    - NIH NIDCD R01 · Grant: R01 DC020963-01A1

    - Role: Co-Investigator (PI: Jason W. Bohland, PhD)

  ],
  [
    2024–2028

  ],
)

#regular-entry(
  [
    #strong[Investigating human non-lemniscal inferior colliculus contributions to auditory learning with 7T MRI]

    - NIH NIDCD K01 Mentored Career Development Award · Grant: K01 DC019421-01A1

    - Role: Principal Investigator

    - Co-Mentors: Bharath Chandrasekaran, PhD; Tamer Ibrahim, PhD; Srivatsun Sadagopan, PhD

  ],
  [
    2022–2027

  ],
)

#regular-entry(
  [
    #strong[Administrative Supplement — K01 DC019421]

    - NIH NIDCD Administrative Supplement · Grant: 3K01DC019421-05S1

    - Role: Principal Investigator

  ],
  [
    2025–2026

  ],
)

#regular-entry(
  [
    #strong[Cortical-subcortical interactions in auditory cognition]

    - CIHR Project Grant

    - Role: Collaborator (PI: Robert Zatorre, PhD)

  ],
  [
    2023–2028

  ],
)

#regular-entry(
  [
    #strong[Subcortical auditory feedback mechanisms in speech: Function and structure]

    - NIH NIDCD F31 NRSA Predoctoral Fellowship · Grant: F31 DC015695-01 (completed)

    - Role: Principal Investigator

    - Sponsor: Satrajit S. Ghosh, PhD; Co-Sponsor: John D. E. Gabrieli, PhD

  ],
  [
    2016–2018

  ],
)

== Submitted Manuscripts and Preprints

#regular-entry(
  [
    #strong[Distinct 7T functional MRI response patterns to stimulus, response, and feedback across dorsal striatum during auditory learning]

    #strong[Sitek, K.R.], Roark, C.L., Helou, L.B., Chandrasekaran, B.

  ],
  [
    in revision

  ],
)

#regular-entry(
  [
    #strong[The recognition and comprehension of speech sound patterns show a mechanistic dissociation along the ventral and dorsal streams]

    Llanos, F., #strong[Sitek, K.R.], Feng, G., Chandrasekaran, B.

  ],
  [
    in review

  ],
)

#regular-entry(
  [
    #strong[Auditory corticostriatal connections in the human brain]

    #strong[Sitek, K.R.], Helou, L.B., Chandrasekaran, B.

    #link("https://doi.org/10.1101/2022.08.04.502679")[10.1101\/2022.08.04.502679] (bioRxiv)

  ],
  [
    in revision

  ],
)

#regular-entry(
  [
    #strong[Bayesian Tensor Factorized Mixed Effects Vector Autoregressive Processes for Inferring Granger Causality Patterns from High-Dimensional Neuroimage Data]

    Fan, J., #strong[Sitek, K.R.], Chandrasekaran, B., Sarkar, A.

    #link("https://doi.org/10.48550/arXiv.2206.10757")[10.48550\/arXiv.2206.10757] (arXiv)

  ],
  [
    2022

  ],
)

== Publications

#regular-entry(
  [
    #strong[Mapping Whole-Brain Auditory Activation with 3T Multi-Echo fMRI at the Group and Individual-Subject Level]

    Medina, M.C., Reddy, N.H., #strong[Sitek, K.R.], Bright, M.G.

    #link("https://doi.org/10.1016/j.heares.2026.109622")[10.1016\/j.heares.2026.109622] (Hearing Research)

  ],
  [
    2026

  ],
)

#regular-entry(
  [
    #strong[Communication is the foundation of an impactful and resilient scientific community]

    #strong[Sitek, K.R.], Wearn, A., DuPre, E.M.

    #link("https://doi.org/10.52294/001c.143510")[10.52294\/001c.143510] (Aperture Neuro 2025;5(SI 3))

  ],
  [
    2025

  ],
)

#regular-entry(
  [
    #strong[The Organization for Human Brain Mapping Time Machine: A freely accessible archive of Annual Meeting talks on YouTube]

    Wearn, A., #strong[Sitek, K.R.], Valk, S.L., Forkel, S.J.

    #link("https://doi.org/10.52294/001c.138647")[10.52294\/001c.138647] (Aperture Neuro 2025;5(SI 2))

  ],
  [
    2025

  ],
)

#regular-entry(
  [
    #strong[Functional connectivity across the human subcortical auditory system using an autoregressive matrix-Gaussian copula graphical model approach with partial correlations]

    Chandra, N.K.#emph[, ]#emph[Sitek, K.R.]#sym.ast.basic#h(0pt, weak: true) #sym.ast.basic#h(0pt, weak: true) , Sarkar, A., Chandrasekaran, B.

    #link("https://doi.org/10.1162/imag_a_00258")[10.1162\/imag\_a\_00258] (Imaging Neuroscience)

  ],
  [
    2024

  ],
)

#regular-entry(
  [
    #strong[Cortical-subcortical interactions to violations of auditory predictions measured with 7T functional MRI]

    Ara, A., Provias, V., #strong[Sitek, K.R.], Coffey, E., Zatorre, R.

    #link("https://doi.org/10.1093/cercor/bhae316")[10.1093\/cercor\/bhae316] (Cerebral Cortex)

  ],
  [
    2024

  ],
)

#regular-entry(
  [
    #strong[On the role of neural oscillations across timescales in speech and music processing]

    Gnanateja, G.N., Devaraju, D.S., Heyne, M., Quique, Y.M., #strong[Sitek, K.R.], Tardif, M.C., Tessmer, R., Dial, H.R.

    #link("https://doi.org/10.3389/fncom.2022.872093")[10.3389\/fncom.2022.872093] (Frontiers in Computational Neuroscience)

  ],
  [
    2022

  ],
)

#regular-entry(
  [
    #strong[Structural connectivity of human inferior colliculus subdivisions using in vivo and post mortem diffusion MRI tractography]

    #strong[Sitek, K.R.], Calabrese, E., Johnson, G.A., Ghosh, S.S., Chandrasekaran, B.

    #link("https://doi.org/10.3389/fnins.2022.751595")[10.3389\/fnins.2022.751595] (Frontiers in Neuroscience)

  ],
  [
    2022

  ],
)

#regular-entry(
  [
    #strong[Depth relationships and measures of tissue thickness in dorsal midbrain]

    Truong, P., Kim, J.H., Savjani, R., #strong[Sitek, K.R.], Hagberg, G., Scheffler, K., Ress, D.

    #link("https://doi.org/10.1002/hbm.25185")[10.1002\/hbm.25185] (Human Brain Mapping)

  ],
  [
    2020

  ],
)

#regular-entry(
  [
    #strong[Mapping the human subcortical auditory system using histology, postmortem MRI and in vivo MRI at 7T]

    #strong[Sitek, K.R.]#emph[, Gulban, O.F.], Calabrese, E., Johnson, G.A., Lage-Castellanos, A., Moerel, M., Ghosh, S.S.†, De Martino, F.†

    #link("https://doi.org/10.7554/eLife.48932")[10.7554\/eLife.48932] (eLife)

  ],
  [
    2019

  ],
)

#regular-entry(
  [
    #strong[Alterations in the inferior longitudinal fasciculus in autism and associations with visual processing: a diffusion-weighted MRI study]

    Boets, B., Van Eylen, L., #strong[Sitek, K.], Moors, P., Noens, I., Steyaert, J., Sunaert, S., Wagemans, J.

    #link("https://doi.org/10.1186/s13229-018-0188-6")[10.1186\/s13229-018-0188-6] (Molecular Autism)

  ],
  [
    2018

  ],
)

#regular-entry(
  [
    #strong[Diffusion tensor imaging of central auditory pathways in patients with sensorineural hearing loss: a systematic review]

    Tarabichi, O., Kozin, E.D., Kanumuri, V.V., Barber, S., Ghosh, S., #strong[Sitek, K.R.], Reinshagen, K., Herrmann, B., Remenschneider, A.K., Lee, D.J.

    #link("https://doi.org/10.1177/0194599817739838")[10.1177\/0194599817739838] (Otolaryngology–Head and Neck Surgery)

  ],
  [
    2018

  ],
)

#regular-entry(
  [
    #strong[Decreased cerebellar-orbitofrontal connectivity correlates with stuttering severity: whole-brain functional and structural connectivity associations with persistent developmental stuttering]

    #strong[Sitek, K.R.], Cai, S., Beal, D.S., Perkell, J.S., Guenther, F.H., Ghosh, S.S.

    #link("https://doi.org/10.3389/fnhum.2016.00190")[10.3389\/fnhum.2016.00190] (Frontiers in Human Neuroscience)

  ],
  [
    2016

  ],
)

#regular-entry(
  [
    #strong[Auditory cortex processes variation in our own speech]

    #strong[Sitek, K.R.], Mathalon, D.H., Roach, B.J., Houde, J.F., Niziolek, C.A., Ford, J.M.

    #link("https://doi.org/10.1371/journal.pone.0082925")[10.1371\/journal.pone.0082925] (PLoS ONE)

  ],
  [
    2013

  ],
)

== Teaching

#regular-entry(
  [
    #strong[Communicating Science (CSD 550-3)]

    - Instructor of Record (Adjunct), Northwestern University

    - Graduate PhD course: oral, written, visual, and multimedia science communication

  ],
  [
    2024, 2025

  ],
)

#regular-entry(
  [
    #strong[Speech Communication (MIT 6.541\/HST.710\/SHBT 204)]

    - Graduate Teaching Assistant, MIT\/Harvard University

  ],
  [
    2015, 2016

  ],
)

#regular-entry(
  [
    #strong[Guest Lectures]

    - Auditory Cognitive Neuroscience — Northwestern CSD 366 (Cognitive Science Proseminar)

    - Subcortical Auditory Anatomy — Pitt CSD 2110 (Neuroscience of Communication)

    - Subcortical Contributions to Language — UT Dallas (Brain & Language)

    - Subcortical Auditory Anatomy and Human Function — Pitt CSD 1024 (Anatomy & Physiology of Hearing)

    - Acoustic Phonetics: Vowels — Harvard SHBT 204 (Speech Communication)

  ],
  [
    2016—present

  ],
)

== Mentorship

#regular-entry(
  [
    #strong[PhD Students]

    - Laura Raiff, Biomedical Engineering, Northwestern (2026–present; lead advisor, dissertation advisory committee)

    - Michelle Medina, Biomedical Engineering, Northwestern (2024–present; dissertation advisory committee)

    - Serena Mon, Communication Sciences and Disorders, Northwestern (2023–2024; qualifying exam committee)

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Doctor of Audiology]

    - Laura Cahalan, University of Pittsburgh (Capstone Research Project)

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Undergraduate Research Assistants]

    - Max Chen, BA Cognitive Science, Northwestern (2025–present; FFRPREP contributor)

    - Gabrielle Butler, BA Cognitive Science, Northwestern (2024–2025; honors thesis)

    - Amp Kangusmrith, BA Cognitive Science, Northwestern (2024–present; Independent Study in Cognitive Science)

    - Angelina Dinardo, BA CSD, University of Pittsburgh (Completed MS in Speech Language Pathology at Northeastern University)

    - Madison Andreano, BA CSD, University of Pittsburgh (Completed her MS in Speech Language Pathology at the University of Minnesota)

    - Olivia Flemm, BA CSD, University of Pittsburgh (Completed her AuD at the University of Pittsburgh)

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[High School Research Assistants]

    - Leo Chen (2025, Northwestern University; FFRPREP contributor)

    - Karen Linares Mendoza (2022, University of Pittsburgh; Now pursuing undergraduate studies at Johns Hopkins University)

  ],
  [
  ],
)

== Awards and Honors

#regular-entry(
  [
    #strong[Aperture Neuro Best Reviewer Award]

    - Organization for Human Brain Mapping, Brisbane, Australia

  ],
  [
    2025

  ],
)

#regular-entry(
  [
    #strong[ASHA Lessons for Success]

    - Accepted participant

  ],
  [
    2023

  ],
)

#regular-entry(
  [
    #strong[OHBM Merit Award]

  ],
  [
    2020

  ],
)

#regular-entry(
  [
    #strong[Harvard Brain Science Initiative Young Scientist Travel Award]

  ],
  [
    2018

  ],
)

#regular-entry(
  [
    #strong[Mass. Eye and Ear Amelia Peabody Scholarship]

  ],
  [
    2017–2018

  ],
)

#regular-entry(
  [
    #strong[OHBM Hackathon Travel Award]

    - Vancouver, BC

  ],
  [
    2017

  ],
)

#regular-entry(
  [
    #strong[Neurohackweek \/ Neurohackademy]

    - Accepted participant, Seattle, WA

  ],
  [
    2017

  ],
)

#regular-entry(
  [
    #strong[Certificate of Distinction in Teaching]

    - Harvard University, Derek Bok Center for Teaching and Learning

  ],
  [
    2015

  ],
)

== Service

#regular-entry(
  [
    #strong[#emph[Aperture Neuro] Editorial Review Board]

  ],
  [
    2026—present

  ],
)

#regular-entry(
  [
    #strong[#emph[Frontiers in Language Sciences] Review Editor]

  ],
  [
    2022—present

  ],
)

#regular-entry(
  [
    #strong[Ad hoc reviewer]

    - Journals: #emph[Aperture Neuro, Brain & Language, Brain Structure and Function, Cerebral Cortex, Frontiers in Psychology, Heliyon, Journal of the Association for Research in Otolaryngology, Journal of Neuroscience Research, Journal of Speech, Language, and Hearing Research, Molecular Genetics & Genomic Medicine, NeuroImage, Neuropsychologia, OHBM Abstract Submissions, PLOS ONE]

    - Granting agenncies: European Research Council, Swiss National Science Foundation

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[PhD Admissions Committee, Northwestern University Interdepartmental Neuroscience (NUIN) Program]

  ],
  [
    2025–2026

  ],
)

#regular-entry(
  [
    #strong[ASHA Convention Topic Committee: Hearing, Balance, Tinnitus]

  ],
  [
    2024, 2025

  ],
)

#regular-entry(
  [
    #strong[Undergraduate Studies Committee, Northwestern CSD]

  ],
  [
    2023–2025

  ],
)

#regular-entry(
  [
    #strong[Organization for Human Brain Mapping, Communications Committee]

    - Past Chair (2024–2025)

    - Chair (2023–2024)

    - Chair-Elect \/ Blog Team Lead (2022–2023)

    - Podcast Team Co-founder and Editor (2021–2022)

  ],
  [
    2021–2025

  ],
)

#regular-entry(
  [
    #strong[Organization for Human Brain Mapping, Student–Postdoc Special Interest Group]

    - Social Media and Communications Lead

  ],
  [
    2019–2021

  ],
)

#regular-entry(
  [
    #strong[Society for Cognitive Auditory Neuroscience (SCAN) Moderator]

  ],
  [
    2021–2023

  ],
)

#regular-entry(
  [
    #strong[Science in the News (Harvard)]

    - Social Media Outreach Lead (2015–2019)

    - Editor, Science in the News Blog (2013–2018)

  ],
  [
    2013–2019

  ],
)

#regular-entry(
  [
    #strong[BrainHack Boston Organizing Committee]

  ],
  [
    2017

  ],
)

#regular-entry(
  [
    #strong[SMALL Journal Club Co-founder and Organizer]

  ],
  [
    2016–2019

  ],
)
