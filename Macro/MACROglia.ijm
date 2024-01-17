run("8-bit");
run("Bandpass Filter...", "filter_large=40 filter_small=3 suppress=None tolerance=5 autoscale saturate");
run("Grays");
run("Brightness/Contrast...");
waitForUser("Adjust brightness and contrast")
run("Unsharp Mask...", "radius=1 mask=0.60");
run("Despeckle");
run("Duplicate...", "title=Photo1");
setAutoThreshold("Default");
run("Threshold...");
waitForUser("Adjust threshold");
run("Despeckle");
run("Close-");
run("Remove Outliers...", "radius=2 threshold=50 which=Bright");
run("ROI Manager...");
waitForUser("Select cells and save ROIs")
roiManager("Select", newArray());
roiManager("Combine");
run("Outline");
run("FracLac");