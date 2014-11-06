english_folder = english
distrib_folder = distrib
english_moderncv_files = \
	$(english_folder)/moderncv.cls $(english_folder)/moderncvcollection.sty $(english_folder)/moderncvcolorblack.sty\
	$(english_folder)/moderncvcolorblue.sty $(english_folder)/moderncvcolorgreen.sty $(english_folder)/moderncvcolorgrey.sty\
	$(english_folder)/moderncvcolororange.sty $(english_folder)/moderncvcolorpurple.sty $(english_folder)/moderncvcolorred.sty\
	$(english_folder)/moderncvcompatibility.sty $(english_folder)/moderncvdebugtools.sty $(english_folder)/moderncviconsawesome.sty\
	$(english_folder)/moderncviconsletters.sty $(english_folder)/moderncviconsmarvosym.sty $(english_folder)/moderncvstylebanking.sty\
	$(english_folder)/moderncvstylecasual.sty $(english_folder)/moderncvstyleclassic.sty $(english_folder)/moderncvstyleempty.sty\
	$(english_folder)/moderncvstyleoldstyle.sty $(english_folder)/tweaklist.sty
english_temp_files = *.aux *.log *.out *.pdf

resume : Qingyu_Sui_Resume_en.pdf

Qingyu_Sui_Resume_en.pdf : $(english_moderncv_files) $(english_folder)/Qingyu_Sui_resume_en.tex
	xelatex $(english_folder)/Qingyu_Sui_resume_en.tex
	xelatex $(english_folder)/Qingyu_Sui_resume_en.tex
	-cp Qingyu_Sui_resume_en.pdf $(distrib_folder)/Qingyu_Sui_resume_en.pdf
	-robocopy . $(distrib_folder) Qingyu_Sui_resume_en.pdf

.PHONY : clean

clean :
	-rm -rf $(english_temp_files) $(distrib_folder)
	-del /F /Q $(english_temp_files) $(distrib_folder)