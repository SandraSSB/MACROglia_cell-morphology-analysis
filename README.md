
  ![Logo macroglia 2](https://github.com/SandraSSB/MACROglia_cell-morphology-analysis/assets/156697837/d0ef2fa1-c0d6-46b4-9585-562d55e68afc)


# MACROglia 🔬 (for ImageJ software)

## ✨Welcome to MACROglia!

This ImageJ macro was born to pre-process images before using FracLac plugin for morphological analysis.

You will be able to remove the background and extract the shape of each cell you select, leaving them ready for FracLac analysis.

There is no limit of cells! You can select as much as you want from one photo.

Despite its name, this macro works with any cell type that you want to analyse (microglia, astrocytes, neurons, whatever).

## ❓**What do I need to download?**

☝️ ➡️ Go to the [*latest release*](https://github.com/SandraSSB/MACROglia_cell-morphology-analysis/releases/tag/v1.2.0) and download the preferred version of the macro:

<p align="center">
🟢 'MACROglia_v1.2.0_BrightField_DAB.ijm' to process 3,3′-diaminobenzidine (DAB)-stained images 🟢
</p>

<p align="center">
🔵 'MACROglia_v1.2.0_Fluorescent.ijm' to process fluorescent-stained images 🔵
</p>

✌️ ➡️ Go to [*Docs*](Docs) folder and download the FracLac plugin from the link inside the '*FracLac plugin for ImageJ.md*' file

   - Copy and paste the '*Frac_Lac.jar*' file into the folder called '*plugins*' inside the directory where you installed ImageJ
       
👌 ➡️ Go to [*Docs*](Docs) folder, download the latest version of the user guide (currently: '*MACROglia_User guide_v1.2.0.pdf*') and
      you are **READY TO START** 🚀

<p align="center">
HAVE FUN 😊
</p>

## ✍️ Reference
When using MACROglia, please cite:
"Sánchez-Sarasúa, S. (2025). MACROglia: cell morphology analysis (1.2.0). Zenodo. [https://doi.org/10.5281/zenodo.14872354](https://doi.org/10.5281/zenodo.14872354)"

To cite ‘FracLac’ plugin use:
"Karperien, A., FracLac for ImageJ. [Introduction.htm](https://imagej.net/ij/plugins/fraclac/FLHelp/Introduction.htm). 1999-2013"

## 🔧 Release Notes
### [MACROglia v1.2.0](https://github.com/SandraSSB/MACROglia_cell-morphology-analysis/releases/tag/v1.2.0)
- Modified to be suitable for two different immunohistochemical stainings:

  1 ) 'MACROglia_v1.2.0_BrightField_DAB.ijm' to process 3,3′-diaminobenzidine (DAB)-stained images

  2 ) 'MACROglia_v1.2.0_Fluorescent.ijm' to process fluorescent-stained images

- Added multi-channel and Z-stacked images processing step
- Added ROI selection step (possibility to draw the ROI in one channel and transfer it to another channel)
- Added the check dialog window for background color to avoid over-erosion of the cells ramifications
- Added a shortcut (tool icon button) to the ImageJ toolbar
- Updated the user guide (MACROglia_User guide_v1.2.0)
- Added the reference to cite MACROglia

### [MACROglia v1.1.0](https://github.com/SandraSSB/MACROglia_cell-morphology-analysis/releases/tag/v1.1.0)
This is the original version of the macro, published in GitHub in January 2024
