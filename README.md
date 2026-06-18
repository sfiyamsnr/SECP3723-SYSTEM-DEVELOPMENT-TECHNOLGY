# SECP3723-SYSTEM-DEVELOPMENT-TECHNOLOGY

# 🚀 System Development Technology (SECP3723-01) - Learning Portfolio & Project Reflection

Welcome to my portfolio for the **System Development Technology (SECP3723)** course.

---

## 📑 Overall Course Reflection

System Development Technology has been a pivotal experience in bridging the gap between abstract software requirements and robust, production-ready system deployments. Moving beyond simple programming assignments, this course challenged me to analyze software engineering through the lens of hardware-software interfacing, rigorous quality attributes, structural data modeling, and full lifecycle module integration.

Key personal and technical takeaways include:
* **The Integration Mindset:** Software is rarely a single monolithic script; real-world engineering requires designing decoupled, independent modules that seamlessly share states, validate inputs, and handle data mutations without corrupting the broader ecosystem.
* **Non-Functional Rigor:** Learning to implement software against strict non-functional constraints—such as a 99% availability metric, low latency tolerances, and automated database recovery backups—changed my coding habits from "making it work" to "making it resilient."
* **Requirements-Driven Development & Traceability:** Mapping system dependencies via a Requirement Traceability Matrix (linking Packages, Use Cases, and Sequence Diagrams to explicit database entities) taught me how to ensure that every backend schema cleanly supports a front-end UI flow.

---

## 🛠️ Individual Project Reflection: Course Registration System

* **Concepts Focused:** Relational data structures, object modeling, business rule validation, CRUD (Create, Read, Update, Delete) state mechanisms, and user access flows.
* **Implementation Details:** Architected a modular backend flow that handles course allocations, pre-requisite compliance checking, student academic profile mappings, and dynamic class capacity constraints.
* **Reflection:** Developing this system independently taught me the importance of strict data validation. Ensuring that a student cannot register for an over-capacity course, or bypass structural pre-requisite classes, underscored how business logic must be safely enforced directly at the data and application layers.

---

## 👥 Final Group Project Reflection: "Koperasi KADA Automotive System"

Our group developed a comprehensive enterprise web/desktop suite—the **Koperasi KADA Automotive System**—to automate financial tracking, vehicle loan distributions, and cooperative member operations for Applicants, Administrators, and Board Members (Ahli Lembaga Koperasi - ALK).

### 🔹 [System Requirements & Architecture Design]
* **Concepts Covered:** Hardware/Software Interfaces, Software Quality Attributes (Portability, Reliability, Usability, Availability), Data Dictionary Engineering, and Traceability Matrix Design.
* **Implementation Details:** Modeled complex software interfaces including multi-OS portability testing frameworks (Windows & macOS), 0.5% maximum monthly downtime tolerances, automated failure-recovery state mechanisms, and AES-grade data encryption perimeters.
* **Traceability Integration:** Designed system pipelines conforming strictly to structural Use Case mapping packages (P001 to P007). Verified that foundational user entities (`User`, `UserType`) cleanly map to downstream transaction records (`Saving`, `Loan`, `LoanRepayment`).
* **Reflection:** Translating stakeholder requirements into precise technical boundaries was an eye-opening engineering task. Designing safety loops around database crashes and writing strict validation criteria for the 99% target availability benchmark proved that professional software must be built defensively against failure from day one.

### 🔹 [My Module Contributions & Technical Implementation Deep-Dive]
As part of the system development, I took sole or shared ownership of the system's foundational entryways and transactional processing centers:

#### 1. Membership Module
* **Technical Implementation:** Architected the multi-step multi-tier enrollment wizard allowing applicants to supply core personal metrics, step through family metadata tables, establish banking vectors (`accountBankNumber`, `bankName`), and select initial financial deposit structures.
* **State Management & Administration Loops:** Implemented dynamic application tracing hooks allowing administrators to alter review validation states (toggling flags between "Completed" and "Not Completed"), and coded batch-processing hooks allowing ALK decision-makers to collectively execute mass actions (`Diterima` / `Ditolak`) via array-mapped checkboxes.
* **Auditability & Modification Records:** Integrated history tracking via the `historymodimem` entity structure, mapping modifications to explicit parameters (`newMemStatus INT(3)`, `memChangeDate DATE`, `memModifiedBy INT(5)`) to record accidental ALK adjustments defensively.

#### 2. Financial Tracking Module (Shared with Nawwarah Auni)
* **Data Dictionary & Schema Design:** Deployed the relational backend tracking models governing the cooperative's asset distributions across two structural areas:
  * **`Saving` Ledger System:** Designed to log discrete incoming cash streams via explicit tracking parameters (`savingID`, `savingAmount`, `savingDate`, `savingType`, `savingReceipt`, and `savingConfirm`).
  * **`SavingType` Structural Breakdowns:** Formulated precise financial calculation balances supporting six separate capital types: entry fees (`feeMasuk`), capital share structures (`modahSyer`), regular member deposits (`modalYuran`), personal savings collections (`wangDepositAnggota`), fund contributions (`sumbanganTabung`), and fixed savings yields (`simpananTetap`).
* **Admin Accounting & User Dashboards:** Constructed management screens for administrators to calculate monthly salary deductions and irregular transactions, while designing clear read-only data visualizations for applicants to track clear historical payment statements.

### 💡 Implementation Victory & Team Collaboration
Taking ownership of the core system entryway (Membership) and the critical transactional engine (Financial Tracking) was an immense responsibility. Coordinating with Nawwarah to synchronize ledger calculations, while building stable interfaces that allowed Farra's *Loan Application Module* and Dayang's *Approve Application Module* to pull live member statuses, showed me the true value of team-wide API clarity and structural data consistency. 

Seeing our separate modules—spanning the initial multi-step member signup, the admin validation boards, the ALK dynamic loan comparison metrics (`Banding`), and my financial tracking ledger—seamlessly interface into one unified dashboard was incredibly rewarding!
