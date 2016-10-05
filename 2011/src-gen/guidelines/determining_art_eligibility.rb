module DeterminingArtEligibility
	include CoreService
	require 'bean'
	require 'json'
	require 'rest_client'                                                           
	require 'bigdecimal'

	def self.ART_eligibility_in_infants(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'No', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('DNA-PCR test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '<', '12', patient, 'months') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'ART eligibility in infants']
	
		end
		actions
	end
				
		
	def self.ART_eligibility_in_PSHD_candidiasis_and_pneumonia(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'No', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('Oral candidiasis', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('Pneumonia', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('HIV rapid test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '<', '12', patient, 'months') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'ART eligibility in PSHD candidiasis and pneumonia']
	
		end
		actions
	end
				
		
	def self.ART_eligibility_in_PSHD_candidiasis_and_sepsis(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'No', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('Oral candidiasis', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('Severe Sepsis', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('HIV rapid test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '<', '12', patient, 'months') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'ART eligibility in PSHD candidiasis and sepsis']
	
		end
		actions
	end
				
		
	def self.ART_eligibility_in_PSHD_pneumonia_and_sepsis(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'No', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('Pneumonia', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('Severe Sepsis', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('HIV rapid test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '<', '12', patient, 'months') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'ART eligibility in PSHD pneumonia and sepsis']
	
		end
		actions
	end
				
		
	def self.universal_eligibility_in_children(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'No', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '12', patient, 'months') unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '<', '24', patient, 'months') unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('HIV rapid test result', 'is', 'positive', patient) unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'universal eligibility in children']
	
		end
		actions
	end
				
		
	def self.ART_eligibility_in_children_under_5_years_with_mild_HIV(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'No', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('HIV rapid test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('CD4 count', '<=', '750', patient, 'cells/mm3') unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('WHO clinical stage', 'is', 'WHO stage 1/2', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '24', patient, 'months') unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '<', '5', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'ART eligibility in children under 5 years with mild HIV']
	
		end
		actions
	end
				
		
	def self.ART_eligibility_in_children_under_5_years_with_severe_HIV(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'No', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('HIV rapid test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('WHO clinical stage', 'is', 'WHO stage 3/4', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '24', patient, 'months') unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '<', '5', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'ART eligibility in children under 5 years with severe HIV']
	
		end
		actions
	end
				
		
	def self.ART_eligibility_in_breastfeeding_women(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'No', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('HIV rapid test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('Breastfeeding', 'is', 'Yes', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '5', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'ART eligibility in breastfeeding women']
	
		end
		actions
	end
				
		
	def self.HIV_with_pregnancy(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'No', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('HIV rapid test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('Pregnant woman', 'is', 'Yes', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('trimester', 'is', '2', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '5', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'HIV with pregnancy']
	
		end
		actions
	end
				
		
	def self.ART_eligibility_in_patients_from_5_years_with_mild_HIV(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'No', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '5', patient, 'years') unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('HIV rapid test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('CD4 count', '<=', '350', patient, 'cells/mm3') unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('WHO clinical stage', 'is', 'WHO stage 1/2', patient) unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'ART eligibility in patients from 5 years with mild HIV']
	
		end
		actions
	end
				
		
	def self.ART_eligibility_in_patients_from_5_years_with_severe_HIV(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'No', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('HIV rapid test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('WHO clinical stage', 'is', 'WHO stage 3/4', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '5', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'ART eligibility in patients from 5 years with severe HIV']
	
		end
		actions
	end
				
		

	def self.guideline_recommendations(patient)
		alerts = []
		alerts = alerts + ART_eligibility_in_infants(patient)
		alerts = alerts + ART_eligibility_in_PSHD_candidiasis_and_pneumonia(patient)
		alerts = alerts + ART_eligibility_in_PSHD_candidiasis_and_sepsis(patient)
		alerts = alerts + ART_eligibility_in_PSHD_pneumonia_and_sepsis(patient)
		alerts = alerts + universal_eligibility_in_children(patient)
		alerts = alerts + ART_eligibility_in_children_under_5_years_with_mild_HIV(patient)
		alerts = alerts + ART_eligibility_in_children_under_5_years_with_severe_HIV(patient)
		alerts = alerts + ART_eligibility_in_breastfeeding_women(patient)
		alerts = alerts + HIV_with_pregnancy(patient)
		alerts = alerts + ART_eligibility_in_patients_from_5_years_with_mild_HIV(patient)
		alerts = alerts + ART_eligibility_in_patients_from_5_years_with_severe_HIV(patient)
		alerts
	end
end
