# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

TEXLIVE_MODULE_CONTENTS="
	collection-publishers.r72771
	aastex.r58057
	abnt.r55471
	abntex2.r49248
	abntexto.r70885
	acmart.r72113
	acmconf.r15878
	active-conf.r15878
	adfathesis.r26048
	afparticle.r35900
	afthesis.r15878
	aguplus.r17156
	aiaa.r15878
	amnestyreport.r69439
	anonymous-acm.r55121
	aomart.r72865
	apa.r54080
	apa6.r67848
	apa6e.r23350
	apa7.r63974
	arsclassica.r45656
	articleingud.r38741
	asaetr.r15878
	ascelike.r29129
	asmeconf.r71956
	asmejour.r71903
	aucklandthesis.r51323
	bangorcsthesis.r61770
	bangorexam.r65140
	bath-bst.r63398
	beamer-fuberlin.r63161
	beamer-verona.r39180
	beilstein.r56193
	bfh-ci.r70623
	bgteubner.r54080
	bjfuthesis.r59809
	bmstu.r65897
	bmstu-iu8.r72693
	br-lex.r44939
	brandeis-dissertation.r67935
	brandeis-problemset.r50991
	brandeis-thesis.r68092
	buctthesis.r67818
	cascadilla.r25144
	cesenaexam.r44960
	chem-journal.r15878
	chifoot.r57312
	chs-physics-report.r54512
	cidarticle.r68976
	cje.r68656
	cjs-rcs-article.r71936
	classicthesis.r48041
	cleanthesis.r51472
	cmpj.r58506
	confproc.r29349
	contract.r69759
	cquthesis.r55643
	dccpaper.r72097
	dithesis.r34295
	ebook.r29466
	ebsthesis.r15878
	edmaths.r72143
	ejpecp.r60950
	ekaia.r49594
	elbioimp.r21758
	els-cas-templates.r71189
	elsarticle.r70902
	elteiktdk.r71086
	elteikthesis.r71087
	emisa.r71883
	erdc.r15878
	estcpmm.r17335
	etsvthor.r48186
	facture-belge-simple-sans-tva.r67573
	fbithesis.r21340
	fcavtex.r38074
	fcltxdoc.r24500
	fei.r65352
	ftc-notebook.r50043
	gaceta.r15878
	gammas.r56403
	geradwp.r63134
	gfdl.r65415
	gradstudentresume.r38832
	grant.r56852
	gsemthesis.r56291
	gzt.r70532
	h2020proposal.r38428
	hagenberg-thesis.r65819
	har2nat.r54080
	hduthesis.r72869
	hecthese.r68584
	hep-paper.r67632
	heria.r72189
	hfutexam.r68829
	hfutthesis.r64025
	hithesis.r64005
	hitszbeamer.r54381
	hitszthesis.r61073
	hobete.r27036
	hu-berlin-bundle.r67128
	hustthesis.r42547
	iaria.r72670
	iaria-lite.r72669
	icsv.r15878
	ieeeconf.r59665
	ieeepes.r17359
	ieeetran.r59672
	ijmart.r30958
	ijsra.r44886
	imac.r17347
	imtekda.r17667
	inkpaper.r54080
	iodhbwm.r57773
	iscram.r45801
	jacow.r63060
	jmlr.r61957
	jnuexam.r71883
	jourcl.r65290
	jourrr.r68556
	jpsj.r66115
	jwjournal.r72788
	kdgdocs.r24498
	kdpcover.r65150
	kfupm-math-exam.r63977
	kluwer.r54074
	ksp-thesis.r39080
	ku-template.r45935
	langsci.r70025
	langsci-avm.r66016
	limecv.r61199
	lion-msc.r55415
	llncs.r72613
	llncsconf.r63136
	lni.r71883
	lps.r21322
	matc3.r29845
	matc3mem.r35773
	mcmthesis.r69538
	mentis.r15878
	mitthesis.r72749
	mlacls.r72271
	mluexercise.r56927
	mnras.r68878
	modeles-factures-belges-assocs.r67840
	msu-thesis.r71883
	mucproc.r43445
	mugsthesis.r64259
	muling.r66741
	musuos.r24857
	muthesis.r23861
	mynsfc.r60280
	nature.r21819
	navydocs.r41643
	nddiss.r45107
	ndsu-thesis.r46639
	ndsu-thesis-2022.r63881
	nih.r15878
	nihbiosketch.r54191
	njustthesis.r62451
	njuthesis.r71034
	njuvisual.r65261
	nostarch.r67683
	novel.r71113
	nrc.r29027
	nstc-proposal.r72795
	nwafuthesis.r66895
	nwejm.r70597
	nxuthesis.r71344
	onrannual.r17474
	opteng.r27331
	oststud.r67217
	oup-authoring-template.r64491
	philosophersimprint.r56954
	pittetd.r15878
	pkuthss.r70491
	powerdot-fuberlin.r52922
	powerdot-tuliplab.r47963
	pracjourn.r61719
	prociagssymp.r70888
	proposal.r40538
	prtec.r71883
	ptptex.r19440
	qrbill.r67724
	quantumarticle.r65242
	rebuttal.r72851
	regulatory.r72197
	resphilosophica.r50935
	resumecls.r54815
	revtex.r67271
	revtex4.r56589
	revtex4-1.r56590
	rub-kunstgeschichte.r72721
	rutitlepage.r62143
	ryersonsgsthesis.r50119
	ryethesis.r33945
	sageep.r15878
	sapthesis.r63810
	schule.r70846
	scientific-thesis-cover.r47923
	scripture.r69232
	scrjrnl.r27810
	sduthesis.r41401
	se2thesis.r72569
	seu-ml-assign.r62933
	seuthesis.r33042
	seuthesix.r40088
	sfee.r70718
	shortmathj.r67201
	shtthesis.r62441
	smflatex.r58910
	soton.r16215
	sphdthesis.r34374
	spie.r15878
	sr-vorl.r59333
	srdp-mathematik.r70807
	sshrc-insight.r72623
	stellenbosch.r68039
	stellenbosch-2.r68183
	suftesi.r68204
	sugconf.r58752
	tabriz-thesis.r51729
	technion-thesis-template.r49889
	texilikechaps.r28553
	texilikecover.r15878
	thesis-ekf.r70980
	thesis-gwu.r54287
	thesis-qom.r63524
	thesis-titlepage-fhac.r15878
	thuaslogos.r51347
	thubeamer.r61071
	thucoursework.r56435
	thuthesis.r71680
	tidyres.r67738
	tiet-question-paper.r71601
	timbreicmc.r49740
	tlc-article.r51431
	topletter.r48182
	toptesi.r56276
	tuda-ci.r71696
	tudscr.r64085
	tugboat.r72711
	tugboat-plain.r72675
	tui.r27253
	turabian.r36298
	uaclasses.r15878
	uafthesis.r57349
	uantwerpendocs.r72118
	ucalgmthesis.r66602
	ucbthesis.r51690
	ucdavisthesis.r40772
	ucph-revy.r72484
	ucsmonograph.r52698
	ucthesis.r15878
	udepcolor.r69701
	udes-genie-these.r68141
	udiss.r72466
	uestcthesis.r36371
	ufrgscca.r72586
	uhhassignment.r44026
	uiucredborder.r29974
	uiucthesis.r15878
	ukbill.r69362
	ulthese.r71697
	umbclegislation.r41348
	umich-thesis.r15878
	umthesis.r15878
	unam-thesis.r51207
	unamthesis.r43639
	unbtex.r72488
	unifith.r60698
	unigrazpub.r64797
	unitn-bimrep.r45581
	univie-ling.r72484
	unizgklasa.r51647
	unswcover.r66115
	uol-physics-report.r65761
	uothesis.r25355
	uowthesis.r19700
	uowthesistitlepage.r54512
	urcls.r49903
	uspatent.r27744
	ut-thesis.r71906
	utexasthesis.r48648
	uvaletter.r66712
	uwa-colours.r60443
	uwa-letterhead.r64491
	uwa-pcf.r64491
	uwa-pif.r64491
	uwthesis.r15878
	vancouver.r59192
	wsemclassic.r31532
	xduthesis.r63116
	xduts.r66661
	xmuthesis.r56614
	yathesis.r70511
	yazd-thesis.r61719
	yb-book.r70740
	york-thesis.r23348
"
TEXLIVE_MODULE_DOC_CONTENTS="
	aastex.doc.r58057
	abnt.doc.r55471
	abntex2.doc.r49248
	abntexto.doc.r70885
	acmart.doc.r72113
	acmconf.doc.r15878
	active-conf.doc.r15878
	adfathesis.doc.r26048
	afparticle.doc.r35900
	afthesis.doc.r15878
	aguplus.doc.r17156
	aiaa.doc.r15878
	amnestyreport.doc.r69439
	anonymous-acm.doc.r55121
	anufinalexam.doc.r26053
	aomart.doc.r72865
	apa.doc.r54080
	apa6.doc.r67848
	apa6e.doc.r23350
	apa7.doc.r63974
	arsclassica.doc.r45656
	articleingud.doc.r38741
	asaetr.doc.r15878
	ascelike.doc.r29129
	asmeconf.doc.r71956
	asmejour.doc.r71903
	aucklandthesis.doc.r51323
	bangorcsthesis.doc.r61770
	bangorexam.doc.r65140
	bath-bst.doc.r63398
	beamer-fuberlin.doc.r63161
	beamer-verona.doc.r39180
	beilstein.doc.r56193
	bfh-ci.doc.r70623
	bgteubner.doc.r54080
	bjfuthesis.doc.r59809
	bmstu.doc.r65897
	bmstu-iu8.doc.r72693
	br-lex.doc.r44939
	brandeis-dissertation.doc.r67935
	brandeis-problemset.doc.r50991
	brandeis-thesis.doc.r68092
	buctthesis.doc.r67818
	cascadilla.doc.r25144
	cesenaexam.doc.r44960
	chifoot.doc.r57312
	chs-physics-report.doc.r54512
	cidarticle.doc.r68976
	cje.doc.r68656
	cjs-rcs-article.doc.r71936
	classicthesis.doc.r48041
	cleanthesis.doc.r51472
	cmpj.doc.r58506
	confproc.doc.r29349
	contract.doc.r69759
	cquthesis.doc.r55643
	dccpaper.doc.r72097
	dithesis.doc.r34295
	ebook.doc.r29466
	ebsthesis.doc.r15878
	ecothesis.doc.r48007
	edmaths.doc.r72143
	ejpecp.doc.r60950
	ekaia.doc.r49594
	elbioimp.doc.r21758
	els-cas-templates.doc.r71189
	elsarticle.doc.r70902
	elteiktdk.doc.r71086
	elteikthesis.doc.r71087
	emisa.doc.r71883
	erdc.doc.r15878
	estcpmm.doc.r17335
	etsvthor.doc.r48186
	facture-belge-simple-sans-tva.doc.r67573
	fbithesis.doc.r21340
	fcavtex.doc.r38074
	fcltxdoc.doc.r24500
	fei.doc.r65352
	ftc-notebook.doc.r50043
	gaceta.doc.r15878
	gammas.doc.r56403
	geradwp.doc.r63134
	gfdl.doc.r65415
	gradstudentresume.doc.r38832
	grant.doc.r56852
	gsemthesis.doc.r56291
	gzt.doc.r70532
	h2020proposal.doc.r38428
	hagenberg-thesis.doc.r65819
	har2nat.doc.r54080
	hduthesis.doc.r72869
	hecthese.doc.r68584
	hep-paper.doc.r67632
	heria.doc.r72189
	hfutexam.doc.r68829
	hfutthesis.doc.r64025
	hithesis.doc.r64005
	hitszbeamer.doc.r54381
	hitszthesis.doc.r61073
	hobete.doc.r27036
	hu-berlin-bundle.doc.r67128
	hustthesis.doc.r42547
	iaria.doc.r72670
	iaria-lite.doc.r72669
	icsv.doc.r15878
	ieeeconf.doc.r59665
	ieeepes.doc.r17359
	ieeetran.doc.r59672
	ijmart.doc.r30958
	ijsra.doc.r44886
	imac.doc.r17347
	imtekda.doc.r17667
	inkpaper.doc.r54080
	iodhbwm.doc.r57773
	iscram.doc.r45801
	jacow.doc.r63060
	jmlr.doc.r61957
	jnuexam.doc.r71883
	jourcl.doc.r65290
	jourrr.doc.r68556
	jpsj.doc.r66115
	jwjournal.doc.r72788
	kdgdocs.doc.r24498
	kdpcover.doc.r65150
	kfupm-math-exam.doc.r63977
	kluwer.doc.r54074
	ksp-thesis.doc.r39080
	ku-template.doc.r45935
	langsci.doc.r70025
	langsci-avm.doc.r66016
	limecv.doc.r61199
	lion-msc.doc.r55415
	llncs.doc.r72613
	llncsconf.doc.r63136
	lni.doc.r71883
	lps.doc.r21322
	matc3.doc.r29845
	matc3mem.doc.r35773
	mcmthesis.doc.r69538
	mentis.doc.r15878
	mitthesis.doc.r72749
	mlacls.doc.r72271
	mluexercise.doc.r56927
	mnras.doc.r68878
	modeles-factures-belges-assocs.doc.r67840
	msu-thesis.doc.r71883
	mucproc.doc.r43445
	mugsthesis.doc.r64259
	muling.doc.r66741
	musuos.doc.r24857
	muthesis.doc.r23861
	mynsfc.doc.r60280
	nature.doc.r21819
	navydocs.doc.r41643
	nddiss.doc.r45107
	ndsu-thesis.doc.r46639
	ndsu-thesis-2022.doc.r63881
	nih.doc.r15878
	nihbiosketch.doc.r54191
	njustthesis.doc.r62451
	njuthesis.doc.r71034
	njuvisual.doc.r65261
	nostarch.doc.r67683
	novel.doc.r71113
	nrc.doc.r29027
	nstc-proposal.doc.r72795
	nwafuthesis.doc.r66895
	nwejm.doc.r70597
	nxuthesis.doc.r71344
	onrannual.doc.r17474
	opteng.doc.r27331
	oststud.doc.r67217
	oup-authoring-template.doc.r64491
	philosophersimprint.doc.r56954
	pittetd.doc.r15878
	pkuthss.doc.r70491
	powerdot-fuberlin.doc.r52922
	powerdot-tuliplab.doc.r47963
	pracjourn.doc.r61719
	prociagssymp.doc.r70888
	proposal.doc.r40538
	prtec.doc.r71883
	ptptex.doc.r19440
	qrbill.doc.r67724
	quantumarticle.doc.r65242
	rebuttal.doc.r72851
	regulatory.doc.r72197
	resphilosophica.doc.r50935
	resumecls.doc.r54815
	revtex.doc.r67271
	revtex4.doc.r56589
	revtex4-1.doc.r56590
	rub-kunstgeschichte.doc.r72721
	rutitlepage.doc.r62143
	ryersonsgsthesis.doc.r50119
	ryethesis.doc.r33945
	sageep.doc.r15878
	sapthesis.doc.r63810
	schule.doc.r70846
	scientific-thesis-cover.doc.r47923
	scripture.doc.r69232
	scrjrnl.doc.r27810
	sduthesis.doc.r41401
	se2thesis.doc.r72569
	seu-ml-assign.doc.r62933
	seuthesis.doc.r33042
	seuthesix.doc.r40088
	sfee.doc.r70718
	shortmathj.doc.r67201
	shtthesis.doc.r62441
	smflatex.doc.r58910
	soton.doc.r16215
	sphdthesis.doc.r34374
	spie.doc.r15878
	sr-vorl.doc.r59333
	srdp-mathematik.doc.r70807
	sshrc-insight.doc.r72623
	stellenbosch.doc.r68039
	stellenbosch-2.doc.r68183
	suftesi.doc.r68204
	sugconf.doc.r58752
	tabriz-thesis.doc.r51729
	technion-thesis-template.doc.r49889
	thesis-ekf.doc.r70980
	thesis-gwu.doc.r54287
	thesis-qom.doc.r63524
	thesis-titlepage-fhac.doc.r15878
	thuaslogos.doc.r51347
	thubeamer.doc.r61071
	thucoursework.doc.r56435
	thuthesis.doc.r71680
	tidyres.doc.r67738
	tiet-question-paper.doc.r71601
	timbreicmc.doc.r49740
	tlc-article.doc.r51431
	topletter.doc.r48182
	toptesi.doc.r56276
	tuda-ci.doc.r71696
	tudscr.doc.r64085
	tugboat.doc.r72711
	tugboat-plain.doc.r72675
	tui.doc.r27253
	turabian.doc.r36298
	uaclasses.doc.r15878
	uafthesis.doc.r57349
	uantwerpendocs.doc.r72118
	ucalgmthesis.doc.r66602
	ucbthesis.doc.r51690
	ucdavisthesis.doc.r40772
	ucph-revy.doc.r72484
	ucsmonograph.doc.r52698
	ucthesis.doc.r15878
	udepcolor.doc.r69701
	udes-genie-these.doc.r68141
	udiss.doc.r72466
	uestcthesis.doc.r36371
	ufrgscca.doc.r72586
	uhhassignment.doc.r44026
	uiucredborder.doc.r29974
	uiucthesis.doc.r15878
	ukbill.doc.r69362
	ulthese.doc.r71697
	umbclegislation.doc.r41348
	umich-thesis.doc.r15878
	umthesis.doc.r15878
	unam-thesis.doc.r51207
	unamth-template.doc.r68681
	unamthesis.doc.r43639
	unbtex.doc.r72488
	unifith.doc.r60698
	unigrazpub.doc.r64797
	unitn-bimrep.doc.r45581
	univie-ling.doc.r72484
	unizgklasa.doc.r51647
	unswcover.doc.r66115
	uol-physics-report.doc.r65761
	uothesis.doc.r25355
	uowthesis.doc.r19700
	uowthesistitlepage.doc.r54512
	urcls.doc.r49903
	uspatent.doc.r27744
	ut-thesis.doc.r71906
	utexasthesis.doc.r48648
	uvaletter.doc.r66712
	uwa-colours.doc.r60443
	uwa-letterhead.doc.r64491
	uwa-pcf.doc.r64491
	uwa-pif.doc.r64491
	uwthesis.doc.r15878
	vancouver.doc.r59192
	wsemclassic.doc.r31532
	xduthesis.doc.r63116
	xduts.doc.r66661
	xmuthesis.doc.r56614
	yathesis.doc.r70511
	yazd-thesis.doc.r61719
	yb-book.doc.r70740
	york-thesis.doc.r23348
"
TEXLIVE_MODULE_SRC_CONTENTS="
	acmart.source.r72113
	acmconf.source.r15878
	active-conf.source.r15878
	adfathesis.source.r26048
	afparticle.source.r35900
	aiaa.source.r15878
	amnestyreport.source.r69439
	aomart.source.r72865
	apa6.source.r67848
	apa6e.source.r23350
	apa7.source.r63974
	articleingud.source.r38741
	bangorcsthesis.source.r61770
	bangorexam.source.r65140
	bath-bst.source.r63398
	beilstein.source.r56193
	bgteubner.source.r54080
	brandeis-dissertation.source.r67935
	brandeis-thesis.source.r68092
	buctthesis.source.r67818
	cesenaexam.source.r44960
	cidarticle.source.r68976
	cjs-rcs-article.source.r71936
	confproc.source.r29349
	contract.source.r69759
	cquthesis.source.r55643
	dccpaper.source.r72097
	ebsthesis.source.r15878
	ejpecp.source.r60950
	ekaia.source.r49594
	elbioimp.source.r21758
	elsarticle.source.r70902
	emisa.source.r71883
	erdc.source.r15878
	estcpmm.source.r17335
	fbithesis.source.r21340
	fcltxdoc.source.r24500
	fei.source.r65352
	geradwp.source.r63134
	gfdl.source.r65415
	grant.source.r56852
	gsemthesis.source.r56291
	gzt.source.r70532
	hecthese.source.r68584
	hep-paper.source.r67632
	heria.source.r72189
	hithesis.source.r64005
	hitszbeamer.source.r54381
	hitszthesis.source.r61073
	hu-berlin-bundle.source.r67128
	hustthesis.source.r42547
	iaria.source.r72670
	iaria-lite.source.r72669
	icsv.source.r15878
	ieeeconf.source.r59665
	ijmart.source.r30958
	imtekda.source.r17667
	jmlr.source.r61957
	kdgdocs.source.r24498
	kdpcover.source.r65150
	kfupm-math-exam.source.r63977
	kluwer.source.r54074
	langsci-avm.source.r66016
	limecv.source.r61199
	lni.source.r71883
	lps.source.r21322
	matc3.source.r29845
	matc3mem.source.r35773
	mcmthesis.source.r69538
	mentis.source.r15878
	mlacls.source.r72271
	mluexercise.source.r56927
	mucproc.source.r43445
	mugsthesis.source.r64259
	muling.source.r66741
	musuos.source.r24857
	mynsfc.source.r60280
	navydocs.source.r41643
	nddiss.source.r45107
	njustthesis.source.r62451
	njuthesis.source.r71034
	njuvisual.source.r65261
	nostarch.source.r67683
	nrc.source.r29027
	nstc-proposal.source.r72795
	nwafuthesis.source.r66895
	nwejm.source.r70597
	oststud.source.r67217
	philosophersimprint.source.r56954
	pittetd.source.r15878
	pracjourn.source.r61719
	prociagssymp.source.r70888
	proposal.source.r40538
	qrbill.source.r67724
	rebuttal.source.r72851
	resphilosophica.source.r50935
	resumecls.source.r54815
	revtex.source.r67271
	revtex4.source.r56589
	revtex4-1.source.r56590
	rub-kunstgeschichte.source.r72721
	rutitlepage.source.r62143
	ryethesis.source.r33945
	sageep.source.r15878
	scientific-thesis-cover.source.r47923
	scripture.source.r69232
	scrjrnl.source.r27810
	sduthesis.source.r41401
	se2thesis.source.r72569
	seuthesis.source.r33042
	seuthesix.source.r40088
	sfee.source.r70718
	smflatex.source.r58910
	sr-vorl.source.r59333
	sshrc-insight.source.r72623
	stellenbosch.source.r68039
	stellenbosch-2.source.r68183
	suftesi.source.r68204
	thesis-ekf.source.r70980
	thesis-titlepage-fhac.source.r15878
	thubeamer.source.r61071
	thucoursework.source.r56435
	thuthesis.source.r71680
	timbreicmc.source.r49740
	topletter.source.r48182
	toptesi.source.r56276
	tudscr.source.r64085
	tugboat.source.r72711
	uaclasses.source.r15878
	uantwerpendocs.source.r72118
	ucdavisthesis.source.r40772
	ucph-revy.source.r72484
	ucsmonograph.source.r52698
	udes-genie-these.source.r68141
	udiss.source.r72466
	uhhassignment.source.r44026
	uiucredborder.source.r29974
	uiucthesis.source.r15878
	ulthese.source.r71697
	unigrazpub.source.r64797
	uol-physics-report.source.r65761
	uothesis.source.r25355
	ut-thesis.source.r71906
	uwa-colours.source.r60443
	uwa-letterhead.source.r64491
	uwa-pcf.source.r64491
	uwa-pif.source.r64491
	wsemclassic.source.r31532
	xduthesis.source.r63116
	xduts.source.r66661
	xmuthesis.source.r56614
	yathesis.source.r70511
	yb-book.source.r70740
	york-thesis.source.r23348
"

inherit texlive-module

DESCRIPTION="TeXLive Publisher styles, theses, etc."

LICENSE="Apache-2.0 BSD CC-BY-4.0 CC-BY-SA-3.0 CC-BY-SA-4.0 CC0-1.0 FDL-1.1+ GPL-1+ GPL-2 GPL-2+ GPL-3 GPL-3+ LPPL-1.2 LPPL-1.3 LPPL-1.3a LPPL-1.3c MIT OFL-1.1 TeX-other-free public-domain"
SLOT="0"
KEYWORDS="amd64 ~ppc ~ppc64 ~x86"
COMMON_DEPEND="
	>=dev-texlive/texlive-latex-2024
"
RDEPEND="
	${COMMON_DEPEND}
"
DEPEND="
	${COMMON_DEPEND}
"
