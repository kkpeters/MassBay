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

### Sensors

- **Infared**. 
    - Invisible energy. 
    - Can be used for data transmission by the intensity of the IR light wave pulses. Increase in pulse intensity could mean 1.
    - Most TV remotes use IR.
    - **Infared Sensor**: an electronnic device that can detect IR in the surounding area.
        - Types: active and passive. Active: both emit and detect infared radiation usieng LEDs and a reciever. Proximity sensor. Passove does not rely on IR reflection. Can only detect IR radiation. Can be used for motion-based detection. 
- **Microwave**.
    - Monitors a large area.
    - **Microwave sensors** use high-frequency radio waves, functions similarly to radar. 
    - Project in 360 degrees, can detect changes in reflected radio waves.
- **Ultrasonic**.
    - Audible Frequency: 16-20,000 Hertz
    - Infrasound: below normal human range
    - Ultrasound: Alove normal human range (bats)
    - **Unstrasonic Sensors** can measure how far away a target is. Distance = 1/2 Time * 343 (speed of sound in m/s)
        - Not as susceptable to interference like smoke, gas, and other airborne particles. 
- **Pressure**.
    - A **Pressure Sensor** can be used in physical security to detect if a person has entered an area.
    - Can differentiate between what has entered and where they are going. 

### Security Buffers 

- A **buffer** serves as a protective barrier.

#### HIgh Security: Access Control Vestibule 

- Vestibule: small rooms.
- **Mantrap**: before electronic locks, access badges would be shown to a security officer, person moves into vestibule while ID is checked, and then the second door is unlocked. Otherwise the person is trapped in the room if the ID is incorrect. 
- **Access Control Vestibule**: used instead as a buffer between a nonsecure and a secure area. 

#### Medium Security: Reception area

- Receptionist can check credentials. 
- Anyone not approved should not be allowed to pass through the inner door to the next area. 
- Can be a risk, once visitors are in the reception area, they are already within the facility. 
- Receptionist responsibilities can help mitigate this risk. 

#### Low Security: Waiting Room 

- More friendly to the public 

### Locks 

- Used to restrict physical access. 
- Can be compromised if keys are lost, stolen, or duplicated. 
- Multiple users can also increase the risk of a key being compromised. 
- More secure option: electronic lock. Buttons must be pushed in a specific order. Can be programmed to only be valid at specific times. Can maintain a record of when the door was opened and by who. 
- Smartlocks: use a smartphont to send a code via Bluetooth to open the door. 

## Preventing Data Leakage 

### Faraday Cage 

- Computer systems, printers, and similar digital electronic devices emit electromagnetic fields, can result in interferenece (**electromagnetic interferenece (EMI)**). Unauthorized persons could detect and read these signals. 
- One means of prevention: **faraday cage**: magnetic enclosure that prevents entry or escape of an electromagnetic field. Often used for testing in electronic labs. Can be made protable for smaller devices. 

### Protected Distribution System 

- Cable Conduits: hollow tubes that carry cooper wire or fiber-optic cables. 
- **Protected Distribution Systems (PDS)** are systems of cable conduits to protect data being transmitted between two secure areas. 
- Standard created by the US Dept of Defense 
- Two Types:
    - **Hardened Carrier PDS**: special electrical metallic tubing, buried underground, encased in concrete, any maintenance hole covers must be locked down. 
    - **Alarmed Carrier PDS**: Deployed with specialized opitcal fibers in the conduit that can sense acoustic vibrations. Above the ceiling or below the floor, eliminates the need for welding or sealing connections. 

## Computer Hardware Security 

- **Cable locks** can be inserted into the security slot of a portable device and locked. 
- Laptops can be placed in a vault or safe. Can lock up important papers in a safe as well. 

# Data Controls 

## Data Classifications 

#### Table 2-4: Data Classifications 

| Data type | Description | Recommended handling |
|---|---|---|
| Confidential | Highest level of data sensitivity | Should only be made available to users with the highest level of preapproved authentication |
| Private | Restricted data with a medium level of confidentiality | For users who have a need-to-know basis of the contents |
| Sensitive | Data that could cause catastrophic harm to the company if disclosed, such as technical specifications for a new product | Restricted to employees who have a business need to access the data and have been approved |
| Critical | Data classified according to availability needs; if critical data are not available, the function and mission would be severely impacted | Critical data must be rigorously protected |
| Public | No risk of release | For all public consumption; data is assumed to be public if no other data label is attached |
| Restricted | Data that is not available to the public | Caution should be exercised before using this kind of information in emails |

## Types of Data 

- **Regulated**: that which external stipulations are placed on it regarding who can see and use the data and in what contexts. Example: Protected Health Information (PHI)
- **Intellectual Property (IP)**: invention or work that is the result of creativity. Owner of IP can apply for protection from others who attempt to duplicate it: patent, trademark, copyright, or trade secret. 
- **Trade Secret**: enterprise data is that undisclosed. Three elements:
    - info that has either actual or potential independent economic value by virtue of not being generally known 
    - it has value to others who cannot legitimately obtain the info 
    - it is subject to reasonable efforts to maintain its secrecy 
- **Enterprise Informaiton**:
    - **Legal Information**: general factual info about the la and legal process. Considered neutral.
    - **Financial Information**: data about the monetary transactions of the enterprise. 
- **Human and non-human-readable**: JSON and XML are considered non-human-readable.

## Data Breach Consequences 

- **Reputation Damage**
- **IP Theft**
- **Fines**

## Protecting Data 

### General Data Considerations 

- **Data in processing (data in use)**: data on which actions are being performed by devices, such as printing a report
- **Data in transit (data in motion)**: actions that transmit the data across a network, like an email sent across the Internet
- **Data at rest**: data that is stored on electronic media

- **Geolocation** is a term encompassing all techniques that identify the data's location. In terms of longitude and latitude. GeoIP is accessing the location of data via the IP address of the device on which the data resides. 
- **Data Sovereignty** is hte country specific requirements that apply to data. Generally, data is subject to the laws of the country in which it is collected or processed, and must remain within its borders. 

### Data Security Methods 

- **Data Minimization**: limiting the collection of personal information to that which is directly relevant and necessay to accomplish a specific task. 
- **Data Masking**: involves creating a copy of the data but using **obfuscation** (making unintelligible) any sensitive elements. Should replace all actual information that is not absolutely required. No intention to undo the proccess. Data masking is one means of performing **data sanitization**, which is the process of cleaning data to provide privacy protection. 
- **Tokenization**: obfuscates sensitive data into a random string of characters (a token). Then stored in a database called a token vault, can be retrieved when needed. Restoring the actual data is known as **pseudo-anonymization**.
- **Restrictions**: **permission restrictions** limit individuals and devices to only those who have a legitimate business need to access the data. **Geographic restrictions** limit access to data to specific locations. 
- **Segmentation**: involves first identifying the classification of data elements, then tagging them with that classification, and finally separating the most sensitive data from the rest. Most sensitive data is defined as the "protect surface" and additional security measures are applied. 
