english_folder = english
chinese_folder = english
distrib_folder = distrib
english_moderncv_files = \
	$(english_folder)/moderncv.cls $(english_folder)/moderncvcollection.sty $(english_folder)/moderncvcolorblack.sty\
	$(english_folder)/moderncvcolorblue.sty $(english_folder)/moderncvcolorgreen.sty $(english_folder)/moderncvcolorgrey.sty\
	$(english_folder)/moderncvcolororange.sty $(english_folder)/moderncvcolorpurple.sty $(english_folder)/moderncvcolorred.sty\
	$(english_folder)/moderncvcompatibility.sty $(english_folder)/moderncvdebugtools.sty $(english_folder)/moderncviconsawesome.sty\
	$(english_folder)/moderncviconsletters.sty $(english_folder)/moderncviconsmarvosym.sty $(english_folder)/moderncvstylebanking.sty\
	$(english_folder)/moderncvstylecasual.sty $(english_folder)/moderncvstyleclassic.sty $(english_folder)/moderncvstyleempty.sty\
	$(english_folder)/moderncvstyleoldstyle.sty $(english_folder)/tweaklist.sty
english_temp_files = *.aux *.log *.out *.pdf *.gz
chinese_moderncv_files = \
	$(chinese_folder)/moderncv.cls $(chinese_folder)/moderncvcollection.sty $(chinese_folder)/moderncvcolorblack.sty\
	$(chinese_folder)/moderncvcolorblue.sty $(chinese_folder)/moderncvcolorgreen.sty $(chinese_folder)/moderncvcolorgrey.sty\
	$(chinese_folder)/moderncvcolororange.sty $(chinese_folder)/moderncvcolorpurple.sty $(chinese_folder)/moderncvcolorred.sty\
	$(chinese_folder)/moderncvcompatibility.sty $(chinese_folder)/moderncvdebugtools.sty $(chinese_folder)/moderncviconsawesome.sty\
	$(chinese_folder)/moderncviconsletters.sty $(chinese_folder)/moderncviconsmarvosym.sty $(chinese_folder)/moderncvstylebanking.sty\
	$(chinese_folder)/moderncvstylecasual.sty $(chinese_folder)/moderncvstyleclassic.sty $(chinese_folder)/moderncvstyleempty.sty\
	$(chinese_folder)/moderncvstyleoldstyle.sty $(chinese_folder)/tweaklist.sty
chinese_temp_files = *.aux *.log *.out *.pdf *.gz

resume : Qingyu_Sui_Resume_en.pdf Qingyu_Sui_Resume_cn.pdf

Qingyu_Sui_Resume_en.pdf : $(english_moderncv_files) $(english_folder)/Qingyu_Sui_resume_en.tex
	xelatex $(english_folder)/Qingyu_Sui_resume_en.tex
	xelatex $(english_folder)/Qingyu_Sui_resume_en.tex
	-cp Qingyu_Sui_resume_en.pdf $(distrib_folder)/Qingyu_Sui_resume_en.pdf
	-robocopy . $(distrib_folder) Qingyu_Sui_resume_en.pdf

Qingyu_Sui_Resume_cn.pdf : $(chinese_moderncv_files) $(chinese_folder)/Qingyu_Sui_resume_cn.tex
	xelatex $(chinese_folder)/Qingyu_Sui_resume_cn.tex
	xelatex $(chinese_folder)/Qingyu_Sui_resume_cn.tex
	-cp Qingyu_Sui_resume_cn.pdf $(distrib_folder)/Qingyu_Sui_resume_cn.pdf
	-robocopy . $(distrib_folder) Qingyu_Sui_resume_cn.pdf

.PHONY : clean

clean :
	-rm -rf $(english_temp_files) $(distrib_folder)
	-del /F /Q $(english_temp_files) $(distrib_folder)