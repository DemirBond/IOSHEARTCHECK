//
//  ReviewOfSystem.swift
//  CVDEvaluator
//
//  Created by bogdankosh on 3/21/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import UIKit

class ReviewOfSystem: EvaluationItem {
	
	let weightChangeInROS = EvaluationItem(literal: Presentation.weightChangeInROS)
	let thyrotoxicosisInROS = EvaluationItem(literal: Presentation.thyrotoxicosisInROS)
	let palpitationsInROS = EvaluationItem(literal: Presentation.palpitationsInROS)
	let osaSymptomsInROS = EvaluationItem(literal: Presentation.osaSymptomsInROS)
	let sinusSymptomsInROS = EvaluationItem(literal: Presentation.sinusSymptomsInROS)
	let coughSymptomsInROS = EvaluationItem(literal: Presentation.coughSymptomsInROS)
	let sputumSymptomsInROS = EvaluationItem(literal: Presentation.sputumSymptomsInROS)
	let previousDVTPEInROS = EvaluationItem(literal: Presentation.previousDVTPEInROS)
	let activePepticUlcerDiseaseInROS = EvaluationItem(literal: Presentation.activePepticUlcerDiseaseInROS)
	let liverDiseaseInROS = EvaluationItem(literal: Presentation.liverDiseaseInROS)
	let bleedInThePast3MonthsInROS = EvaluationItem(literal: Presentation.bleedInThePast3MonthsInROS)
	let tiaInROS = EvaluationItem(literal: Presentation.tiaInROS)
	let hypothyroidismInROS = EvaluationItem(literal: Presentation.hypothyroidismInROS)
	let claudicationInROS = EvaluationItem(literal: Presentation.claudicationInROS)
	let ulcerInROS = EvaluationItem(literal: Presentation.ulcerInROS)
	let rheumInROS = EvaluationItem(literal: Presentation.rheumInROS)
	let blnhemoptysis = EvaluationItem(literal: Presentation.blnhemoptysis)
	let blnunilateral = EvaluationItem(literal: Presentation.blnunilateral)
	let pnd = EvaluationItem(literal: Presentation.pndInROS)
	let orthopnea = EvaluationItem(literal: Presentation.orthopneaInROS)
	let previousDVT = EvaluationItem(literal: Presentation.previousDVTEInROS)
	let otherImmune = EvaluationItem(literal: Presentation.otherImmune)
	let socialHisLabel = EvaluationItem(literal: Presentation.socialHistoryLabel)
	let tobaccoUse = EvaluationItem(literal: Presentation.tobaccoUse)
	let famHisLabel = EvaluationItem(literal: Presentation.familyHistoryLabel)
	let familyHistory = FamilyHistory(literal: Presentation.familyHistory)
	
	let covLabel = EvaluationItem(literal: Presentation.covidEx)
	let covTravel = EvaluationItem(literal: Presentation.covidTravel)
	let covExposure = EvaluationItem(literal: Presentation.covidExposure)
	
	override var items: [EvaluationItem] {
		return [
			weightChangeInROS,
			thyrotoxicosisInROS,
			hypothyroidismInROS,
			osaSymptomsInROS,
			sinusSymptomsInROS,
			coughSymptomsInROS,
			sputumSymptomsInROS,
			blnhemoptysis,
			previousDVTPEInROS,
			pnd,
			orthopnea,
			palpitationsInROS,
			activePepticUlcerDiseaseInROS,
			liverDiseaseInROS,
			bleedInThePast3MonthsInROS,
			tiaInROS,
			claudicationInROS,
			ulcerInROS,
			blnunilateral,
			previousDVT,
			rheumInROS,
			otherImmune,
			
			socialHisLabel,
			tobaccoUse,
			
			famHisLabel,
			familyHistory,
			
			covLabel,
			covTravel,
			covExposure
		]
	}
	
	
}

class FamilyHistory: EvaluationItem {
	
	let fam1 = EvaluationItem(literal: Presentation.famFirstPremature)
	let fam2 = EvaluationItem(literal: Presentation.famFirstRelLDLCAbove95)
	let fam3 = EvaluationItem(literal: Presentation.famXan)
	
	override var items: [EvaluationItem] {
		return [
			fam1,
			fam2,
			fam3,
			
		]
	}
}

