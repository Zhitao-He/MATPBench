# data.json Dataset Description

This document provides a description of the `data.json` file.

**Purpose:**
The `data.json` file contains a collection of geometry problems, likely intended for use in datasets for research, training, or applications related to geometry problem understanding or solving.

**Data Structure:**
The file is a JSON object where each key is a unique identifier for a problem (e.g., "Q1"). The value associated with each key is an object containing details about the specific problem.

Each problem object has the following structure:
- `Image`: A string representing the filename of an associated image (e.g., "Highschool_1.png").
- `NL_statement`: A string containing the natural language statement or description of the geometry problem.
- `Type`: A string indicating the category or difficulty level of the problem.

**Dataset Statistics:**
The dataset comprises a total of **1056** geometry problems. These problems are categorized by their type/difficulty as follows:
- High School: 472 problems (44.7%)
- College: 468 problems (44.3%)
- Competition: 116 problems (11.0%)

**Geometry Coverage:**
The problems included in the dataset cover various branches of geometry, including:
- Plane Geometry
- 3D Geometry
- Analytic Geometry