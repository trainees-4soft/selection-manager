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

	factory :enterprise do 
		name '4soft'
	end
	factory :user do 
		email 'master@email.com'
		password 'master123'
		password_confirmation 'master123'
		role_ids 1
		enterprise_id 1
	end
end