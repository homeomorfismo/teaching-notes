#import "00Template.typ": *
#show: main_format

#date_header
#make_title

#show link: underline

= Course Information

+ *Term* - Fall 2025
+ *Course Number* - MTH 251Z
+ *CRN* - 14086
+ *Schedule* - MW 11:00 AM - 12:40 PM
+ *Location* - KMC 255
+ *Office hours* - *T* 15:00 - 16:00, *W* 13:00 - 14:00, and by appointment

== Drop and withdrawal deadlines

The last day to drop with 100% refund is
*#datetime(year: 2025, month: 10, day: 5).display("[weekday], [month repr:short] [day], [year]").*
The last day to drop without a *W* on academic record is 
*#datetime(year: 2025, month: 10, day: 12).display("[weekday], [month repr:short] [day], [year]").*
The last day to withdraw from a course is
*#datetime(year: 2025, month: 11, day: 16).display("[weekday], [month repr:short] [day], [year]").*

= Course Description

This course explores limits, continuity, derivatives, and their applications
for real-valued functions of a single variable.
These topics will be explored graphically, numerically, and symbolically in
real-life applications and interpreted in context.
This course emphasizes abstraction, problem-solving, modeling, reasoning,
communication, connections with other disciplines, and the appropriate use of
present-day technology.
This is the first course in a sequence of three: MTH~251Z, MTH~252Z, and
MTH~253Z, which must be taken in sequence.

== Course outcomes and learning objectives

At the end of the course, students will be able to:
+ Calculate limits graphically, numerically, and symbolically; describe the behavior of functions using limits and continuity; and recognize indeterminate forms.  
+ Apply the definition of the derivative and analyze average and instantaneous rates of change.
+ Interpret and apply the concepts of the first and second derivative to describe and illustrate function features including tangent line slope, locations of extrema and inflection points, and intervals of increase, decrease, and concavity.
+ Apply product, quotient, chain, and function-specific rules to differentiate combinations of power, polynomial, rational, exponential, logarithmic, trigonometric, and inverse trigonometric functions, as well as functions defined implicitly.
+ Apply derivatives to a variety of problems in mathematics and other disciplines, including related rates, optimization, and L’Hôpital’s rule.

== Prerequisites

Completion of *MTH~112Z* with a grade of *C-*, or above;
or passing at the necessary level on the mathematics placement assessment.

= Materials

Required materials are:
+ Textbook @CalculusRogawski2019
+ Edfinity student account. We will be using Edfinity in this course for weekly online homework.

== Suggested books and other resources

Calculus may be a challenging subject, sometimes more rigor or less rigor
may be needed to understand a topic---a lot of exercises are also required.
Some classical books are @CalculusSpivak2006 (very thorough),
@ProblemsDemidovich1969 (lots of exercises), @CalculusStewart2010 (very
popular).

== How to set up Edfinity

+ If you already have an Edfinity account from a previous course, please sign in to it. Otherwise, go to step 2.
+ Go to the #link("https://edfinity.com/users/sign_in")[Edfinity registration page].
+ You will be prompted to pay \$30 (or enter an access code _if_ you purchased one from the PSU bookstore) and enroll in our section.

= Assignments and Grading

Your course grade will be based on the following components:
+ Weekly online homework (Edfinity) - *25%*
+ Midterm on *#datetime(year: 2025, month: 10, day: 29).display("[weekday], [month repr:short] [day], [year]").* - *35%*
+ Final exam on *#datetime(year: 2025, month: 12, day: 10).display("[weekday], [month repr:short] [day], [year]").* 11:10 AM - 1:00 PM - *40%*

== Grading scale
+ *A*: 90.01% - 100%
+ *B*: 80.01% - 90%
+ *C*: 70.01% - 80%
+ *D*: 60.01% - 70%
+ *F*: 0% - 60%

== Attendance policy

Attendance is expected and *mandatory*.
It will be taken at the beginning of each class.
You are required to attend at least 75% of the classes, i.e.,
you *must* attend *15* out of the *20* classes.

== Late work policy

Extensions and attendance exceptions will be made only with documented and
communicated justification.
As the scope of the online homework is to provide practice and feedback, you are
encouraged to complete it as soon as possible, but if you need an extension,
feel free to contact me: you must ensure you have completed previously assigned
extensions before requesting a new one.

== Extra credit policy

Proactive engagement may be rewarded with extra credit. This may include, but
is not limited to, attending office hours, presenting solutions to problems in
class, and participating in class discussions.
Extra credit will not be given for attendance alone.
Extra credit will not be given for assignments that are late or incomplete.
Additional credit cannot constitute more than *10%* of an assignment's total points.

== Technology policy

=== AI policy

No use of generative AI is permitted.
Intellectual integrity forms the bedrock of academic communities and serves as
the cornerstone for impartial evaluation of your work.
All coursework completed and/or submitted for this course must represent your
original work and adhere to the University’s Academic Integrity Guidelines.
Unauthorized collaboration or the use of ChatGPT or any other generative AI
and large language model (LLM) tools in completing assignments or examinations
is considered a violation of these guidelines.

== Flexibility statement

The instructor reserves the right to modify course content and/or substitute
assignments and learning activities in response to institutional, weather, 
or class situations.

= Tentative Weekly Schedule

#show table.cell.where(y: 0): strong
#set table(
  stroke: (x, y) => if y == 0 { (bottom: 0.7pt + black) },
  align: left,
)

#table(
  columns: (1fr, 2fr, 6fr),
  table.header([Week], [Book section], [Topics]),
  [1], [1.1, 2.1],
  [Review, instantaneous and average velocity, intuition on limits],
  [2], [2.2, 2.3, 2.4],
  [Basic limit laws, continuity, types of discontinuities, substitution],
  [3], [2.5, 2.6, 2.7],
  [Algebraic reduction, Squeeze theorem, trigonometric limits, limits at infinity, asymptotes],
  [4], [2,8, 3.1],
  [Intermediate Value Theorem, Bisection method, derivative,
  tangent line, velocity, differentiability implies continuity],
  [5], [3.2, 3.3, 3.4],
  [Derivative as a function, Leibniz notation, basic differentiation rules
  (power, linearity, product, quotient)],
  [6], [3.5, 3.6, 3.7],
  [Second derivative, chain rule, trigonometric derivatives],
  [7], [3.8, 3.9, 3.10],
  [Implicit differentiation, applications to rate-of-change problems],
  [8], [4.1, 4.2],
  [Linear approximation, extreme values on a closed bounded interval],
  [9], [4.3, 4.4, 4.5],
  [Classification of critical points, qualitative analysis of graphs,
  L'Hôpital's rule],
  [10], [4.6, 4.7, 4.8],
  [Concavity, optimization, Newton's method, other topics, review],
)


#pagebreak()

= PSU Policies and Resources

== Academic integrity

Academic integrity is a vital part of the educational experience at PSU.
The
#link("https://www.pdx.edu/dos/psu-student-code-conduct#AcademicDishonesty")[
Student Code of Conduct
]
is the university’s policy on academic dishonesty.
A confirmed violation of that code in this course may result in failure of the
course.

== Incomplete grades policy statement

Students do not have a right to receive or demand an _Incomplete grade_.
The option of assigning an _Incomplete grade_ is at the *discretion of the
instructor* when these criteria are met:
- Required satisfactory course completion/participation
- Reasonable justification for the request
- Not sought as a substitute for a poor grade
- Presence of a written agreement (such as the
  #link("https://www.pdx.edu/registration/search/psu?keys=incomplete%20contract")[
  Incomplete Contract
  ])
- A plan in place to resolve Incomplete status
The Office of the Registrar’s website has the
#link("https://www.pdx.edu/registration/incomplete-grades")[full Incomplete Grades policy].

== DRC and accommodations

PSU values diversity, equity, and inclusion.
Our goal is to create a learning environment that is accessible, equitable,
inclusive, and welcoming.
We are committed to fostering mutual respect and full participation for all
students.
If any aspects of instruction or course design result in barriers to your
inclusion or learning, the Disability Resource Center (DRC) provides
accommodations in the learning environment.
If you have, or think you may have, a disability that may affect your work in
this class and feel you need accommodations, contact the DRC to schedule an
appointment and initiate a conversation about reasonable accommodations.
The DRC works with students who have physical, learning, cognitive, mental
health, sensory, chronic illness, and all other disabilities.

If you already have accommodations, *contact me* to make sure that I have
received your *Faculty Notification Email*, and to discuss your accommodations.
The DRC is located in *Smith Memorial Student Union, Suite 116*.
You can also contact the DRC at 503-725-4150,
#link("mailto:drc@pdx.edu,")[drc\@pdx.edu],
or visit the
#link("https://www.pdx.edu/disability-resource-center/")[DRC website].

== Basic needs statement

It can be challenging to do your best in class if you have trouble meeting
basic needs like safe shelter, sleep, and nutrition.
Resource centers across campus are here to provide assistance, referrals, and
support.
Please contact anyone on this list for assistance:
+ *#link("https://www.pdx.edu/basic-needs-hub/")[Basic Needs Hub]* --
  email to connect with the basic needs hub
  #link("mailto:basicneedshub@pdx.edu")[basicneedshub\@pdx.edu].
+ *#link("http://psufp.com/")[Portland State Food Pantry]* --
  email to connect with the PSU food pantry
  #link("mailto:pantry@pdx.edu")[pantry\@pdx.edu].
+ #link("https://www.pdx.edu/dean-student-life/psu-cares")[C.A.R.E. Program] --
  email to connect with the CARE Program
  #link("mailto:askdos@pdx.edu")[askdos\@pdx.edu], or call (503) 725-4422.
+ #link("https://www.pdx.edu/health-counseling/")[Student Health & Counseling] --
  email to connect with student health and counseling
  #link("mailto:askshac@pdx.edu")[askshac\@pdx.edu], or call (503) 725-2800.

== Student health and resources (SHAC) statement

If you are having a mental health emergency and need to speak with someone
immediately, come into SHAC at any time during SHAC
#link("https://www.pdx.edu/health-counseling/hours-location")[hours of operation].
After hours and weekends call the Multnomah County Crisis Line 503-988-4888.

== PSU CARES statement

Connects students with resources when they are experiencing distress or other
concerns that might impact their personal or academic success.

- #link("https://cm.maxient.com/reporting.php?PortlandStateUniv=")[Make a referral to PSU CARES]
- Call PSU CARES: 503-725-4422
- Email PSU CARES: #link("mailto:askdos@pdx.edu")[askdos\@pdx.edu]

== Understanding sexual misconduct statement

PSU desires to create a safe campus.
As part of that mission, PSU requires all students to take the
#link("https://www.pdx.edu/diversity/understanding-sexual-misconduct-and-resources-student-module")[Understanding Sexual Misconduct and Resources learning module].
If you or someone you know has been harassed or assaulted, you can find the
appropriate resources on PSU’s
#link("https://www.pdx.edu/sexual-assault/")[Sexual Misconduct Response website].

== Title IX and reporting

Students may come to me for assistance in matters not related to the
course material.
Please be aware that PSU’s policies require instructors to report any instance
of sexual harassment, sexual and relationship violence and/or other forms of
prohibited discrimination to university officials, who will keep the
information private.
If you would rather share information about these matters with a PSU staff
member who does not have these reporting responsibilities and can keep the
information confidential, please use these campus resources:
+ *Connect with Confidential Advocates* --
  503-894-7982 or 
  #link("https://psuwrc.youcanbook.me/")[schedule online]
  to talk with a Confidential Advocate
  (for matters regarding sexual harassment and sexual and relationship violence).
+ *#link("https://www.pdx.edu/health-counseling/")[Center for Student Health and Counseling]* --
  1880 SW 6th Avenue \#200; 503-725-2800

== Discrimination and bias incidents statement

#link("https://www.pdx.edu/diversity/equity-compliance")[The Office of Equity and Compliance (OEC)]
addresses complaints of
discrimination, discriminatory Harassment, and sexual harassment against
employees (faculty and staff).
If you or someone you know believes they have been discriminated against, you
may file a complaint.
Someone from the OEC will reach out to you to discuss how to best address your
complaint.
#link("https://www.pdx.edu/diversity/bias-review-team")[The Bias Review Team (BRT)]
gathers information on bias incidents that happen
on and around campus, and gives resources and support to individuals who
experience them.
You can report a bias incident you experienced or learned about.
A member of the BRT will contact you if you indicate you would like to be
contacted.

== Religious accommodation statement

If you would like to obtain religious accommodations, such as flexibility in
attending evening courses or an extension on assignments, please contact your
instructors.
If you need additional assistance, please contact the Office of the Dean of
Student Life (DOSL) by emailing #link("mailto:askdos@pdx.edu")[askdos\@pdx.edu].

== Cultural resource center statement

Cultural Resource Centers (CRCs) create a student-centered, inclusive
environment that enriches the university experience.
They honor diversity, explore social justice issues, celebrate cultural
traditions, and foster student identities, success, and leadership.
They provide opportunities for student leadership, employment, and
volunteering; student resources such as computer labs, event, lounge,
and study spaces; and extensive programming.
All are welcome!

+ #link("https://www.pdx.edu/cultural-resource-centers/multicultural-student-center")[Multicultural Student Center]
+ #link("https://www.pdx.edu/cultural-resource-centers/la-casa-latina-student-center")[La Casa Latina Student Center]
+ #link("https://www.pdx.edu/native-american-center/")[Native American Student and Community Center]
+ #link("https://www.pdx.edu/cultural-resource-centers/pan-african-commons")[Pan African Commons]
+ #link("https://www.pdx.edu/cultural-resource-centers/pacific-islander-asian-asian-american-student-center")[Pacific Islander, Asian, and Asian American Student Center]
+ #link("https://www.pdx.edu/cultural-resource-centers/middle-east-north-africa-south-asia-student-center")[Middle East, North Africa, South Asia Student Center]

#bibliography("ref.bib", style: "chicago-author-date")
