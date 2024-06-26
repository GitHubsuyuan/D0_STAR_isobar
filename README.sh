This directory contains source code files for STAR Run-18 D0
analysis in Zr+Zr and Ru+Ru 200 GeV.

The contents include four directories for data analysis, embedding,
picoAnalysis and macros.

1) Data/ directory contains all the source code for real
data analysis.
   - directory is to create picoDst files from MuDst.
     It is called mTree in a ROOT tree format.
     The source code can be found in StRoot.
     The macro is StPicoDstarMixedMaker.cxx
     The script to submit jobs is submit.sh

2) Embedding/ directory contains all the source code for
embedding analysis.
   - The source code can be found in StRoot.
   - The macro is StMyAnalysis.C
   - The script to submit jobs is submit.sh.

3) picoAnalysis/ directory contains the source code for
D0 raw signal extraction with the following order.
root -l -q write_rawy.C
root -l -q plot_rawy_Fit.C

4) macros/ directory contains the source code for
calculating and plotting figures with the following order.
root -l -q get_yield.C
root -l -q plot_spectra.C
root -l -q doPtShift.C
root -l -q makePlot_fig2.C
cd RAA
root -l -q write_RAA.C
root -l .L tgraphmultierrors1.cc .L makePlot_RAA.C -q
root -l -q makePlot_fig12.C
cd ../RCP
root -l -q get_yield.C
root -l -q plot_spectra.C
root -l -q doPtShift.C
root -l -q makePlot_RCP.C
cd ..
root -l -q write_RAA.C
root -l .L tgraphmultierrors1.cc .L makePlot_fig11.C -q
root -l -q mT_fit.C
root -l -q makePlot_fig3.C
root -l -q plot_TvsMass.C
root -l -q BW.C
root -l -q TBW.C
root -l -q makePlot_fig2.C
root -l -q plotTvsBeta.C -l

