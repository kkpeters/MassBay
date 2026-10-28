# Module 2: Pervasive Attack Surfaces 

- *Pervasive* is defined as "existing in or spreading through every part of something." For example, a *pervasive smell of a Thanksgiving dinner* can warmy welcome guests as they enter the kitchen. 
- Social engineering, physical security, and data crontrols are considered pervasive since they apply universally across IT security. 

# Social Engineering Attacks 

- **Social Engineering*** is a means of eliciting information or convincing a user to take action that weakens security. Social engineering is almost always performs through deception and manipulation of the user. Because social engineering occurs through the exploitation of a person, it is sometimes sadi to be accomplished using **human vectors** as the attack surface. 

## Examples of Human Manipulation 

- Begins with the threat actor selecting a human target, and then creating a believable scenario specific to the user.


### Table 2-1 Human Manipulation for Social Engineering 

| Principle | Description | Example |
| --- | --- | --- |
| Authority | Directed by someone impersonating authority figure or falsely citing their authority. | "I'm the CEO calling" |
| Intimidation | To frighten and coerce by threat | "If you don't reset my password, I will call your supervisor" |
| Consensus | Influence by what others do | "I called last week, and your colleague reset my password" |
| Scarcity | Something that is in short supply | "I can't waste my time here" |
| Urgency | Immediate action is needed | "My meeting with the board starts in 5 minutes" |
| Familiarity | Victim is well known and well received | "I remember reading a good evaluation on you" |
| Trust | Confidence | "You know who I am" |

- Note: Another technique is called prepending, which is influencing before the event occurs. "You need to reset my password immediately because my meeting with the board starts in 5 minutes"
- Some social engineering involves person-to-person contact. When it involved direct contact with the target, attackers use a variety of personal techniques to gain their trust:
    - **Provide a Reason**. By giving a rationalization and using the word *because*, it is much more likely for the target to provide the information. 
    - **Project Confidence**. A threat is unlikely to generate suspicion if they enter a restricted area but calmly walks through the building as if they know exactly here they are doing (without looking at signs, down hallways, or reading door labels) and even greets people they see with a friendly, "Hi, how are you doing?"
    - **Use Evasion and Diversion**. When challenged, a threat actor might evade a question by giving a vague or irrelevant answer. THey could also feign innocence or confusion, or just keep denying any allegations, until the target eventually believes their suspicions are wrong. Sometimes a threat actor can resort to anger and cause the target to drop the challenge. "Who are you to ask that? Connect me with your supervisor immediately!"
    - **Make them Laugh**. Humor is an excellent tool to pout people at ease and to develop a sense of trust. "I can't believe I left my badge in my office again! You know, some mistakes are too much fun to only make once!"

## Types of Social Engineering Attacks 

### Phishing

- Phishing is sending an email or displaying a web annoucement that falsely claims to be from a legitimate source in an attempt to trick the user into taking action. 
- In a typical phishing attack, users are asked to respond to an email or are directed to a website where they are requested to update personal information, such as passwords, credit card numbers, SSNs, bank account numbers, or other information. However, the email or website is actually an imposter and is set up to steal the entered information. 
- Several variations on phishing attacks are:
    - **Spear Phishing**. Whereas phishing usually sends generic email messages to millions of users, spear phishing targets specific users. The emails used in spear phishing are customized to the recipient, often including their names and detailed personal information, in order to make the message appear legitimate.
    - **Whaling**. Instead of going after little fish or average sers, whaling targets the big fish, namely, wealthy individuals or senior executitves within a business who typically would have larger sums of money in a bank account that an attacker could access. 
    - **Vishing**. Known as vishing (voice phishing), an attacker calls a target who, upon answering, hears a recorded message that pretends to be from the user's bank stating that a large charge is being made on their credit card or that their bank account has had an unusual activity. The target is instructed to call a specific phone nuber immediately... when the target calls, it is answered by automated instructions telling them to enter their credit card numbers, bank account number, SSN, or other information on the telephone's keypad- all of which is then captured by the threat actor. 
    - **Smishing**. Another avenue for spreading social engineering attacks uses the short message vervice (SMS) to send fraudulent text messages. Threat actors first send a text message to a user's cell phone that pretends to come from their bank saying that a large withdrawl from their account has occured and asks the user if this is legitimate. Along with the text message is a callback telephone number the customer is instructed to call immediately. That phone number plays a recording telling the customer to first enter their credit card number for verification. The attackers then simply capture the information that is entered. 

- One particular type of phising attack that is increasing in popularity is a **business email compromise (BEC)**. A BEC takes advantage of the common practice today by businesses and organizations of electronically making payments or transferring funds. Attackers take advantage of the size and comlexity of large enterprises to request funds from what appears to be a legitimate source, knowing that the target will often comply without investigating if the request is legitimate.

| BEC attack | Description |
| --- | --- |
| Bogus invoice | Pretending to be a legitimate supplier, an attacker sends a fake invoice for goods or services demanding immediate payment on an overdue account. |
| Executive fraud | Posing as a company executive, a threat actor sends an email to employees in the Finance Department telling them to immediately transfer funds for an unpublicized new company initiative but not to tell anyone about it. |
| Account compromise | A Finance Department employee's email account is compromised and then each vendor in the contact list is sent an email demanding immediate payment for a ficticious service. |

- BECs are not limited to businesses: Users can also be victims of these attacks demanding immediate payment for goods or services. For example, a threat actor can pose as a distant relative on a vacation overseas who had just had their wallet stolen, and immediately needs money wired to them.

### Impersonation 

- Social enginerring impersonation is masquerading as a real or ficticious character and then playing out the role of that person on a target. For example, an attacker could impersonate a help desk support technician who calles the target, pretends that there is a problem with the network, and asks them for their username and password to reset their account. Smetimes the goal of the impersonation is to obtain private information, called **pretexting**. 
- One type of impersonation is **brand impersonation**. As the name implies, a threat actor uses brand impersonation to pretendto be a highly recognizable and well-known brand of a product or service (such as a bank) in an attempt to build immediate recognition and trust. By posing as a recognizable brand that is familiar to the target, attackers can trick them into a dangerous action, such as clicking a link or opening an attachment in an email.

### Redirection 

- **Typo Squatting**. When a fake site takes advantage of a user mistyping the domain name of a website, which redirects them to a malicious site hosted by a threat actor. 
- Threat actors have also made domain names that are one bit different, which changes a single character in the domain name. 
- **Pharming**. An attempt to exploit how a URL such as www.cengage.com is converted into its corresponding Internet Protocoll address, 69.32.308.75. Malware may attempt to perform a redirection when the user enteres the URL in a web browser, a variation infects DNS to direct large numbers of users to the fake site. 

### Misinformation and Disinformation 

- **Misinformation**. False or inaccurate information, regardless of the intent to mislead.
- **Disinformation**. False or inaccurate misinformation that comes from a malicious intent. 
- A **hoax** is an example of cyber disinformation. Often contained in an email, a threat actor claiming to be IT, saying that a deadly virus is circulating and the user should erase specific files or change security configs, then forward the message to others. Problems may arise from these changes, prompting the user to contact the threat actor via a telephone number listed in the hoax email.

### Watering Hole Attack 

- Directed towards a smaller group of individuals who tend to visit a common website, such as that of a parts supplier to a manufacturer. A threat actor attempts to infect this website with malware that will make its way onto the individuals' computers.

### Data Reconnaissance 

- **Dumpster Diving**. Digging through trash receptables to find information thatcan be useful in an attack: calendars, organizational charts, phone directories, policy manuals. 
- **Google Dorking**. Electronic variation of dumpster diving, using google to do this is called **Google dorking**. 
- **Shoulder Surfng**. If a relatively small amount of data is needed, such as the access code for a door, a threat actor can simply watch an individual entering the security code on a keypad. Attackers often use hidden webcams and smartphone cameras to shoulder surf unsuspecting victims. 

# Physical Security Controls 

## Perimeter Defenses 

### Barriers 

- **Fencing** is usually a tall, permanent structure to keep out unauthorized personnel. Accomplished using signage and proper lighting so that the area can be monitored after dark. However, chain-link fencing offers limited security because it can be easily circumvented by climbing over it or cutting the links. Most modern perimeter security consists of a fence equipped with other deterrents.

#### Table 2-3: Fencing Deterrents 
| Technology | Description | Comments |
| --- | --- | --- | 
| Anticlimb paint | A nontoxic petroleum gel-based paint that is thickly applied and does not harden, making any coated surface difficult to climb. | Typically used on poles, downpipes, wall tops, and railings. |
| Anticlimb collar | Spiked collar that extends horizontally for up to 3 feet from the pole to prevent anyone from climbing it; serves as both a practical and visual deterrent. | Used for protecting equipment mounted on poles like cameras or in areas where climbing a pole can be an easy point of access over a security fence. 
| Roller barrier | Independently rotating large cups affixed to the top of a fence prevent the hands of intruders from gripping the top of a fence to climb over it. | Often found around public grounds and schools were a nonaggressive barrier is important. |
| Rotating spikes | Installed at the top of walls, gates, or fences; the tri-wing spike collars rotate around a central spindle. | Designed for high-security areas; can be painted to blend into fencing. |

- A **barricade** is designed to block the passage of traffic, used for directing large crowds and designed to keep out individuals. 
- A **bollard** is a short but sturdy vertical post that is used as a vehicular barricade to prevent a car from "ramming" into a secure area.

### Security Guards 

- Security guards who atrol and monitor restricted areas are an active security defense. Unlike passive devices, security gaurds can differentiate bewteen an intruder and someone looking for a lost pet.
- Using 2 gaurds is called **two-person integrity/control**.
- Responsible for monitoring **video surveillance** captured by cameras.
