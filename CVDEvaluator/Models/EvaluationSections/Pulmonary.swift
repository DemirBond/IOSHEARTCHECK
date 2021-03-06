//
//  Pulmonary.swift
//  CVDEvaluator
//
//  Created by Davis Chan on 9/5/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import Foundation


// MARK: - Pulmonary

class Pulmonary: EvaluationItem {
	
//	let fev1_lt = EvaluationItem(literal: Presentation.fev1_lt)
//	let fev1_percent = EvaluationItem(literal: Presentation.fev1_percent)
//	let fvc = EvaluationItem(literal: Presentation.fvc)
//	let dlco = EvaluationItem(literal: Presentation.dlco)
//	let po2 = EvaluationItem(literal: Presentation.po2)
	let nsevere = EvaluationItem(literal: Presentation.nsevere)
	let asthmadisease = AsthmaReactiveAirwayDisease(literal: Presentation.asthmadisease)
	let copd = LungCOPD(literal: Presentation.lung_copd)
	let interstitialLungDisease = EvaluationItem(literal: Presentation.interstitialLungDisease)
	let osa = SectionOSA(literal: Presentation.pulmonaryOSA)
	//let separator = EvaluationItem(literal: Presentation.separator)
	
	override var items: [EvaluationItem] {
		return [
			nsevere,
			asthmadisease,
			copd,
			interstitialLungDisease,
			osa
			//separator,
			
//			fev1_lt,
//			fev1_percent,
//			fvc,
//			dlco,
//			po2
		]
	}
}

class SectionOSA: EvaluationItem {
	let ahi = EvaluationItem(literal: Presentation.ahi)
	override var items: [EvaluationItem] {
		return [ahi]
	}
}


// MARK: - Pulmonary -> Asthma / Reactive airway disease:

class AsthmaReactiveAirwayDisease: EvaluationItem {
	
	let symptomsweek = EvaluationItem(literal: Presentation.symptomsWeek)
	let nocturnal = EvaluationItem(literal: Presentation.nocturnal)
	let sabause = EvaluationItem(literal: Presentation.sabaUse)
	let interference = InterferenceWithActivity(literal: Presentation.interference)
	
	override var items: [EvaluationItem] {
		return [
			symptomsweek,
			nocturnal,
			sabause,
			interference
		]
	}
}


// MARK: - Pulmonary -> Asthma / Reactive airway disease -> Interference with activity

class InterferenceWithActivity: EvaluationItem {

	let none = EvaluationItem(literal: Presentation.noneInterference)
	let minor = EvaluationItem(literal: Presentation.minor)
	let some = EvaluationItem(literal: Presentation.some)
	let significant = EvaluationItem(literal: Presentation.significant)
	
	override var items: [EvaluationItem] {
		return [
			none,
			minor,
			some,
			significant
		]
	}
}


// MARK: - Pulmonary -> LungCOPD:

class LungCOPD: EvaluationItem {
	
	let acute = EvaluationItem(literal: Presentation.acute)
	let copdex = EvaluationItem(literal: Presentation.copdex)
	let copdhos = EvaluationItem(literal: Presentation.copdhos)
	
	override var items: [EvaluationItem] {
		return [
			acute,
			copdex,
			copdhos
		]
	}
}
