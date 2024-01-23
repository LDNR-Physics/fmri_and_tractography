# Functional MRI and Diffusion Tractography Data Acquisition Protocol and Analysis Pipelines

## 1. Introduction
We recommend: 
1. [An MRI acquisition protocol](./1_Acquisition_Protocol.md)
2. [fMRI paradigms for testing laterality of language, motor, sensory and visual activations](./2_fMRI_Paradigms.md)
3. [An fMRI data analysis pipeline](./3_fMRI_Analysis_Pipeline.md)
4. [A diffusion tractography data analysis pipeline](./4_Diffusion_Tractography_Analysis_Pipeline.md)

## 2. Requirements
The fMRI and diffusion data analysis pipelines make use of the following 
software packages:
1. [dcm2niix](https://github.com/rordenlab/dcm2niix) 
2. [FSL](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki) 
3. [MRtrix3](https://www.mrtrix.org/)
4. [SPM](https://www.fil.ion.ucl.ac.uk/spm/software/spm12/) 

The fMRI paradigms are presented using [PsychoPy](https://www.psychopy.org/).

## 3. Change Log
See [changelog](./CHANGELOG.md).

## 4. License
See [MIT license](./LICENSE).

## 5. Authors
Written by [Dr Stephen Wastling](mailto:stephen.wastling@nhs.net) and 
[Dr Laura Mancini](mailto:laura.mancini@nhs.net). 

## 6. Acknowledgements
With many thanks to the 
developers of 
[dcm2niix](https://github.com/rordenlab/dcm2niix),
[FSL](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki),
[MRtrix3](https://www.mrtrix.org/), 
[SPM](https://www.fil.ion.ucl.ac.uk/spm/software/spm12/) and 
[PsychoPy](https://www.psychopy.org/).

The bash [script](./scripts/mrtrix3_bash_pipeline) was based on a 
[template](https://betterdev.blog/minimal-safe-bash-script-template/) written 
by Maciej Radzikowski. The bash syntax was analysed and checked for bugs using 
[ShellCheck](https://www.shellcheck.net/) written by Vidar Holen. 