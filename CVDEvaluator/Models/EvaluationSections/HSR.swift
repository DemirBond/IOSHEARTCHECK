//
//  HSR.swift
//  CVDEvaluator
//
//  Created by bogdankosh on 2/22/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import Foundation


// MARK: - Current Therapies

class HSR: EvaluationItem {
	
	let poMeds = POMeds(literal: Presentation.poMeds)
	let inHospital = InHospital(literal: Presentation.inHospital)
	
	override var items: [EvaluationItem] {
		return [poMeds, inHospital]
	}
}


// MARK: - HSR -> POMeds

class POMeds: EvaluationItem {

	let bBlocker = BBlocker(literal: Presentation.bBlocker)
	let acelARB = AcelARB(literal: Presentation.acelARB)
	let poDiuretic = PODiuretic(literal: Presentation.poDiuretic)
	let ccbOtherVasolidators = SectionCBB(literal: Presentation.ccbOtherVasolidators)
	let vasodilator = SectionVasodilator(literal: Presentation.vasodilator)
	let currentVKATherapy = EvaluationItem(literal: Presentation.currentVKATherapy)
	let directThrombinInhibitors = EvaluationItem(literal: Presentation.directThrombinInhibitors)
	let factorXaInhibitors = EvaluationItem(literal: Presentation.factorXaInhibitors)
	let immunosuppressives = EvaluationItem(literal: Presentation.immunosuppressives)
	
	
	override var items: [EvaluationItem] {
		return [
			bBlocker,
			acelARB,
			poDiuretic,
			ccbOtherVasolidators,
			vasodilator,
			currentVKATherapy,
			directThrombinInhibitors,
			factorXaInhibitors,
			immunosuppressives
		]
	}
}

class SectionCBB: EvaluationItem {

	let dihydropyridine = EvaluationItem(literal: Presentation.dihydropyridine)
	let nondihydropyridine = EvaluationItem(literal: Presentation.nondihydropyridine)

	override var items: [EvaluationItem] {
		return [
			dihydropyridine,
			nondihydropyridine
		]
	}
}

class SectionVasodilator: EvaluationItem {
	let hydralazine = EvaluationItem(literal: Presentation.hydralazine)
	let nitrate = EvaluationItem(literal: Presentation.nitrate)
	override var items: [EvaluationItem] {
		return [
			hydralazine,
			nitrate
		]
	}
}


// MARK: - HSR -> POMeds -> B Blocker

class BBlocker: EvaluationItem {
	
	let carvedilol3125bid = EvaluationItem(literal: Presentation.carvedilol3125bid)
	let carvedilol625bid = EvaluationItem(literal: Presentation.carvedilol625bid)
	let carvedilol125bid = EvaluationItem(literal: Presentation.carvedilol125bid)
	let carvedilol25bid = EvaluationItem(literal: Presentation.carvedilol25bid)
	let metoproloIER25qd = EvaluationItem(literal: Presentation.metoproloIER25qd)
	let metoproloIER50qd = EvaluationItem(literal: Presentation.metoproloIER50qd)
	let metoproloIER100qd = EvaluationItem(literal: Presentation.metoproloIER100qd)
	let metoproloIER150qd = EvaluationItem(literal: Presentation.metoproloIER150qd)
	let metoproloIER200qd = EvaluationItem(literal: Presentation.metoproloIER200qd)
	
	override var items: [EvaluationItem] {
		return [
			carvedilol3125bid,
			carvedilol625bid,
			carvedilol125bid,
			carvedilol25bid,
			metoproloIER25qd,
			metoproloIER50qd,
			metoproloIER100qd,
			metoproloIER150qd,
			metoproloIER200qd
		]
	}
}


// MARK: - HSR -> POMeds -> Acel/ARB

class AcelARB: EvaluationItem {
	
	let lisinopril5 = EvaluationItem(literal: Presentation.lisinopril5)
	let lisinopril10 = EvaluationItem(literal: Presentation.lisinopril10)
	let lisinopril20 = EvaluationItem(literal: Presentation.lisinopril20)
	let losartan25 = EvaluationItem(literal: Presentation.losartan25)
	let losartan50 = EvaluationItem(literal: Presentation.losartan50)
	let losartan100 = EvaluationItem(literal: Presentation.losartan100)
	
	override var items: [EvaluationItem] {
		return [
			lisinopril5,
			lisinopril10,
			lisinopril20,
			losartan25,
			losartan50,
			losartan100
		]
	}
}


// MARK: - HSR -> POMeds -> PO Diuretic

class PODiuretic: EvaluationItem {
	
	let furosemide40 = EvaluationItem(literal: Presentation.furosemide40)
	let furosemide80 = EvaluationItem(literal: Presentation.furosemide80)
	let furosemide80Plus = EvaluationItem(literal: Presentation.furosemide80Plus)
	let bumex1 = EvaluationItem(literal: Presentation.bumex1)
	let bumex2 = EvaluationItem(literal: Presentation.bumex2)
	let bumex2Plus = EvaluationItem(literal: Presentation.bumex2Plus)
	let torsemide20 = EvaluationItem(literal: Presentation.torsemide20)
	let torsemide40 = EvaluationItem(literal: Presentation.torsemide40)
	let torsemide50Plus = EvaluationItem(literal: Presentation.torsemide50Plus)
	let hctz = EvaluationItem(literal:Presentation.hctz)
	let indapamide = EvaluationItem(literal: Presentation.indapamide)
	let chlorthalidoneMetolazone = EvaluationItem(literal: Presentation.chlorthalidoneMetolazone)
	let spirolactone = EvaluationItem(literal: Presentation.spirolactone)

	override var items: [EvaluationItem] {
		return [
			furosemide40,
			furosemide80,
			furosemide80Plus,
			bumex1,
			bumex2,
			bumex2Plus,
			torsemide20,
			torsemide40,
			torsemide50Plus,
			hctz,
			indapamide,
			chlorthalidoneMetolazone,
			spirolactone
		]
	}
}


// MARK: - HSR -> InHospital

class InHospital: EvaluationItem {
	
	let ivAntiarrythmic = IVAntiarrythmic(literal: Presentation.ivAntiarrythmic)
	let urgentCV = EvaluationItem(literal: Presentation.urgentCV)
	let defibrillationACLS = EvaluationItem(literal: Presentation.defibrillationACLS)
	let ivAntihypertensive = IVAntihypertensive(literal: Presentation.ivAntihypertensive)
	let ivVasoactive = IVVasoactive(literal: Presentation.ivVasoactive)
	let ivDiuretic = IVDiuretic(literal: Presentation.ivDiuretic)
	let mechanicalVentiallationOrNIPPV = MechanicalVentiallationOrNIPPV(literal: Presentation.mechanicalVentiallationOrNIPPV)
	let ivVasopressors = IVVasopressors(literal: Presentation.ivVasopressors)
	let ultrafiltration = EvaluationItem(literal: Presentation.ultrafiltration)
	let iabp = EvaluationItem(literal: Presentation.iabp)
	let temporaryPM = EvaluationItem(literal: Presentation.temporaryPM)
	
	override var items: [EvaluationItem] {
		return [
			ivVasopressors,
			ivAntihypertensive,
			ivVasoactive,
			ivDiuretic,
			ivAntiarrythmic,
			mechanicalVentiallationOrNIPPV,
			defibrillationACLS,
			urgentCV,
			ultrafiltration,
			iabp,
			temporaryPM
		]
	}
}

class IVVasopressors: EvaluationItem {

	let dopamine = EvaluationItem(literal: Presentation.ivVasopressorsDopamine)
	let epinephrine = EvaluationItem(literal: Presentation.ivVasopressorsEpinephrine)
	let norepinephrine = EvaluationItem(literal: Presentation.ivVasopressorsNorepinephrine)
	let continuous = EvaluationItem(literal: Presentation.ivVasopressorsContinuous)
	let bolus = EvaluationItem(literal: Presentation.ivVasopressorsBolus)
	let titration = EvaluationItem(literal: Presentation.ivVasopressorsTitration)
	let frequency = EvaluationItem(literal: Presentation.ivVasopressorsFrequency)
	
	override var items: [EvaluationItem] {
		return [
			dopamine,
			epinephrine,
			norepinephrine,
			continuous,
			bolus,
			titration,
			frequency
		]
	}
}


// MARK: - HSR -> InHospital -> IV Antiarrythmic

class IVAntiarrythmic: EvaluationItem {
	
	let continuousInAntiarrythmic = EvaluationItem(literal: Presentation.continuousInAntiarrythmic)
	let bolusInAntiarrythmic = EvaluationItem(literal: Presentation.bolusInAntiarrythmic)
	let titrationInAntiarrythmic = EvaluationItem(literal: Presentation.titrationInAntiarrythmic)
	let monitoringFrequencyQhrInAntiarrythmic = EvaluationItem(literal: Presentation.monitoringFrequencyQhrInAntiarrythmic)
	let transitionToPOAntiarrythmicInAntiarrythmic = EvaluationItem(literal: Presentation.transitionToPOAntiarrythmicInAntiarrythmic)
	
	override var items: [EvaluationItem] {
		return [
			continuousInAntiarrythmic,
			bolusInAntiarrythmic,
			titrationInAntiarrythmic,
			monitoringFrequencyQhrInAntiarrythmic,
			transitionToPOAntiarrythmicInAntiarrythmic
		]
	}
}


// MARK: - HSR -> InHospital -> iv Antihypertensive

class IVAntihypertensive: EvaluationItem {
	
	let blnIVHTcon = EvaluationItem(literal: Presentation.blnIVHTcon)
	let blnIVHTbolus = EvaluationItem(literal: Presentation.blnIVHTbolus)
	let blnIVHTtitr = EvaluationItem(literal: Presentation.blnIVHTtitr)
	let txtHTmonitor = EvaluationItem(literal: Presentation.txtHTmonitor)
	let ivAntihypertensiveNPS = EvaluationItem(literal: Presentation.ivAntihypertensiveNPS)
	let ivAntihypertensiveNTG = EvaluationItem(literal: Presentation.ivAntihypertensiveNTG)
	
	override var items: [EvaluationItem] {
		return [
			ivAntihypertensiveNPS,
			ivAntihypertensiveNTG,
			blnIVHTcon,
			blnIVHTbolus,
			blnIVHTtitr,
			txtHTmonitor
		]
	}
}


// MARK: - HSR -> InHospital -> IV Vasoactive

class IVVasoactive: EvaluationItem {
	
	let ivVasoactiveMilrinone = EvaluationItem(literal: Presentation.ivVasoactiveMilrinone)
	let ivVasoactiveDobutamine = EvaluationItem(literal: Presentation.ivVasoactiveDobutamine)
	let ivVasoactiveContinuous = EvaluationItem(literal: Presentation.ivVasoactiveContinuous)
	let ivVasoactiveBolus = EvaluationItem(literal: Presentation.ivVasoactiveBolus)
	let ivVasoactiveTitration = EvaluationItem(literal: Presentation.ivVasoactiveTitration)
	let ivVasoactiveTxtVAmonitor = EvaluationItem(literal: Presentation.ivVasoactiveTxtVAmonitor)
	
	override var items: [EvaluationItem] {
		return [
			ivVasoactiveMilrinone,
			ivVasoactiveDobutamine,
			ivVasoactiveContinuous,
			ivVasoactiveBolus,
			ivVasoactiveTitration,
			ivVasoactiveTxtVAmonitor,
		]
	}
}


// MARK: - HSR -> InHospital -> IV Diuretic

class IVDiuretic: EvaluationItem {
	
	let blncon = EvaluationItem(literal: Presentation.blncon)
	let blnPODI = EvaluationItem(literal: Presentation.blnPODI)
	let txtmonitor = EvaluationItem(literal: Presentation.txtmonitor)
	
	override var items: [EvaluationItem] {
		return [
			blncon,
			blnPODI,
			txtmonitor
		]
	}
}


// MARK: - HSR -> InHospital -> Mechanical Ventiallation or NIPPV

class MechanicalVentiallationOrNIPPV: EvaluationItem {
	
	let txtRI = EvaluationItem(literal: Presentation.txtRI)
	let o2Supplement = EvaluationItem(literal: Presentation.o2Supplement)
	let cpap = EvaluationItem(literal: Presentation.cpap1)
	let peep = EvaluationItem(literal: Presentation.peep1)
	
	override var items: [EvaluationItem] {
		return [txtRI, o2Supplement, cpap, peep]
	}
}
