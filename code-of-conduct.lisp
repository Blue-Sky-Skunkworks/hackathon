(in-package :hackathon)

(defun render-code-of-conduct (stream)
  (html
    (header-panel :mode "seamed"
                  (toolbar :class "conduct"
                           (:span :style "margin-left:0px;" :class "title" "Missoula Civic Hackathon Code of Conduct")
                           (icon-button :class "toolbar-icon" :style "margin-left:0px;" :icon "arrow-back" :onclick "page(\"/\");"))
                  (:div :style "padding:20px;" :class "layout vertical center"

                        (:div :style "max-width:700px;"
                              (:h1 "Missoula Civic Hackathon's Code of Conduct <a style='font-size:small;' href='https://github.com/Blue-Sky-Skunkworks/codeofconduct'>source</a>")

                              (:p "The Missoula Civic Hackathon community expects that Missoula Civic
            Hackathon network activities, events, and digital forums:")

                              (:ol
                               (:li "Are a safe and respectful environment for all participants.")
                               (:li "Are a place where people are free to fully express their identities.")
                               (:li "Presume the value of others. Everyone’s ideas, skills, and contributions have value.")
                               (:li "Don’t assume everyone has the same context, and encourage questions.")
                               (:li "Find a way for people to be productive with their skills (technical and not) and energy. Use language such as “yes/and”, not “no/but.”")
                               (:li "Encourage members and participants to listen as much as they speak.")
                               (:li "Strive to build tools that are open and free technology for public use. Activities that aim to foster public use, not private gain, are prioritized.")
                               (:li "Prioritize access for and input from those who are traditionally excluded from the civic process.")
                               (:li "Work to ensure that the community is well-represented in the planning, design, and implementation of civic tech. This includes encouraging participation from women, minorities, and traditionally marginalized groups.")
                               (:li "Actively involve community groups and those with subject matter expertise in the decision-making process.")
                               (:li "Ensure that the relationships and conversations between community members, the local government staff and community partners remain respectful, participatory, and productive.")
                               (:li "Provide an environment where people are free from discrimination or harassment."))

                              (:p "Missoula Civic Hackathon reserves the right to ask anyone in violation
of these policies not to participate in Missoula Civic Hackathon
network activities, events, and digital forums.")

                              (:h1 "Missoula Civic Hackathon's Anti-Harassment Policy")

                              (:p "This anti-harassment policy is based on <a
href=\"http://geekfeminism.wikia.com/wiki/Conference_anti-harassment/Policy\">the
example policy</a> from the Geek Feminism wiki, created by the Ada
Initiative and other volunteers.")

                              (:p "This policy is based on several other policies, including the Ohio
LinuxFest anti-harassment policy, written by Esther Filderman and Beth
Lynn Eicher, and the Con Anti-Harassment Project. Mary Gardiner,
Valerie Aurora, Sarah Smith, and Donna Benjamin generalized the
policies and added supporting material. Many members of LinuxChix,
Geek Feminism and other groups contributed to this work.")

                              (:p "* * *")

                              (:p "All Missoula Civic Hackathon network activities, events, and digital
forums and their staff, presenters, and participants are held to an
anti-harassment policy, included below.")

                              (:p "In addition to governing our own events by this policy, Missoula Civic
Hackathon will only lend our brand and fund groups that offer an
anti-harassment policy to their attendees. For information on how to
offer an anti-harassment policy to your group, <a
href=\"https://docs.google.com/a/codeforamerica.org/document/d/1Zg2FDt7awgfCmdcbzMwKHMb1A7KDOhs_z7ibCb3TLLQ/edit\">see
this guide</a>.")

                              (:p "Missoula Civic Hackathon is dedicated to providing a harassment-free
experience for everyone regardless of gender, gender identity and
expression, sexual orientation, disability, physical appearance, body
size, race, age, or religion. We do not tolerate harassment of staff,
presenters, and participants in any form. Sexual language and imagery
is not appropriate for any Missoula Civic Hackathon event or network
activity, including talks. Anyone in violation of these policies may
expelled from Missoula Civic Hackathon network activities, events, and
digital forums, at the discretion of the event organizer or forum
administrator.")

                              (:p "Harassment includes but is not limited to: offensive verbal or written
comments related to gender, gender identity and expression, sexual
orientation, disability, physical appearance, body size, race,
religion; sexual images in public spaces; deliberate intimidation;
stalking; following; harassing photography or recording; sustained
disruption of talks or other events; inappropriate physical contact;
unwelcome sexual attention; unwarranted exclusion; and patronizing
language or action.")

                              (:p "If a participant engages in harassing behavior, the organizers may
take any action they deem appropriate, including warning the offender
or expulsion from Missoula Civic Hackathon network activities, events,
and digital forums.")

                              (:p "If you are being harassed, notice that someone else is being harassed,
or have any other concerns, please contact a member of the event staff
or forum administrator immediately. You can contact them at email
will@blueskystewardship.org and phone number 406-830-5031. Event staff
or forum administrators will be happy to help participants contact
hotel/venue security or local law enforcement, provide escorts, or
otherwise assist those experiencing harassment to feel safe for the
duration of the event.")

                              (:p "If you cannot reach an event organizer or forum administrator and/or
it is an emergency, please call 911 and/or remove yourself from the
situation.")

                              (:p "You can also contact Missoula Civic Hackathon about harassment at
info@blueskystewardship.org and feel free to use the email template
below. Missoula Civic Hackathon staff acknowledge that we are not
always in a position to evaluate a given situation due to the number
of events and the fact that our team is not always present. However,
we are hopeful that by providing these guidelines we are establishing
a community that jointly adheres to these values and can provide an
environment that is welcoming to all.")

                              (:p "We value your attendance and hope that by communicating these
expectations widely we can all enjoy a harassment-free environment.")

                              (:h1 "Email Template for Anti-Harassment Reporting")
                              (:p "SUBJECT: Safe Space alert at the Missoula Civic Hackathon")
                              (:p "I am writing because of harassment at a Missoula Civic Hackathon
Communities event, (NAME, PLACE, DATE OF EVENT).")
                              (:p "You can reach me at (CONTACT INFO). Thank you."))))))

