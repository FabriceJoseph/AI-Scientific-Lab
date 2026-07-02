# AI Scientific Lab — Operating Guide

> This document defines the operational methodology of the laboratory.
> It applies to both human reasoning and AI-assisted collaboration.

---

# 1. Purpose of the Laboratory

AI Scientific Lab is a personal scientific and engineering environment.

Its goal is to transform ideas into:

- understanding
- experiments
- implementations
- visualizations
- reusable knowledge

It is not a course repository.
It is not a set of exercises.

It is a **thinking and experimentation system**.

---

# 2. Core Mental Model — The Scientific Cycle

Work in this laboratory is not linear.

It is a cycle of transformation:

```text
QUESTION
   ↓
RESEARCH
   ↓
EXPERIMENTATION
   ↓
VISUALIZATION
   ↓
IMPLEMENTATION
   ↓
DOCUMENTATION
   ↓
→ NEW QUESTIONS
```

Each step may lead backward or forward.

Failure, confusion, or contradiction are expected and valuable.

---

# 3. Modes of the Laboratory (Critical Concept)

Every activity belongs to a **mode of thinking**.

## 3.1 research/ mode

> “I do not understand yet”

- questions
- intuition
- hypotheses
- confusion is normal

Goal: build understanding

---

## 3.2 experiments/ mode

> “Does this idea work?”

- quick prototypes
- tests
- validation attempts
- failures allowed

Goal: validate or reject ideas quickly

---

## 3.3 notebooks/ mode

> “I need to see it”

- visualization
- simulation
- interactive exploration
- geometric intuition

Goal: build deep understanding through observation

---

## 3.4 src/ mode

> “I stabilize knowledge into code”

- clean implementations
- reusable modules
- algorithms
- structured design

Goal: create durable scientific software

---

## 3.5 docs/ mode

> “I formalize knowledge”

- explanations
- theoretical synthesis
- stable understanding
- long-term memory of concepts

Goal: preserve knowledge beyond experiments

---

# 4. Concept Structure Rule (MANDATORY)

Every scientific concept in the laboratory MUST follow this structure:

```
Domain/
  Concept/
    README.md
    research/
    experiments/
    notebooks/
    src/
    docs/
```

---

## Example

```
optimization/
  gradient-descent/
    README.md
    research/
    experiments/
    notebooks/
    src/
    docs/

machine-learning/
  neural-networks/
    README.md
    research/
    experiments/
    notebooks/
    src/
    docs/
```

## Global vs Local Resources Rule

### Global folders:

- tools/
- datasets/

→ shared across all scientific domains

---

### Local (inside concepts):

Each concept may optionally include:

- datasets/
- experiment data/
- generated results

ONLY if they are specific to that concept.

## Purpose of this structure

This structure ensures:

- separation of scientific domains
- reproducible experimentation
- clear progression from intuition → implementation
- compatibility with AI agents
- scalability of the laboratory

Each concept is a self-contained scientific micro-lab.

---

# 5. Role of Each Folder

## 📚 research/

Exploratory thinking space.

Contains:

- questions
- ideas
- partial understanding
- theoretical confusion
- conceptual sketches

State: unstable knowledge

---

## 🧪 experiments/

Testing space.

Contains:

- quick implementations
- algorithm trials
- comparisons
- failed attempts

State: experimental knowledge

---

## 📓 notebooks/

Understanding through visualization.

Contains:

- Jupyter notebooks
- simulations
- plots
- interactive analysis

State: perceptual knowledge

---

## 💻 src/

Core implementation layer.

Contains:

- clean algorithms
- reusable components
- structured code

State: operational knowledge

---

## 📘 docs/

Knowledge stabilization layer.

Contains:

- conceptual explanations
- theoretical summaries
- consolidated understanding

State: durable knowledge

---

## 📄 papers/

Scientific reproduction layer.

Contains:

- research paper implementations
- mathematical analysis
- experiments aligned with publications

State: validated scientific knowledge

---

## 📦 datasets/

Experimental foundation layer.

Contains:

- raw data
- synthetic data
- simulation inputs
- ML datasets

State: physical grounding of experiments

---

## 🧰 tools/

Infrastructure layer.

Contains:

- utilities
- visualization helpers
- automation scripts
- experiment runners

State: productivity layer

---

# 6. Scientific Workflow Principle

A concept is not “done” when it is coded.

A concept is “done” when:

- it is understood
- it is tested
- it is visualized
- it is implemented
- it is documented

Any missing step = incomplete understanding

---

# 7. Role of AI Agents

AI agents are collaborators, not authors.

They may:

- explain concepts
- convert pseudo-code into implementations
- debug code
- suggest experiments
- improve clarity
- propose visualizations

They must NOT replace reasoning.

---

# 8. Human Responsibility (Non-delegable)

The human remains responsible for:

- defining the problem
- understanding the mathematics
- validating correctness
- choosing the direction
- interpreting results

AI supports thinking — it does not replace it.

---

# 9. Preferred Workflow with AI

Recommended interaction model:

1. Human defines idea or pseudo-code
2. AI proposes implementation
3. Human validates and adjusts
4. AI refines
5. Human integrates into laboratory

---

# 10. Scientific Visualization Principle

If a concept can be visualized:

→ it SHOULD be visualized

Prefer:

- geometric intuition
- interactive exploration
- dynamic simulation

over static explanation alone

---

# 11. Git Philosophy

- commits must be meaningful
- experiments must be isolated
- code must be traceable
- clarity > cleverness

Each commit should represent a conceptual step.

---

# 12. Decision Principle

When multiple solutions exist:

1. Scientific correctness
2. Clarity
3. Educational value
4. Reusability
5. Simplicity
6. Performance (only if necessary)

---

# 13. Long-Term Objective

AI Scientific Lab evolves toward:

- a scientific reasoning system
- a reproducible research environment
- a visualization framework for mathematics
- a personal engineering toolbox
- a knowledge memory system

---

# 14. Final Principle

This laboratory does not measure success by code production.

It measures success by:

> the depth of understanding achieved over time.

# 15. Development Environment

Before working on scientific topics, start the laboratory environment.

The environment guarantees:

- reproducibility;
- isolated dependencies;
- documented experiments;
- long-term maintainability.
