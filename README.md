# Smart Warehouse & Inventory Management System (8086 Assembly)

> A low-level, hardware-isolated inventory management engine implemented entirely in x86 (8086) Assembly Language utilizing the MASM/EMU8086 execution architectures.

[![Assembly](https://img.shields.io/badge/Language-Assembly%20(x86%208086)-8A2BE2.svg?style=flat)](https://en.wikipedia.org/wiki/X86_assembly_language)
[![Architecture](https://img.shields.io/badge/CPU-Intel%208086-orange.svg?style=flat)]()
[![Environment](https://img.shields.io/badge/Emulator-emu8086%20%2F%20MASM-blue.svg?style=flat)]()

---

## 📌 1. About the Project

This project is a bare-metal, console-driven **Smart Warehouse & Inventory Management System** engineered inside a single segmented assembly environment (`smart_warehouse&_inventory_management_system.asm`). 

Instead of relying on modern high-level languages, garbage collectors, or pre-built database engines, this system constructs memory-mapped relational records, custom string manipulation algorithms, and 16-bit binary arithmetic directly over the 8086 CPU register architecture. It features a fully realized user session tier divided into role-based clearance paths, item catalog schemas, and automated mathematical billing pipelines.

### 🛠️ Hardware & Technical Specs
* **Target Architecture:** Intel 8086 Microprocessor
* **Development Environment:** EMU8086 / MASM (Microsoft Macro Assembler)
* **Memory Model:** `SMALL` (Separate 64KB Data and 64KB Code segment boundaries)
* **Stack Allocation:** `100h` bytes explicit hardware stack depth

---

## 💡 2. Problem & Value Proposition

### The Problem
Modern applications abstract away memory, processing clock cycles, and data representation entirely. This hides how software actually interacts with silicon. Building a database-driven system with distinct user clearances, variable string lookups, and compound logic becomes an extreme challenge when restricted to twenty 16-bit registers, segment offsets, and raw BIOS interrupts.

### The Solution
This repository presents an optimized system architecture to handle multi-tier data records using custom index calculations. By writing directly to memory segments, using base-index-displacement addressing arrays, and manipulating hardware flags, this project implements an enterprise-scoped business problem inside a constrained computing architecture.

### ⚙️ Feature Blueprint Implementation

* **Feature 1: Multi-Role Authentication:** Implements isolated runtime permissions for **Administrators** and **Staff** accounts. Handles real-time loop comparisons matching input email strings and encrypted-style text buffers using explicit pointer walks.
* **Feature 2: Categorized Item Matrix:** Allows administrators to register items directly into categorized indexes (Electronics, Grocery, Stationary, Household). Items feature variable-length string configurations stored alongside strict technical fields: quantity limits, buying/selling prices, and discount percentages.
* **Feature 3: Dual-Mode Search Engine:** Low-level item scanner utilizing structural matching loops. Users can query items by unique `Item ID` or full string arrays, returning quantitative availability metrics or trigger status alerts if out-of-stock.
* **Feature 4: Live Inventory Mutation:** Gives administrators permission paths to directly write updated data back to item records (modifying prices, category bits, or operational stock limits).
* **Feature 5: Billing Engine with Automated Bulk Discounting:** Evaluates sales counts, decrements internal stock counts dynamically, applies initial standard item discounts, and automatically runs a nested **5% compound discount calculation** if purchase amounts qualify as bulk quantities.
* **Feature 6: Asset Evaluation & Alert System:** Traverses active item structures to accumulate total institutional asset capital values, while simultaneously extracting and printing items triggering low-stock ($\le 5$ units) or depleted (0 units) flags.

---

## 📈 3. Computer Architecture & Memory Design

To make up for the lack of high-level collections, data structures are constructed using parallel structures and custom stride calculations inside the `.DATA` segment:

```text
Memory Array Structures:
[itemQty]   -> Array of 16-bit words (Stride: 2 bytes per item)
[itemPrice] -> Array of 16-bit words (Stride: 2 bytes per item)
[itemName]  -> Block of 31-byte text records (Base-displacement offset tracking)

```

### Low-Level Execution Techniques Used:

1. **Dynamic Addressing Matrix:** Utilizes base-index register pairs (`BX`, `SI`, `DI`) to dynamically compute offsets into arrays during runtime processing loops.
2. **Compound 32-Bit Arithmetic:** Since individual 8086 registers are bounded to 16 bits, total asset evaluation sums utilize dual-register pairs (`DX:AX`) to manage 32-bit mathematical expansion overloads, keeping data from overflowing.
3. **Hardware Interrupt Pipelines:** Interfaces directly with the system display and keyboard buffers using standard BIOS/DOS input-output interrupts (`INT 21h` with functions `01h`, `02h`, `09h`, and `0Ah`).

---

## 🚀 4. Getting Started & Running the Code

### Prerequisites

To run, edit, or compile this project, you need an 8086 microprocessor environment emulator:

* **EMU8086 Microprocessor Emulator** (Recommended for visual register debugging)
* **DOSBox** running MASM/TASM toolchains

### Local Execution Strategy (Using EMU8086)

1. Clone this repository to your local computer:
```bash
git clone https://github.com/SakibMahmud111/8086-smart-inventory-system.git

```


2. Open the file `smart_warehouse&_inventory_management_system.asm` inside **EMU8086**.
3. Click the **Compile & Emulate** option ($F5$).
4. In the virtual console pop-up screen, navigate the terminal using standard keyboard characters to run user registrations, search inventories, or perform sales logic.
5. Use the emulators' **"Registers"** and **"Memory"** window panels to actively watch variables mutate in real-time as your execution lines progress.

### 📁 Repository Structure

```filepath
├── smart_warehouse&_inventory_management_system.asm   # Full 8086 Assembly Source Code 
└── README.md                                          # Technical project documentation

```
