# AI Scientific Lab — Git Workflow

> This document defines the Git workflow rules for the AI Scientific Lab.
> It ensures reproducibility, clarity, and scientific traceability of work.

---

# 1. Philosophy

Git is not only a version control system.

In this laboratory, Git is used to:

- track scientific ideas
- structure experiments
- preserve reproducibility
- document reasoning steps

Every commit should represent a meaningful step in understanding or implementation.

---

# 2. Branch Structure

## Main branches

### main

- stable version of the laboratory
- only validated scientific results
- no experimental code

### dev

- integration branch
- used to merge completed work from concepts

---

## Feature branches

Each piece of work MUST be isolated in a feature branch.

Naming convention:

```text
feature/<domain>/<concept>/<short-description>
```

Examples:

```text
feature/optimization/gradient-descent/learning-rate-study
feature/machine-learning/neural-networks/backprop-implementation
```

---

# 3. Concept-Based Development Rule

All development MUST be done inside a concept structure:

```text
domain/
  concept/
    research/
    experiments/
    notebooks/
    src/
    docs/
```

Git branches MUST reflect this structure.

---

# 4. Commit Philosophy

## Rule: one idea = one commit

Each commit should represent:

- one experiment
- one implementation step
- one conceptual clarification
- one refactoring action

---

## Commit message format

```text
[type] <scope>: <description>
```

### Types

- feat → new implementation
- exp → experiment
- fix → bug correction
- refactor → code restructuring
- doc → documentation
- research → conceptual insight

---

### Examples

```text
feat optimization/gradient-descent: implement basic gradient descent
exp optimization/gradient-descent: test learning rate stability
doc optimization/gradient-descent: explain convergence conditions
research optimization/gradient-descent: clarify role of convexity
```

---

# 5. Experiment Rules

Experiments must be:

- isolated
- reproducible
- non-destructive
- clearly named

Experiments SHOULD NOT pollute src/.

---

# 6. Code Stability Levels

## research/

- unstable ideas
- no Git strictness required

## experiments/

- partially stable
- commit often

## src/

- stable implementation
- clean and reusable code only

## docs/

- final stabilized knowledge

---

# 7. Merge Strategy

## From feature → dev

A merge is allowed only if:

- experiment is reproducible
- implementation is understandable
- concept structure is respected

---

## From dev → main

Only when:

- scientific result is stable
- code is clean
- documentation exists

---

# 8. Reproducibility Rule

Every meaningful result MUST be reproducible from:

- code in src/
- data in datasets/
- instructions in docs/

No hidden steps allowed.

---

# 9. AI Agent Rule

AI agents must:

- respect branch structure
- never commit directly to main
- follow naming conventions
- propose commits based on conceptual steps
- avoid merging without human validation

---

# 10. Final Principle

Git is not a storage system.

It is a **scientific trace of reasoning and experimentation**.
