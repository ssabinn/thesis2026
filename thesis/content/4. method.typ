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


= Methodology
This chapter presents the adopted methodological approaches to examine how therapists reason about their sense of agency in relation to a human-AI system, and how this agency could be negotiated across the main phases of exergame-based rehabilitation. To do so, the study combined contextual inquiries with speculative co-design sessions in collaboration with clinical occupational therapists, clinical physiotherapists, and informants from Brain Stimulation, the company developing an XR exergame-based rehabilitation platform. Specifically, it describes: (1) Case of Study, (2) Research Design and Epistemology, (3) Data Collection Techniques, (4) Participants, (5) Data Analysis Method, and (6) Ethical Considerations.

== Case Study
To properly explore therapists sense of agency and agency distribution throughout the main phases of rehabilitation, we employed a case study approach as our research method @myers2013. The case study was conducted in collaboration with Brain Stimulation, a company that provides two technology-based services to therapists who work with stroke patients suffering from Visuospatial Neglect (VSN), an acquired disability that affects one side of their spatial attention, as well as with patients with neurological conditions or mental fatigue. The two services include: (1) RehAtt® DiSTRO, a digital screening tool used for cognitive assessment of patients using various standardized tests to assess cognitive function such as attention and visual neglect, and (2) RehAtt® XR, a digital personalized rehabilitation system, including a therapist monitoring and control tool and a tool with XR-based exergames, that provide more engaging and motivating rehabilitation of cognitive and motor functions through interactive and multisensory 3D exergames. Brain Stimulation was therefore selected as they offer an already integrated rehabilitation ecosystem from assessment to therapy within a clinical rehabilitative workflow making it highly relevant for this study. Additionally, their collaboration with therapists, our main target group in this study, together with the research interest in agency and its distribution in exergame-based rehabilitation, made it appropriate and information-rich case. 

The case study focused on understanding the different phases of rehabilitation in a XR exergame-based rehabilitation platform, examining the features, controls, and information design of the system which therapists (end-users) have access to. The primary users of Brain Stimulation products are Occupational Therapists (OTs) and Physiotherapists (PTs). Additionally, insights into the intended usage of the products by therapists versus how it is used in practice was explored. The case study also touched upon the use of emerging technology in rehabilitation as well as potential future integration of AI and Machine Learning. By capturing several perspectives across the products through clinical end-users and product developers, a more holistic understanding of the workflow across phases, tools, capabilities, and constraints were conceptualized. This helped us identify strengths and gaps which informed the design construction of the co-design sessions, ultimately affecting this study's findings and design implications for future research and design.

== Research Design and Epistemology
This study adopts a Participatory Research through Design (Participatory RtD) approach to investigate how agency is affected, and how it should be distributed between therapists and system across the different phases of rehabilitation for AI-supported exergame-based rehabilitation. Research through Design (RtD) refer to design activities that contribute to the generation of knowledge by making, iterating and reflecting to explore a design space @rtd. RtD positions itself as a mode of inquiry allowing exploratory and practice-based research. RtD was selected for the study because the agency and its distribution in the rehabilitation process in its entirety is an unexplored design space, with fuzzy borders in agency between humans and system which this study aims to explore. This enabled the exploration and probing of possible aspects affecting agency in rehabilitation settings beyond the case study of this research.

Participatory design strengthens RtD through involvement of therapists and researchers, allowing their knowledge of clinical workflows, decision-making needs, and domain expertise, enabling investigation of their boundaries in regards to agency. On the other hand, having Brain Stimulation informants as participants is to primarily give context of the technological space and realities of the clinical adoption through their products. Participatory design elevates therapists from just being a user to active co-designers who are capable to addressing the power imbalance with emergent technologies @Smith2025. This allowed the study to move from understanding current rehabilitation work process and practices alone, to collaboratively and critically explore future design directions. In practice, the study is not limited to collecting user opinions, but also as a research process in which the participant input informs the design implications. As such, the epistemology is of an interpretative nature as we will attempt to understand the necessary agency requirements across the main phases of rehabilitation (see @phases). This allows for deeper and more qualitative insights into how therapists could feel more supported in relation to an AI-supported system within exergame-based rehabilitation. 

Overall, this study applies the four core activities in the double diamond design process model to structure and organize the research workflow @Jun2024, as displayed in @method. In the "discover" activity, we explore therapists needs and uncover potential solutions via the contextual inquiry and speculative co-design sessions. Following that, we define the therapists needs and articulate clear statements on what affects therapists sense of agency and how it should be distributed between a human-AI system throughout the rehabilitation process in the "define" activity. We then evaluate the results and generate design implications to offer potential solutions to the existing gap defined in @introduction. Finally, we deliver the findings to researchers, product developers and designers.

#figure(
  image("../images/methods.png"),
  caption: [Research Design],
) <method>


== Data Collection Techniques
This study adopted several data collection techniques, namely, interviews, an observation, and speculative co-design sessions. This approach was crucial for this study to (1) understand how therapists reason about their agency in relation to AI-supported systems for exergame-based rehabilitation and how it should be configured between therapists across the four main phases of rehabilitation (See @phases), and (2) design implications to potentially direct future researchers and product designers on how therapists preference for shared agency could be implemented (See @designimplications).

=== Contextual Inquiry A - Interviews
This study's explorations started with a contextual inquiry through semi-structured interviews with the company’s Product Manager (PM) and MD/Founder to understand the products, the workflow, the underlying reasoning and logic behind the rehabilitation products. Semi-structured interviews were also conducted with three OTs who have used either one or both of Brain Stimulation's digital services (RehAtt® DiSTRO and RehAtt® XR) to understand their workflow, appreciations and pain points with the tools @myers2013. All five interviews were designed to last a maximum of 45-60 minutes long. 

Given the diversity in the respondents roles, the interview guides varied in focus areas to capture accurate and role-specific contextual information (See @interviews). The interview with the PM focused on tool functionality, current assessment tests, which data metrics are collected and how they are translated into exergame rehab, technical constraints, game control adaptability and future development plans. The interview for the MD/Founder was, however, more focused on clinical and research foundations of the two systems, the rationale for adopting XR technologies specifically, and key insights from early researches that shaped the current design of Brain Stimulation's tools. Lastly, the interview for the OTs using either one or both of Brain Stimulation's tools was more focused on their workflow, how the tools support their assessments and therapy work, existing pain points, and what they felt were missing from the tools. 

=== Contextual Inquiry B - Observation
One observation was also conducted with one of the three OTs from the contextual inquiry interviews during a rehabilitation session. The aim of the observation was to observe how a therapist actually use Brain Stimulation's digital rehabilitation system (RehAtt® XR) to conduct a rehabilitation session. The observation lasted for the full session (60 minutes). The OT was encouraged to perform the thinking aloud method while interacting with the digital tool during the session. This approach was employed to capture real-time reasoning, decision-making, and insights into how the tool supported or hindered the therapists ability to assess and provide personalized rehabilitation. To limit potential reinterpretation or distortion caused by recall limitations, the entirety of the observation was documented in text and audio. The observation further deepened the contextual understanding of the rehabilitation session and the product use in clinical settings @myers2013. 

// comment from pedro: i think you're also missing a short section on speculative design, because you use that term and needs definition. what is it? it relates to critical design, and it also relates to design futuring
=== Speculative Co-Design Sessions
We employed speculative co-design sessions within a participatory RtD approach, inviting participants to a design-futuring space @Smith2025. The sessions were structured around four situated and specific futures through which, desirable agency configurations and concerns in rehabilitation systems were explored (See @codesign). A total of six individual speculative co-design sessions were conducted with OTs, PTs, and researchers within the rehabilitation field (see @codesign), of which one was a pilot study that was first conducted to adjust and improve the activities, questions, and overall quality of the co-design session. All six co-design sessions were designed to last between 1.5 to 2 hours. 

==== Pilot Study
The pilot study was informed by case study, literature, and contextual inquiries with Brain Stimulation informants and their therapists (end-users) and was conducted with one participant (P6). For the pilot study, a persona was created to ground the session in a realistic clinical setting to provide a context, which the participant could refer to for the duration of the session (See Appendix @persona).

In the pilot study, the participant was presented with seven futuristic and provocative rehabilitation system scenarios (See Appendix @pilotstudyscenarios) to probe the therapists' agency boundaries with the system, and the requirements for fine-grained settings and exergame parameters in different phases of rehabilitation. The scenarios were selected to highlight four dimensions listed below, that were important to their sense of agency, surfacing from previous research and the contextual inquiry (@section:contextualinquiry). 

#figure(
  image("../images/phases.png"),
  caption: [Rehabilitation Process. (a) Brain Stimulation's Three Main Phases, (b) Four Phases in exergames-based rehabilitation system]
) <phases>
#linebreak()

The dimensions used for the scenarios are: 

*1. _Granularity_: *Because participants reported preference for simpler controls, with the ability to adjust or customize them when needed (see @dimension-granularity), granularity was included as a dimension to explore how fine-grained the settings, parameters, and information available to the therapists should be, and how they negotiate this agency with the system across different phases.

*2. _Interaction cost_:* Since time was reported as a major constraint in providing quality care by the participants, including interaction cost (see @dimension-interactioncost), i.e. time and effort required to perform any action, enabled exploration on how the perceived effort and time-consumption affects agency distribution, and how it should be distributed across the four rehabilitation phases. 

*3. _Materiality_:* While any meaningful investigation into the agency distribution should be medium-agnostic, including materiality as a dimension enabled exploration on whether and how the technological medium itself shapes the therapist's sense of agency as rehabilitation systems have been explored and implemented across a wide range of technologies @Cheok2015 @Santos2025 @Doumas2025. 

*4. _Temporality_:* Observation showed that the therapist pre-configured the session and consistently adjusted exergames parameters through real-time adjustments of settings and exergame parameters (see @section:phasesoftherapy). Temporality was, thus, included as dimension to explore how it was distributed with the system during rehabilitation process.

The scenarios were all situated through the four main phases of rehabilitation which were confirmed and defined as standard from relevant research and contextual inquiry (See @section:phasesoftherapy): (1) Assessment & Goal-Setting, (2) Session Planning, (3) Rehabilitation Session, and (4) Post-Session Evaluation. The participant was made aware of the four phases and the construction of them and had validated them before proceeding with the pilot study. During the pilot study, the participant was encouraged to reflect on the seven futuristic scenarios throughout the four phases of rehabilitation (See @phases). Similarly, fine-grained settings and exergame parameters were grouped by type and categorized by phases and then presented to the participant to validate (See Appendix @pilotcontrols).

Although, the purpose of the study was to initially understand how therapists' agency was affected by the availability of specific fine-grained settings and exergame parameters across different scenarios and across different phases (See Appendix @pilotcontrols and @phases). The pilot study along with the contextual inquiry quickly proved that specific fine-grained parameters and settings is not what affected therapists' sense of agency, rather it was how the dimensions affected their sense of agency and the configuration of agency shared between the therapists and the system. The elaboration from the participants indicated that this was related to how fine-grained settings and exergame parameters could always be added or removed depending on the type of game, patient and therapy required. Additionally, the scenarios presented in the pilot study (see Appendix @pilotstudyscenarios) were not comparable to each other and the questions used to probe them (e.g., "Would you be comfortable/uncomfortable using this in any particular phase? why?" and "What controls would you need in this scenario?" were too open and vague. This resulted in two difficulties, first the participant could not elaborately reflect due to the ambiguousness of the questionnaire, and second the results could not be isolated and attributed to any particular dimension or scenario.

These findings were informative for the re-design of this study's co-design session as it provided valuable insights into the potential challenges of this research study @vanteijlingen2001pilot, of which the following adjustments were made:

*Adjustment 1:* Shift the focus of the study from how therapists agency could be affected by the availability of specific fine-grained settings and exergame parameters, to how various dimensions affected their sense of agency and how the agency should be distributed between the therapist and the system across different phases.

*Adjustment 2:* Although patient relationship was mentioned as important during the contextual inquiry, and patient feedback was vital in how therapists conducted and continuously adjusted the therapy session during the observation, it was not considered as one of the dimensions in the pilot study. The studies, also, show patient subjective data is prioritized by therapists along with objective data when making clinical decisions @Molle2025 @Holdar2013. This was because the study initially aimed to understand how therapists sense of agency was affected by fine-grained controls and parameters which does not involve patients. To explore how subjective data compared against objective data in AI-supported exergame-based rehabilitation systems, the _Patient vs Data_ dimension was added. 

*Adjustment 3:* Elevate dimensions as the primary means to probe agency distribution by expanding the number of dimensions to seven (see @dimensionstable): (1) _Agency in reasoning_; who does clinical reasoning and judgement (2) _Agency in execution_; who enacts or executes the decisions, and exergame parameters, (3) _Granularity_; how fine-grained the settings, parameters, and information available to or provided by the therapists should be, (4) _Temporality_; pre-configuration or real-time adjustments of settings, (5) _Interaction Cost_; time and effort required to perform any action. (6) _Patient vs Data_; prioritization of patient experience or data availability, and (7) _Materiality_; how technology affects rehabilitation process.

*Adjustment 4:* Differentiate agency in reasoning from agency in execution because AI-supported rehabilitation creates a situation where both therapists and the system can both think and act @Ismail2021 @Zhao2020. Separating agency in two dimensions let us understand the boundaries in agency distribution i.e. clinical reasoning and operational execution. Given that we are exploring agency, they were selected as primary dimensions for the study (see @codesign).

*Adjustment 5:* _Agency in Reasoning_ and _Agency in Execution_ being the primary dimensions, the remaining dimensions served as a means to further probe and isolate findings. A scenario 2x2 matrix was created for the primary dimensions, ranging from full human agency to full system agency, and then scenarios were developed for each combination to explore shift across the spectrum and independently examine the dimensions (See @codesign). To further probe the agency distribution in each of the scenarios, questions were formulated for secondary dimensions. This allowed the study to shift from abstract thinking about scenarios based on randomized dimensions to being open to critical conversation about possible futures in a controlled manner.

#figure(
  table(
    columns: (auto, auto, auto),
    align: left,

    [Dimension], [Type of Investigation], [Reasoning for Inclusion],
    [Agency in Reasoning], [Primary], [Implied; To probe agency distribution of clinical reasoning],
    [Agency in Execution], [Primary], [Implied; To probe agency distribution on translating clinical reasoning into specific operational actions ],
    [Granularity], [Secondary], [Generated from Contextual Inquiry (See @dimension-granularity) ],
    [Temporality], [Secondary], [Generated from Contextual Inquiry (See @section:phasesoftherapy)],
    [Interaction Cost], [Secondary], [ Generated from Contextual Inquiry (See @dimension-interactioncost)],
    [Patient vs Data], [Secondary], [Generated from Contextual Inquiry, Observation, and Previous researches ],
    [Materiality], [Secondary], [Generated from previous researches],
    
  ),
  caption: [Dimensions used to probe agency distribution in co-design sessions]
) <dimensionstable>

==== Final Co-Design Session
The redesigned final co-design session aimed to understand the sense of agency in relation to the system, and how the agential cut should be drawn across the rehabilitation process through the generated dimensions. Similar to pilot study, the participants were also first presented with a persona (See @persona) that grounded the entire co-design session in clinical practice. Then, they were also introduced to the four main phases of rehabilitation (See @phases) and subsequently validated with the participants. These phases were set as standard for the entirety of the session to have a common language. The participants were, then, presented with four scenarios developed from the 2x2 scenario matrix which were based on the two primary dimensions _Agency in Reasoning_ and _Agency in Execution_. The scenarios were presented and probed one after the other starting with Scenario 1 followed by Scenario 2, Scenario 3, and finally Scenario 4 (See @codesign). The scenarios were created to reflect agency distribution for each individual combination of primary dimensions in scenario matrix (See @table-scenarios). Each scenario was then constructed to embody its assigned agency distribution. The scenarios presented during the co-design session are as follows: 

1. *Scenario 1 (S1 / Full Human Agency):* Therapists have full autonomy and can control every little detail in the rehabilitation process. They reason and act independently of the system
2. *Scenario 2 (S2 / Recommendation System):* The system performs clinical reasoning and provides recommendations. The therapists have control to accept, reject or adjust the recommendations. The therapists executes the reasoning independently.
3. *Scenario 3 (S3 / Prompt System):* Therapists reason independently and then prompt the system to execute the decisions. 
4. *Scenario 4 (S4 / Full System Agency / Autonomous System):* The system is fully AI and handles the entire rehabilitation process independently including processing data, reasoning and executing. Therapists are kept on the loop and are informed of the decisions and plans. Therapists, however, have the authority to override any system decision when needed. 
#linebreak()
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

#figure(
  image("../images/codesign.png"),
  caption: [Co-design Session. (a) Primary Dimension Matrix (b) Probe Dimensions (c) Scenario Matrix]
)<codesign>
#linebreak()

Appendix @scenarioimages displays each scenario in more detail. For each scenario that was presented, participants were asked about how it made them feel and how it could affect their role as therapists. The participants were then asked questions formulated from the probe dimensions one after the other (See Appendix @finalcodesignplan). The questions were designed to fit the scenarios while maintaining the dimensionality aspect of it, hence, every scenarios did not have the exact same questions. An example of this is "_Would the level of details of the recommendations you get in this scenario matter to you? E.g.: Increase the difficulty as it does not seem challenging for the patient vs Increase the speed to 20, distance by 1m and texture of shape to 30 as it does not seem challenging for the patient_" was asked for the Recommendation System (S2), while "_Would the level of detail in which you need to prompt matter to you? E.g.: Increase difficulty of the task vs adjust the color of shapes to brown to make it difficult to see and increase the distance of the target by 1m_" was asked for the Prompt System (S3).



Once all the scenarios were presented and probed, and participants were fully informed of all possible scenarios, the participants were asked to design their ideal rehabilitation system by distributing the scenarios across the four different phases (See @designsystem). In this activity "_Desired System_", the participants were allowed to place multiple scenarios in a phases as well as use multiple instances of the scenarios in multiple phases. This enables the understanding of how participants preferred to distribute different forms of agency configuration across the main phases. Lastly, the participants were asked to reflect on what they considered the future of rehabilitation systems, to speculate on preferred or expected future configurations of agency. 

#linebreak()
#figure(
  image("../images/designsystem.png"),
  caption: [Example of "Design Your Own System"]
) <designsystem>
#linebreak()

Conducting the co-design sessions in above described manner successfully informed this study's two aims, namely: (1) understand how therapists reason about their agency in relation to AI-supported systems for exergame-based rehabilitation and how it should be configured between therapists across the four main phases of rehabilitation (See @phases), and (2) design implications to potentially direct future researchers and product designers on how therapists preference for shared agency could be implemented (See @designimplications).

== Participants
The participants were deliberately selected through a purposive sampling method where only individuals who attained one or several of the following criteria's were invited: (1) Works or has worked as a clinical occupational therapist, (2) Works or has worked as a clinical physiotherapist, (3) PhD students, professors and/or researchers within occupational therapy, physiotherapy and/or rehabilitation field. These requirements were essential in both attaining a contextual inquiry and qualitative data from the co-design session @Ahmad2024. This method ensured that the collected data would be relevant to the aims of this study while providing in-depth insights which were crucial for conceptualization therapists preferences for agency and its distribution across the four phases of rehabilitation @phases. Several networks was used to recruit therapists and/or researchers fulfilling mentioned criteria. Those networks were direct users (OTs & PTs) of Brain Stimulation's services, researchers at Umeå University, and LinkedIn. The snowball sampling method was also used where recommendations for additional contacts with similar criteria was requested from all those who were contacted @myers2013. In total 40 individuals who fall within our criteria's were invited, of which 8 agreed to participate in one or several of this study's sessions (See @table-participants). 

#figure(
  table(
    columns: (auto, 1fr, 0.5fr, 1fr ,auto),
    align: (left, left, left, left, left),
    
    [Code], [Background], [Experience], [Rehab Technology Experience],[Sessions],
  
    [*P1*], [MD, Neurologist, \ Founder Brain Stimulation AB], [25 years], [Distro + RehAtt XR], [Contextual Inquiry],
    
    [*P2*], [Product Manager at Brain Stimulation], [5 yrs], [Distro + RehAtt XR], [Contextual Interview],
  
    [*P3*], [Clinical OT, \ BS end-user], [11 yrs], [Distro + RehAtt XR], [Contextual Interview, \ Observation],
  
    [*P4*], [Clinical OT, \ BS end-user], [25 yrs], [Distro + RehAtt XR, Leisure games], [Contextual Interview, \ Co-Design Session],
  
    [*P5*], [Clinical OT,  \ BS end-user], [11 yrs], [Distro], [Contextual Interview, \ Co-Design Session],
  
    [*P6*], [Clinical OT, Researcher], [10 years], [Leisure PC Games], [ Pilot Study, \
    Co-Design Session],
  
    [*P7*], [OT, PhD], [15 years], [Leisure Mobile/Tablet Games], [ Co-Design Session],
  
    [*P8*], [Physiotherapist], [5 years], [Wii Games,], [ Co-Design Session],
  
  ),
  caption: [Participants Background], 
) <table-participants>

== Qualitative Data Analysis
After all data was gathered, we performed a bottom-up approach through affinity diagramming which allowed the themes and concepts to emerge from within the data rather than from some pre-imposed theories and concepts @myers2013 @dmtbr2020. The affinity diagramming method was applied on this study's contextual inquiry and co-design sessions separately because they have two different agendas. The contextual inquiry was solely to get a contextual understanding of Brain Stimulation products, current exergame-based rehabilitation process, existing constraints and issues, which later informed the design decisions of our the pilot study and the co-design sessions. While, the co-design sessions were to determine more concretely what therapists from various fields reason about their agency in relation to AI-supported systems for exergame-based rehabilitation, and its configuration across the main phases of rehabilitation. The findings from the pilot study was not included in the final data analysis of the speculative co-design sessions as it was only used to adjust the design of final co-design session activity.

#linebreak()
#figure(
  image("../images/analysis_contextual.png"),
  caption: [Affinity diagramming process and final themes for contextual inquiry]
)<analysis-contextual>
#figure(
  image("../images/analysis.png"),
  caption: [Affinity diagramming process and final themes for co-design sessions]
)<analysis>
#linebreak()

The affinity diagramming was first applied on the entire contextual inquiry, both on the observation and all 5 interviews with the PM, MD/Founder, and three end-user therapists of Brain Stimulation products. The analysis was done through two main phases, (1) each interview was reviewed independently and systematically, (2) insights from all interviews along with the observation were clustered into sub-themes which then created the following main themes: (1) Phases of Rehabilitation, (2) Current System and Technology Benefits & Limitations, and (3) Ideal Digitalized Rehabilitation. However, the affinity diagramming on the co-design sessions was done through three main phases (see @analysis). In the first phase, each co-design workshop was reviewed independently and systematically by the sections (see Appendix @finalcodesignplan) to generate individual insights. In the second phase, insights from all participants were clustered to create sub-themes by each section of the co-design session again. In the last phase, insights from all scenarios (_S1 - S4_) were clustered into bigger sub-themes to find the key factors that therapists reason they value, thus creating the final main themes: (1) Desired Agency in Phases, (2) Conditional Control, (3) The Paradox in Details, (4) Human-Human Interaction, and (5) Digitalized Future Rehabilitation. A more detailed example of this process, illustrating how individual insights were developed into the final main theme is provided in Appendix @analysis-example, which shows the construction of the second theme, “conditional control". The same process was applied on all datasets when developing the main themes in both the contextual inquiry and the speculative co-design sessions to achieve a systematic and consistent analysis.


Finally, the design activity "_Desired System_" (See @designsystem) was compared with one question in particular which was repeatedly asked during all scenarios (_"if you could have this scenario in only one of the 4 rehabilitation phases, in which phase would it be the most valuable to have?"_) and then analyzed. The reason for comparing those was to determine if any contradictions would arise between the activity and the question. 

== Ethical Considerations
This study involves therapists and involves non-interfering observation of usage of Brain Stimulation's digital products (RehAtt® DiSTRO and RehAtt® XR) during a rehabilitation session, which can raise ethical considerations regarding informed consent, privacy and data handling. The observation was hence only conducted after explicit verbal consent from both the therapist and the patient and no other data, such as patient data or patient condition, beyond the therapist-patient interaction was collected. All interviews and co-design sessions were also only conducted and recorded after all participants had provided explicit verbal consent. The recordings were later transcribed, controlled and corrected using Teams for validity purposes. All recordings and transcripts were stored in secure university-sanctioned Microsoft account in accordance with their data protection guidelines. Additionally, because this study does not involve collection of sensitive data, participants were comfortable providing verbal consent instead of written consent. Naturally, participants also had the opportunity to withdraw their consent and participation in the study at any time. 
