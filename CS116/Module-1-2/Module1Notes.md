# Module 1: Introdution to Information Security

- The workforce that managed information security in an enterprise is usually divided into two broad catagories. Information security **managerial personnel** administer and manage plans, policies, and people, while information security technical personnel are concerned with designing, configuring, installing, and maintaining technical, security equipment. Within these two catagories are four generally recognized types of security positions:
    - **Chief information security officer (CISO)**. This person reports directly to the CIO. This person is responsible for assessing, managing, and implementing security. 
    - **Security manager**. The security manager reports to the CISO and supervises technicians, administrators, and security staff. Typically, a security manager wrks on tasks identified by the CISO and resolves issues identified by technicians. This position requires an understanding of configuration and operation but not necessarily technical mastery.
    - **Security administrator**. The security administer has both technical knowledge and managerial skills. A security administrator manages daily operations of security technology and may analyze and design security solutions within a specific entity as well as identify users' needs. 
    - **Security technician**. This is generally an entry-level position for a person who has the necessary technical skills. Technicians provide technical support to configure security hardware, implement security software, and diagnose and troubleshoot problems. 

## Understanding Security
- The **goal** of security is "the state of being free from danger". It is also defined as the "measures taken to ensure safety," which is the **process** of security. Since complete security can never be fully achieved, the focus of security is more often on the process instead of the goal. In this light, security can be defined as "the necessary steps to protect from harm."
- The relationship between security and convenience is **inversely proportional**, as security is increase, convenience is decreased. 

### Figure 1-1: Relationship of security to convenience.
![figure 1](imgs/figure1.png)

## Principles of Security 

### Confidentiality, Integrity, and Availability (CIA)
- **Confidentiality**. It is important that only approved individuals can access sensitive information. For example, the credit card number used to make an online purchase must be kept secure and not made available to other parties. *Confidentiality* ensures that only authorized parties can view the information. Providing confidentiality can involve several different security tools, ranging from software to encrypt the credit card number stored on the web server to door locks to prevent access to those servers. 
- **Integrity**. *Integrity* ensures that the information is correct and no authorized person or malicious software has altered the data. In the example of the online purchse, an attacker who could change the amount of a purchase from $10,000.00 to $1.00 would violate the integrity of the information. 
- **Availability**. Information has value if the authorized parties who are assured of its integrity can access the information. *Availability* ensures that data is accessible to only authorized users and not to unapproved individuals. In this example, the total umber of items ordered as the result of an online purchase must be available to an employee in a warehouse so that the correct items can be shipped to the customer but not made available to a competitor. 

### Authentication, Authorization, and Accounting (AAA)
- The second basic security principle, *authentication, authorization, and accounting (AAA)*, involves controlling access to information. 
- [Based on scenario given] Checking the delivery person's credentials to be sure that they are authentic and not fabricated is *authentication*. Computer users, likewise, must have their credentials authenticated to ensure that they are who they claim to be. This is often done by entering a password, fingerprint scan, or other type of approved credentials. 
- *Authorization*, granting permission to take an action, is the next step... once users have presented their identification and been authenticated, they can log in to a computer system. 
- [Gabe] signing into the tablet is akin to *accounting*. Accounting creates a record that is preserved of who accessed the enterprise network, what recourses they accessed, and when they disconnected from the network. 
    - Accounting data can be used not only to provide an audit trail but also for billing, determining trends, identifying resource usage, and future capacity planning. 
- AAA provides a framework for controlling access to computer resources. The basic steps in this access control process are summarized in Table 1-1.

### Table 1-1: Basic steps in controlling access. 
| Action | Description | Scenario Example | Computer Process |
| --- | --- | --- | --- | 
| Identification | Review of credentials | Delivery person shows employee badge | User enters username |
| Authentication | Validate credentials as genuine | Gabe reads badge to determine it is real | User provides password |
| Authorization | Permission granted for admittance | Gabe opens door to allow delivery person in | User allowed to access only specific data |
| Accounting | Recod of user actions | Gabe signs to confirm he picked up the package | Information recorded in log file |

- A security **control** is a safegaurd (sometimes called a **countermeasure**) that is employed within an enterprise to protect the CIA of information. A control attempts to limit the exposure of an asset to a danger. The four broad categories of controls are listed in Table 1-2.

### Table 1-2: Categories of controls 
| Control Category | Description | Example |
| --- | --- | --- |
| **Managerial** | Controls that use administrative methods | Acceptable use policy that specifies users should not visit mmalicious websites |
| **Operational** | Controls implemented and executed by people | Conducting workshops to help train users to identify and delete suspicious mesages |
| **Technical** | Controls incorporated as part of hardware, software, or firmware | Hardware that blocks malicious content from entering the network |
| **Physical** | Controls that implement security in a defined structure and location | Installing a fence to prevent an unauthorized person from entering a building |

- Specific types of controls are found within these four broad catagories: 
    - **Deterrent Controls**. A *deterrent control* attempts to discourage security violations before they occur.
    - **Preventive Controls**. A *preventive control* works to prevent the threat from coming in contact with the vulnerability.
    - **Detective Controls**. A *detective control*  identifies any threat that has reached the system. 
    - **Compensating Controls**. A *compensating control* provides an alternative to normal controls that for some reason cannot be used. 
    - **Corrective Controls**. A *corrective control* mitigates or lessens the damage caused by the incident. 
    - **Directive Controls**. A *directive control* ensures that  aparticular outcome is achieved. 
        - One type of directive control is **incentive**, which is the "carrot" instead of the "stick". 

### Table 1-3: Control types
| Control Type | Description | When it Occurs | Example |
| --- | --- | --- | --- |
| Deterrent Control | Discourage attack | Before attack | Signs indicating that the area is under video surveillance |
