module ProvidingArtInSpecialSituations
	include CoreService
	require 'bean'
	require 'json'
	require 'rest_client'                                                           
	require 'bigdecimal'

	def self.HIV_with_anaemia_in_adults(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('HIV test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'NO', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('anaemia', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '15', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'HIV with anaemia in adults']
		actions << ['prescribe', '1A - d4T/3TC/NVP', 'HIV with anaemia in adults']
	
		end
		actions
	end
				
		
	def self.HIV_with_anaemia_in_children(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('HIV test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'NO', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('anaemia', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '6', patient, 'weeks') unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '<=', '14', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'HIV with anaemia in children']
		actions << ['prescribe', '1P - d4T/3TC/NVP', 'HIV with anaemia in children']
	
		end
		actions
	end
				
		
	def self.HIV_with_TB_in_adults(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('HIV test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'NO', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('TB', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '15', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'HIV with TB in adults']
		actions << ['prescribe', '5A - TDF/3TC/EFV', 'HIV with TB in adults']
	
		end
		actions
	end
				
		
	def self.HIV_with_TB_in_children(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('HIV test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'NO', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('TB', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '6', patient, 'weeks') unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '<', '3', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'HIV with TB in children']
		actions << ['prescribe', '2P - AZT/3TC/NVP', 'HIV with TB in children']
	
		end
		actions
	end
				
		
	def self.HIV_with_TB_in_older_children(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('HIV test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'NO', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('TB', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '3', patient, 'years') unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '<=', '14', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'HIV with TB in older children']
		actions << ['prescribe', '4P - AZT/3TC+EFV', 'HIV with TB in older children']
	
		end
		actions
	end
				
		
	def self.HIV_with_jaundice_in_children(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('HIV test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'NO', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('Jaundice', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '6', patient, 'weeks') unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '<=', '14', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'HIV with jaundice in children']
		actions << ['prescribe', '4P - AZT/3TC+EFV', 'HIV with jaundice in children']
		actions << ['Refer to other hospital', 'Tertiary hospital', 'HIV with jaundice in children']
	
		end
		actions
	end
				
		
	def self.HIV_with_jaundice_in_adults(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('HIV test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'NO', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('Jaundice', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '15', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'HIV with jaundice in adults']
		actions << ['prescribe', '3A - d4T/3TC+EFV', 'HIV with jaundice in adults']
		actions << ['Refer to other hospital', 'Tertiary hospital', 'HIV with jaundice in adults']
	
		end
		actions
	end
				
		
	def self.HIV_with_pregnancy(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('HIV test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'NO', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('Pregnant woman', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('trimester', 'is', '2', patient) unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'HIV with pregnancy']
		actions << ['prescribe', '5A - TDF/3TC/EFV', 'HIV with pregnancy']
	
		end
		actions
	end
				
		
	def self.HIV_and_in_labour(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('HIV test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'NO', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('In labour', 'is', 'present', patient) unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'HIV and in labour']
		actions << ['prescribe', '5A - TDF/3TC/EFV', 'HIV and in labour']
	
		end
		actions
	end
				
		
	def self.HIV_with_renal_failure_in_children(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('HIV test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'NO', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('Renal failure', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '6', patient, 'weeks') unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '<=', '14', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'HIV with renal failure in children']
		actions << ['prescribe', '2P - AZT/3TC/NVP', 'HIV with renal failure in children']
		actions << ['Refer to other hospital', 'Tertiary hospital', 'HIV with renal failure in children']
	
		end
		actions
	end
				
		
	def self.HIV_with_renal_failure_in_adults(patient)
		actions = []
		valid_condition = true
		
		#Evaluating conditions
		valid_condition = PatientService.evaluate_concept_condition('HIV test result', 'is', 'positive', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('On ART', 'is', 'NO', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('Renal failure', 'is', 'present', patient) unless !valid_condition
		valid_condition = PatientService.evaluate_concept_condition('age', '>=', '15', patient, 'years') unless !valid_condition
		
		
		if valid_condition
			actions = []
		
		actions << ['Flag patient for', 'ART', 'HIV with renal failure in adults']
		actions << ['prescribe', '4A - AZT/3TC+EFV', 'HIV with renal failure in adults']
		actions << ['Refer to other hospital', 'Tertiary hospital', 'HIV with renal failure in adults']
	
		end
		actions
	end
				
		

	def self.guideline_recommendations(patient)
		alerts = []
		alerts = alerts + HIV_with_anaemia_in_adults(patient)
		alerts = alerts + HIV_with_anaemia_in_children(patient)
		alerts = alerts + HIV_with_TB_in_adults(patient)
		alerts = alerts + HIV_with_TB_in_children(patient)
		alerts = alerts + HIV_with_TB_in_older_children(patient)
		alerts = alerts + HIV_with_jaundice_in_children(patient)
		alerts = alerts + HIV_with_jaundice_in_adults(patient)
		alerts = alerts + HIV_with_pregnancy(patient)
		alerts = alerts + HIV_and_in_labour(patient)
		alerts = alerts + HIV_with_renal_failure_in_children(patient)
		alerts = alerts + HIV_with_renal_failure_in_adults(patient)
		alerts
	end
end
