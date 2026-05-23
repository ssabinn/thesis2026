// Formatting 

#set table(
  stroke: (x: none, y: 0.05em),
  gutter: 2,
  fill: (x, y) =>
    if y == 0 { rgb("#E2E7FA") },
  inset: (right: 0.5em),
  align: start,
)

#show table.cell: it => {
  if it.y == 0 {
    set text(black)
    strong(it)
  } else if it.body == [] {
    // Replace empty cells with 'N/A'
    pad(..it.inset)[_N/A_]
  } else {
    it
  }
}

#show table: set par(justify:false)

#let a = table.cell(
  fill: green.lighten(60%),
)[A]
#let b = table.cell(
  fill: aqua.lighten(60%),
)[B]

#show figure.where(
  kind: table
): set figure.caption(position: bottom)

// Content

= Methodology
#text(red)[how do we say that when we mean system, we mean computational system?]

This chapter presents the methodological approach adopted for this study. It describes: (1) case of study, (2) epistemology & research design, (3) data collection techniques, (4) participant recruitment, (5) data analysis method, and (6) ethical considerations.

== Case Study/Study Area
To properly explore and propose agency distribution throughout the four phases of therapy, we employed a case study approach as our research method @myers2020 in collaboration with Brain Stimulation. Brain Stimulation is a company that provides two services to therapists and clinicians who work with patients suffering from visuospatial neglect (VSN). The two services include: (1) A digital screening tool used for cognitive assessment of patients using various standardized tests to assess cognitive function such as attention and visual neglect, and (2) a digital therapy system, including a therapist monitoring tool and various XR-based exergames, that provide more engaging and motivating rehabilitation of cognitive and motor functions through interactive and multisensory 3D games.

== Research through Design
This study adopts a *_/Participatory Research through Design (Participatory RtD)/_* approach to investigate how 
decision-making agency should be distributed between therapists and system across the different phases of therapy for personalised exergame-based rehabilitation.

Research through Design (RtD) refer to design activities that contribute to the generation of knowledge by making, iterating and reflecting to explore a design space (Stappers & Giaccardi, 2014).RtD is positions itself as a mode of inquiry allowing exploratory and practice-base research. RtD was selected for the study because the agency distribution in therapeutic process in its entirety is an unexplored design space and this study aims to generate design knowledge through iteratively making and reflecting of technology designed to be used by therapists for rehabilitation, rather than limiting to exploration of existing systems.

Participatory design strengthens RtD by involving therapists and researchers, so their knowledge of clinical workflows, decision-making needs, and domain expertise can be used to investigate the boundaries of agency. On the other hand, having Brain Stimulation informants as participants can inform of the technological space and adaptation realities #text(red)[mention pilot studies?]. Participatory design elevates therapists from just being a user to active co-designers who are capable to addressing the power imbalance with emergent technologies.

This allowed the study to move from understanding current rehabilitation work process and practices to collaboratively and critically explore future design directions. In practice, the study is not limited to collecting user opinions, but also treats the design process itself as a research process in which the participant input informs the design guidelines.

//link method to results for clarifications //????

== Epistemology & Research Design
// LowIQboi gets participatory research through design elaboration, mention design of co-design sessions and activities, dimensions, persona, 4 phases of therapy - not needed anymore?

The epistemology will be of an interpretative nature as we will attempt to understand the necessary agency distribution between the 4 main phases of therapy (see figure 1b). Doing so will let us get deeper and more qualitative insights into the actual contexts, tools, and workflows of therapists and how their therapy process could feel more supported, thus provide better rehabilitation. For validity purposes, the entirety of research process as well as prototype design process was documented in the form of images and text @myers2020. 

#figure(
  image("../images/methods.png"),
  caption: [Research Design]
) <method>


== Data Collection Techniques
To attain a detailed and holistic understanding of everything, this study adopted several data collection techniques, namely, interviews, observation and speculative co-design sessions. This approach was crucial for this study (1) to develop understanding in how the agency should be distributed between therapists and computational system across all four main phases of therapy (See figure 1b), and (2) to create a concept-design prototype of the therapist interface based on the findings *(See figures X-Z).*

=== Contextual Inquiry A - Interviews
This study's explorations started with a contextual inquiry through semi-structured interviews with the company’s product manager (PM) and MD/Founder to understand the products, the workflow, the underlying reasoning and logic behind the rehabilitation products. Semi-structured interviews were also conducted with three occupational therapists (OT) who have used either one or both of Brain Stimulation's digital services (assessment and therapy tool) to understand their workflow, appreciations and pain points with the tools (Myers 2020). All five interviews were designed to last a maximum of 45-60 minutes long. The interviews were through verbal consent recorded and transcribed using Teams and were later controlled and corrected for validity purposes.

Given the diversity in the respondents roles, the interview guides varied in focus areas to capture accurate and role-specific contextual information. The interview with the PM focused on tool functionality, current assessment tests in their first tool, which data metrics are collected and how they are translated into exergame rehab through their second tool, technical constraints, game control adaptability and future development plans. The interview for the MD/Founder was however more focused on clinical and research foundations of the two systems, the rationale for adopting XR technologies specifically and key insights from early research that shaped the current design of Brain Stimulation's tools, as well as how the assessment and therapy phases are linked using the tools. Lastly, the interview for the OT's using either one or both of Brain Stimulation's tools were more focused on their workflow, how the tools support their assessment and therapy work as well as which pain points existed and what they felt was missing from the tools. 

By capturing several perspectives across product, clinical and end-user, a more holistic understanding of the workflow across phases, tools, capabilities, and limitations was conceptualized. This helped us identify strengths and gaps which informed the design construction of the co-design sessions, ultimately affecting this study's findings and concept design prototype. 

=== Contextual Inquiry B - Observation
One observation was also conducted with one of the three occupational therapists from the previous interviews during a rehabilitation session. The aim of the observation was to observe how a therapist actually use Brain Stimulation's digital therapy system (tool 2) to conduct a therapy session. The observation lasted for the full session (60 minutes) and was only carried out, recorded, and transcribed after verbal consent from both the patient and the occupational therapist. The transcription was later controlled and corrected for validity purposes. 

The occupational therapist was encouraged to perform the thinking aloud method while interacting with the digital tool during the session. This approach was employed to capture real-time reasoning, decision-making, and insights into how the tool supported or hindered the therapists ability to assess and provide personalized rehabilitation. To limit potential reinterpretation or distortion caused by recall limitations and facilitate high validation, the entirety of the observation was documented in text and audio. The observation further deepened the contextual understanding of the therapy session, the product use in clinical setting, and current agency distribution between the therapist and the tool (Myers 2020). 

=== Speculative Co-Design Sessions
*The choice of performing speculative co-design sessions was to keep the RtD approach of this study by employing the participatory co-designing method (Smith et al., 2025). *In addition, the speculative nature of this study's co-design session was to invite participants to a design-futuring ( #text(red)[include design futuring source]) space where anything can be speculated and imagined through this study's four situated, concrete and specific futures (see figure X). A total of six one-on-one speculative co-design sessions were conducted with occupational therapists, physiotherapists and researchers within the field (see @codesign), of which one was a pilot study that was performed to adjust and improve the activities, questions and overall quality of the co-design session. All six co-design sessions were designed to last between 1.5 to 2 hours. All sessions were recorded, after verbal consent, and transcribed using Teams and were later reviewed and corrected for validity purposes.

==== Pilot Study
Before proceeding to the co-design sessions, we did a pilot study. The pilot study provides valuable insights into potential challenges in the research project (Van Teijlingen & Hundley, 2001). The purpose of this pilot was to test the feasibility of our co-design session design, to understand how therapists' agency was affected by the availability of specific fine-grained settings and exergame parameters across different scenarios and across different phases (See @phases). We aimed to assess the validity of the design of our co-design session in order to explore agency boundaries.

The pilot study was informed by case study, literature, contextual inquiries with rehabilitation system product owners and their therapist users. We conducted the pilot study with one participant, in alignment with the full co-design session. A persona was created to ground the pilot co-design session in a realistic clinical session and provide a context where participants could refer to. This persona was used for the duration of the session (See @persona). 

#figure(
  image("../images/persona.png"),
  caption: [Persona]
)<persona>

//should this be before pilot session
The four main phases of rehabilitation were validated from relevant research and contextual inquiry (See Section 5.1.1): (1) Therapy Planning & Goal Setting, (2) Session Planning, (3) Rehabilitation Session, and (4) Post-Session Evaluation. These four phases were defined as standard, after being validated with the participant, when discussing scenarios for the duration of the pilot session. Similarly, fine-grained settings and exergame parameters were grouped by type and categorized by phases and then presented to the participant to validate (See @controls). The participant was then presented with *seven futuristic and provocative rehabilitation system* (See Appendix X) to probe the therapists' boundaries, and the requirements for settings and exergame parameters in different phases of rehabilitation for each of the scenarios. To further probe the scenarios, questions were designed to address at least three dimensions based on findings from contextual inquiry (see Results): (1) Temporality; pre-configuration or real-time adjustments of settings and exergame parameters, (2) Granularity; how fine-grained the settings, parameters and information available to the therapists should be, and (3) Interaction cost; time and effort required to perform any action. 

#figure(
  image("../images/controls.png"),
  caption: [List of controls and parameters by phases]
) <controls>
/// where do I mention the four phase design
/// where do i mention the scenarios
/// where do i mention the dimensions (or if)

The pilot study proved to be valuable for properly designing the co-design sessions. First, the pilot session, along with contextual inquiry, revealed the fine-grained settings and exergame parameters were conditional and could be added or removed depending on the use case. The agency distribution between therapists and system in *decision-making as well as decision-execution across *different phases of rehabilitation was more important than specific fine-grained settings. Secondly, the scenarios presented were not comparable to each other and the dimensions used to probe them were too open and as a result, it was difficult to isolate and attribute any particular findings to a dimension or scenarios.

These findings were used to make following adjustments to the co-design session:

1. Shift the focus of the study from how therapists agency was affected by the availability of specific fine-grained settings and exergame parameters to how agency should be distributed between therapists and the system in *decision-making as well as decision-execution* across different phases.

2. Elevate dimensions as the primary means to probe agency distribution by expanding the number of dimensions to seven: (1) Agency in *decision-making*; who does *clinical reasoning and decision-making* (2) Agency in execution; who enacts or executes the decisions, and exergame parameters, (3) Granularity; how fine-grained the settings, parameters and information available to or provided by the therapists should be, (4) Temporality; pre-configuration or real-time adjustments of settings, (5) Interaction cost; time and effort required to perform any action. (6) Patient vs Data; prioritization of patient experience or data availability // conntect to theory & contextual inquiry, patient-interqction and remote capabilities of such a system
, and (7) Materiality; how technology affects therapeutic process. // to provide a proper framework, we wanted to construct a system that is medium-agnostic, hence explored materiality. 

3. Agency in decision-making and Agency in execution were then decided as primary dimensions with the rest of the dimensions serving as a means to further probe and isolate findings. A scenario 2x2 matrix was created for the primary dimensions ranging from full human agency to full system agency and then scenarios were developed for each combination to explore  shift across the spectrum and independently examine the dimensions. Questions were formulated for other dimensions, referred to as probe dimensions, to further probe the agency distribution in each of the scenarios. This allowed the study to shift from abstract thinking about randomized scenarios to being open to critical conversation about possible futures in a controlled manner.

The findings from the pilot study was omitted from final data analysis and only used to adjust the final co-design session to focus on agency distribution instead.
//

==== Final Co-Design Session
// Add more details about the scenarios, make it more tangible in another figure, mention which one is Scenario 1, 2, 3, and 4.

The redesigned final co-design session aimed to understand the distribution of agency, what the boundaries are, and if there were any conditions to this agency. Similar to pilot study the participants were first presented with a persona (See @persona) that grounded the entire co-design session in clinical practice. Then they were introduced to four main phases of rehabilitation (See @phases) and subsequently validated with the participants. These phases were set as standard for the entirety of the session to have a common language.

The participants were then presented with four scenarios developed from the scenario matrix, based on two primary dimensions and which were probed one after the other. (See @codesign). The scenarios presented during the co-design session are as follows: 

1. *Scenario 1 (Full Human Agency):* Therapists have full autonomy and can control every little detail in the therapeutic process. They reason and act independently of the system
2. *Scenario 2 (Recommendation System):* The system performs clinical reasoning and provides recommendations. The therapists have control to accept, reject or adjust the recommendations. The therapists executes the reasoning independently.
3. *Scenario 3 (Prompt System):* Therapists reason independently and then prompt the system to execute the decisions. 
4. *Scenario 4 (Full System Agency):* The system autonomously handles the entire therapeutic process independently including processing data, reasoning and executing. Therapists are kept on the loop and are informed of the decisions and plans. Therapists, however, have the authority to override any system decision when needed. 

#figure(
  table(
    columns: (auto, auto, auto ,auto),
    align: (left, left, left, left),
    
    [Code], [Scenario Name], [Agency in Reasoning], [Agency in Execution],
  
    [*S1*], [Full Human Agency], [Human], [Human],
    [*S2*], [Recommendation System], [System], [Human],
    [*S3*], [Prompt System], [Human], [System],
    [*S4*], [Full System Agency], [System], [System],
  ),
  caption: [Scenario Matrix], 
) <table-scenarios>

Appendix X displays each scenario in more detail. For each scenario that was presented, participants were asked about how it made them feel and how it could affect their role as therapists. The participants were then asked questions formulated from the probe dimensions one after the other. The questions were designed to fit the scenarios while maintaining the dimensionality aspect of it, hence, every scenarios didn't have the exact same questions. 

#figure(
  image("../images/codesign.png"),
  caption: [Co-design Session. (a) Primary Dimension Matrix (b) Probe Dimensions]
)<codesign>
#text(red)[update codesign figure to include numbers]

Once all the scenarios were presented and probed, with the full knowledge of all possible scenarios, the participants were asked to design their ideal therapeutic system by distributing the scenarios across the four different phases (See @designsystem). The participants were allowed to place multiple scenarios in a phases as well as use multiple instances of the scenarios in multiple phases. Lastly, the participants were asked on what they thought the future of therapeutic system would be. 

#figure(
  image("../images/phases2.png"),
  caption: [(a) 3 Levels of Interaction, (b) Four Phases in exergames therapy control]
) <phases>
#text(red)[ explain about scenarios ]

Conducting the co-design sessions in above described manner successfully informed this study's two aims, namely: (1) to develop understanding in how the agency should be distributed between therapists and computational system across all four main phases of therapy (See figure 1b), and (2) to create a concept-design prototype of the therapist interface based on the findings.

== Participants
The participants were selected through a purposive sampling method *(ADD SOURCE)* where only individuals who attained one or several of the following criteria's were invited: (1) Works or has worked as a clinical occupational therapist, (2) Works or has worked as a clinical physiotherapist, (3) PhD students, professors and/or researchers within occupational therapy, physiotherapy and/or rehabilitation field. These requirements were essential in both attaining a contextual inquiry and qualitative data from the co-design session. //include exp. and knowledge and skill. 

Several networks was used to recruit therapists and/or researchers fulfilling above criteria. Those networks were direct users (OT's & PT's) of Brain Stimulation's services, researchers at Umeå University, and LinkedIn. The snowball sampling method was also used where recommendations for additional contacts with similar criteria was requested from all those who were contacted. In total 40 individuals who fall within our criteria's were invited, of which 8 agreed to participate in one or several of this study's sessions (See @table-participants). 

#figure(
  table(
    columns: (auto, 1fr, 0.5fr, 1fr ,auto),
    align: (left, left, left, left, left),
    
    [Code], [Background], [Experience], [Rehab Technology Experience],[Sessions],
  
    [*P1*], [MD, Neurologist, \ Founder Brain Stimulation AB], [25 years], [Distro + RehAtt XR], [Contextual Inquiry],
    
    [*P2*], [Product Manager at Brain Stimulation], [5], [Distro + RehAtt XR], [Contextual Interview],
  
    [*P3*], [Clinical OT, \ BS end-user], [11 yrs], [Distro + RehAtt XR], [Contextual Interview, \ Observation],
  
    [*P4*], [Clinical OT, \ BS end-user], [11 yrs], [Distro + RehAtt XR, Leisure games], [Contextual Interview, \ Co-Design Session],
  
    [*P5*], [Clinical OT,  \ BS end-user], [11 yrs], [Distro], [Contextual Interview, \ Co-Design Session],
  
    [*P6*], [Clinical OT, Researcher], [x], [Leisure Games], [ Pilot Study, \
    Co-Design Session],
  
    [*P7*], [OT, PhD], [x], [Leisure Games], [ Co-Design Session],
  
    [*P8*], [Physiotherapist], [x], [Wii Games], [ Co-Design Session],
  
  ),
  caption: [Participants Background.], 
) <table-participants>

== Qualitative Data Analysis
After all data was gathered, we performed a bottom-up approach through affinity diagramming which allowed the themes and concepts to emerge from within the data rather than from some pre-imposed theories and concepts (Myers, 2020). The affinity diagramming method was applied on this study's contextual inquiry and co-design sessions separately because they have two different agendas. The contextual inquiry was solely to get a contextual understanding of Brain Stimulation systems and what today's end-user therapists believe are the issues, which later informed the design decisions of our co-design sessions, while the co-design sessions were to determine more concretely what therapists from various fields actually desire in a computational system with shared human-machine agency.

The affinity diagramming was first applied on the entire contextual inquiry, both on the observation and all 5 interviews with the PM, MD Founder, and three end-user therapists of Brain Stimulation tools. The analysis was done through two main phases, (1) each interview was reviewed independently and systematically, (2) insights from all interviews along with the observation were clustered into subthemes which then created the following main themes: (1) Current system and technology limitations, concerns and pros, (2) Phases of therapy, and (3) ideal rehabilitation through technology.

#figure(
  image("../images/analysis2.png"),
  caption: [Phases in affinity diagramming for co-design sessions]
)<analysis>

The affinity diagramming on the co-design sessions was however done through three main phases. In the first phase, each co-design workshop was reviewed independently and systematically by the sections, namely: therapy phases, scenario 1, scenario 2, scenario 3, scenario 4, desired system, and future (see @analysis). In the second phase, insights from all participants were clustered to create subthemes by each section of the co-design session again (see Fig; check DiVA). In the last phase, insights from all scenarios (1-4) were clustered into bigger subthemes to find the nominating factors that therapists value, thus creating the final main themes: (1) Control, (2) The Paradox in Details, (3) Digitalized Rehabilitation Still Necessitates Human-Human Interaction, (4) Digitilized Rehabilitation is the future, and *(5) Desired System*. 

Finally, the design activity "desired system" was compared with one question in particular which was repeatedly asked during all scenarios (_"if you could have this scenario in only one of the 4 therapy phases, in which phase would it be the most valuable to have?"_) and then analyzed. The reason for comparing those was to determine if any contradictions would arise between the activity and the question (See @designsystem. 

//include figures to display our process (see hannah and joel thesis and others) 
//find out what to do between findings and prototype talk about how we did a MoSCoW on all these findings/themes in order to prioritize the focus of our prototype(s) *if we actually do prototype(s)*

#figure(
  image("../images/designsystem.png"),
  caption: [Example of "Design Your Own System"]
) <designsystem>

== Ethical Considerations
This study involves therapists and may involve non-interfering observation of usage of Brain Stimulation's digital therapy system during a rehabilitation session, which can raise ethical considerations regarding informed consent, privacy and data handling. All interviews, co-design sessions and observations were only recorded and conducted after the participants provided explicit consent. The resulting recordings, transcripts, and images were stored in secure university-sanctioned Microsoft services in accordance with their data protection guidelines. Additionally, the prototype developed will be clearly presented as an exploratory design artifact intended to probe and inform design space for future systems, rather than a clinically-validated or commercial product. 

#emph(text(red)[
Mention the prototype is not based off of Brain Stimulation's systems to align with company secrets or whatever bullshitt.
])

#emph(text(green)[giberrish])

// Ask pedro if we can just write stuff abouit "The interviews were through verbal consent recorded and transcribed using Teams and were later controlled and corrected for validity purposes. in ethical considerations alone

