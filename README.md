# {{ Repository_Name }}

The aim of this repository is to provide details of the data sets and code used in the related research titled *{{ Research_Title }}*.

## Data Description

The following files are included in this repository:
* `{{ File_1_Name }}`: {{ File_1_Description }}
* `{{ File_2_Name }}`: {{ File_2_Description }}

## References

[1] {{ Reference_1_Details }}

## Developed by

* {{ Developer_1_Name }} ([{{ Developer_1_Email }}](mailto:{{ Developer_1_Email }})) - [GitHub: {{ Developer_1_GitHub }}](https://github.com/{{ Developer_1_GitHub }})  
* {{ Developer_2_Name }} ([{{ Developer_2_Email }}](mailto:{{ Developer_2_Email }})) - [GitHub: {{ Developer_2_GitHub }}](https://github.com/{{ Developer_2_GitHub }})  
* {{ Developer_3_Name }} ([{{ Developer_3_Email }}](mailto:{{ Developer_3_Email }})) - [GitHub: {{ Developer_3_GitHub }}](https://github.com/{{ Developer_3_GitHub }})

## Funding

This work was supported by the following projects:  
* {{ Funding_Project_1_Details }}  
* {{ Funding_Project_2_Details }}  
* {{ Funding_Project_3_Details }}

## How to cite the repo and the paper?

If you want to cite the related paper or this repository, please use the following bib entries:

* Article:
```
@article{{ {{ Article_Citation_Key }},
title = {{ {{ Article_Title }} }},
journal = {{ {{ Journal_Name }} }},
volume = {{ {{ Volume }} }},
pages = {{ {{ Pages }} }},
year = {{ {{ Year }} }},
author = {{ {{ Authors }} }}
}
```
* Repository:
```
@misc{{ {{ Repository_Citation_Key }},
author={{ {{ Repository_Author }} }},
year={{ {{ Repository_Year }} }},
title = {{ {{ Repository_Title }} }},
howpublished = {{\url{{ {{ Repository_URL }} }} }}
}
```

## Do you want to contribute?

Please, do it. Any feedback is welcome, so feel free to ask or comment anything you want via a Pull Request in this repo.  
If you need extra help, you can contact us.

## License

Licensed under the GNU General Public License, Version 3 (the "License");  
you may not use this file except in compliance with the License.  
You may obtain a copy of the License at:

   http://www.gnu.org/licenses/gpl-3.0.en.html

Unless required by applicable law or agreed to in writing, software  
distributed under the License is distributed on an "AS IS" BASIS,  
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the License governing permissions and  
limitations under the License.




The aim of this repository is to provide details of the data sets and code used in the related research titled *Interior-Point vs. Spatial Branching Approaches for Solving the AC Optimal Power Flow Problem*.

## Data Description

The following test systems are included in this repository:

* `case14`, `tuned14`: IEEE 14-bus test systems (original and tuned versions).  
* `case39`, `tuned39`: IEEE 39-bus test systems (original and tuned versions).  
* `case57`, `tuned57`: IEEE 57-bus test systems (original and tuned versions).  
* `case118`, `tuned118`: IEEE 118-bus test systems (original and tuned versions).

*Tuned variants incorporate modifications from Narimani et al. (2018) (14- and 57-bus) and Bukhsh et al. (2013) (39- and 118-bus) to enhance the presence of local minima.*

## Methods

Two main approaches were implemented and compared:

**Interior-Point (IP):**
- `IP-R-F`: Rectangular formulation with flat voltage initialization.  
- `IP-R-H`: Rectangular formulation with nearest historical operating point initialization.  
- `IP-P-F`: Polar formulation with flat voltage initialization.  
- `IP-P-H`: Polar formulation with most similar historical demand initialization.  

**Spatial Branching (SP):**
- `SP-O`: Original voltage bounds from operational limits.  
- `SP-ε`: Artificially tightened bounds around the optimal solution.  
- `SP-K`: Data-boosted bounds learned from *K* nearest historical operating points.  
  
## Developed by

* **Ignacio Repiso López** ([irepiso@uma.es](mailto:irepiso@uma.es)) - [GitHub: IgnacioRepiso](https://github.com/IgnacioRepiso)  
* **Salvador Pineda** ([spineda@uma.es](mailto:spineda@uma.es)) - [GitHub: salvapineda](https://salvapineda.github.io/)  
* **Juan Miguel Morales** ([jmmorales@uma.es](mailto:juan.mmorales@uma.es)) - [GitHub: juanmi82mg](https://juanmi82mg.github.io/)

## Funding

This work was supported in part by the Spanish Ministry of Science and Innovation (AEI/10.13039/501100011033) through project PID2023-148291NB-I00.  
I. Repiso, S. Pineda, and J. M. Morales are with the research group OASYS, University of Málaga, Málaga 29071, Spain.  
The work of I. Repiso was supported by the Spanish Ministry of Science and Innovation training program for PhDs with fellowship number PRE2023-002227.  
Finally, the authors thankfully acknowledge the computer resources, technical expertise, and assistance provided by the SCBI (Supercomputing and Bioinformatics) center of the University of Málaga.

## How to cite the repo and the paper?

If you want to cite the related paper or this repository, please use the following bib entries:

* Article:



