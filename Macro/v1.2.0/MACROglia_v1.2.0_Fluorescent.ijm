// MACROglia: cell morphology analysis

// Copyright (c) 2024 Sandra Sánchez Sarasúa de la Bárcena
// "MACROglia" macro authorship: Sandra Sánchez Sarasúa de la Bárcena

// License: CC BY 4.0
// Creative Commons Attribution 4.0 International Public License
// The Creative Commons Attribution license allows re-distribution and
// re-use of a licensed work on the condition that the creator is
// appropriately credited.

// Repository: https://github.com/SandraSSB/MACROglia_cell-morphology-analysis.git
// Citation: "Sánchez-Sarasúa, S. (2025). MACROglia: cell morphology analysis (1.2.0). Zenodo. https://doi.org/10.5281/zenodo.14882323"



// * Previously, install FracLac plugin in ImageJ or FIJI *

// START
macro "MACROglia_fluorescent" {
newImage("Fake Image", "8-bit black", 100, 100, 1); // Create a fake image
run("Threshold..."); // Open the Threshold dialog
setAutoThreshold("Default dark"); // Set Default option in Threshold dialog
waitForUser("Select 'B&W' and untick the 'Dark Background' box (if it is ticked). Press OK");
run("Convert to Mask"); // Apply changes
selectWindow("Fake Image");
close(); // Close the fake image
close("Threshold"); // Close the Threshold dialog
getDimensions(width, height, channels, slices, frames);
		// If it is a multi channel image
		if (channels > 1) {
		run("Z Project..."); // Select the Z stacks that you want to analyze
		run("Split Channels");
		}
Dialog.create("Specific area?");
Dialog.addMessage("Would you like to analyze a specific area?");
Dialog.addChoice("Choice:", newArray("Yes", "No"), "No"); // Default is "No"
Dialog.show();
choice = Dialog.getChoice();
if (choice == "Yes") {
	waitForUser("Draw the area that you want to analyze and press OK");
	run("ROI Manager...");
	roiManager("Add"); // Add the drawn ROI to the ROI Manager
	waitForUser("Select the window of the channel you want to analyze with MACROglia and press OK");
	roiManager("Select", 0); // Select the ROI
	roiManager("Add");
	run("Duplicate...", "title=Area1");
	run("Colors...", "foreground=black background=black selection=yellow");
	setBackgroundColor(0); // Set the background color to black
	setOption("ScaleConversions", true); // Ensure ROI respects calibration
	run("Clear Outside"); // Clear everything outside the selected ROI
	roiManager("Delete"); // Reset ROI Manager
} else {
}
waitForUser("Press OK to start MACROglia"); // Start of MACROglia
close("\\Others"); // Close everything but the photo that will be analyze
close("ROI Manager");
run("8-bit"); // Transform in 8-bit image
run("Grays"); // Convert to grayscale
run("Brightness/Contrast...");
waitForUser("Adjust brightness and contrast (Press APPLY and then OK)");
run("Unsharp Mask...", "radius=1 mask=0.60"); // High-contrast version of the image
run("Despeckle"); // Remove noise generated by "Unsharp Mask" tool
close("B&C");
run("Duplicate...", "title=Photo1"); // Duplicate the image
run("Threshold..."); // Open the Threshold dialog
waitForUser("Adjust threshold (Press APPLY and then OK)");
close("Threshold");
Dialog.create("Background color");
Dialog.addMessage("What is the background color?");
Dialog.addChoice("Choice:", newArray("White", "Black"), "White"); // Default is "White"
Dialog.show();
choice = Dialog.getChoice();
if (choice == "Black") {
run("Despeckle"); // Remove noise generated by "Threshold" tool
run("Close-");
run("Remove Outliers...", "radius=2 threshold=50 which=Dark"); // Replace dark outlier pixels by the median pixels in the surrounding area
} else {
run("Despeckle"); // Remove noise generated by "Threshold" tool
run("Close-");
run("Remove Outliers...", "radius=2 threshold=50 which=Bright"); // Replace bright outlier pixels by the median pixels in the surrounding area
}
run("ROI Manager...");
waitForUser("Select cells and save ROIs");
roiManager("Select", newArray());
roiManager("Combine");
run("Outline"); // Convert binary cells to outlines
run("FracLac"); // Open "FracLac" plugin
}