FactoryGirl.define do 
	factory :role do 
		
		trait :administrator do 
			name 'Administrator'
		end

		trait :team_master do 
			name 'TeamMaster'
		end

		trait :team do 
			name 'Team'
		end
	end
end