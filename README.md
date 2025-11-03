# IPvsSP4OPF

The aim of this repository is to provide details of the test systems used in the related research titled *Interior-Point vs. Spatial Branching Approaches for Solving the AC Optimal Power Flow Problem*.

## Data Description

The following test systems in MATPOWER format are included in this repository:

`case14.m`: IEEE 14-bus test system.  
`tuned14.m`: Modified version of the 14-bus system incorporating adjustments from Narimani et al. (2018) to induce additional local minima.  

`case39.m`: IEEE 39-bus test system.  
`tuned39.m`: Modified version of the 39-bus system incorporating adjustments from Bukhsh et al. (2013) to enhance non-convex behavior.  

`case57.m`: IEEE 57-bus test system.  
`tuned57.m`: Modified version of the 57-bus system following Narimani et al. (2018) to introduce challenging local minima.  

`case118.m`: IEEE 118-bus test system.  
`tuned118.m`: Modified version of the 118-bus system based on Bukhsh et al. (2013) to create multiple feasible and near-optimal operating points.

Additional demand profiles used in the experiments are also available in this repository. These profiles contain multiple randomized load scenarios for each test system and were used to generate the different OPF instances solved in the study.

## Developed by

I. Repiso (irepiso@uma.es) – [GitHub: IgnacioRepiso](https://github.com/IgnacioRepiso)  
S. Pineda (spineda@uma.es) – [GitHub: salvapineda](https://salvapineda.github.io/)  
J. M. Morales (juan.morales@uma.es) – [GitHub: juanmi82mg](https://juanmi82mg.github.io/)

## Funding

This work was supported by the Spanish Ministry of Science and Innovation (AEI/10.13039/501100011033) through project PID2023-148291NB-I00, and by the same institution through the PhD training program (fellowship PRE2023-002227) supporting I. Repiso.

## Citation

If this work contributes to your research, please consider citing:

* Article:
```
@article{irepisoipvssbcacpof,
  title   = {Interior-Point vs. Spatial Branching Approaches for Solving the AC Optimal Power Flow Problem},
  author  = {Repiso, Ignacio and Pineda, Salvador and Morales, Juan Miguel},
  journal = {Electric Power Systems Research},
  year    = {2025},
  publisher = {Elsevier},
  note    = {Presented at the 24th Power Systems Computation Conference (Limassol, Cyprus)}
}
```
* Repository:
```
@misc{IPvsSP4OPF,
  author       = {I. Repiso and S. Pineda and J. M. Morales},
  year         = {2025},
  title        = {IPvsSP4OPF: Interior-Point vs. Spatial Branching Approaches for Solving the AC Optimal Power Flow Problem},
  howpublished = {\url{https://github.com/groupoasys/IPvsSP4OPF}}
}
```

## Do you want to contribute?

Please, do it. Any feedback is welcome, so feel free to ask or comment anything you want via a Pull Request in this repo. If you need extra help, you can contact us.

## License

Licensed under the GNU General Public License, Version 3 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at: http://www.gnu.org/licenses/gpl-3.0.en.html

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the License governing permissions and limitations under the License.
