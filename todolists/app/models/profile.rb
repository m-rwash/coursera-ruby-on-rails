class Profile < ActiveRecord::Base
  belongs_to :user
  validate :first_or_last_name_null
  validates :gender, inclusion: ["male", "female"]
  validate :cant_name_sue

  def self.get_all_profiles(min_year, max_year)
  	Profile.where("birth_year BETWEEN :min AND :max", min: min_year, max: max_year).order(:birth_year)	
  end

  def cant_name_sue
  	if gender == 'male' && first_name == 'Sue'
  		errors.add(:base, "can't name a male Sue")
	end
  end

 def first_or_last_name_null
  	if first_name.nil? && last_name.nil?
  		errors.add(:base, "either first_name or last_name must be present!")
  	end
  end

end
