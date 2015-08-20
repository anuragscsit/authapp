module UnivercitiesHelper
def get_colleges(univercity)
	college = univercity.colleges.map(&:name).uniq
end
end
