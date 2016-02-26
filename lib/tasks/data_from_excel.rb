	# Stores excel parsed data in doc
	doc = SimpleXlsxReader.open('2014 VC Exec Comp Survey - Tech (1).xlsx')
	# Takes the array from 2-29 and cuts out everything else
	doc.sheets.slice(0..1)
	doc.sheets.slice(27)
	#applies below process for every sheet
	doc.sheets[2..29].each do |sheet|
		#removes nil data from sheet
		sheet.rows.delete_if {|x| x[1] == nil}
		sheet.rows[11..-1].each do |row|
			next if row[1].nil?
			comp_item = CompItem.new
			#primary title as 
			comp_item.primary_title = PrimaryTitle.find_or_create_by(name: sheet.name)
			comp_item.company_title = row[1]
			#if yes, set boolean
			if row[2] == "Yes"
				comp_item.founder = true
			else 
				comp_item.founder = false;
			end
			#if full time, set boolean
			if row[3] == "Full Time"
				comp_item.full_time = true
			else 
				comp_item.full_time = false;
			end
			comp_item.employee_region = EmployeeRegion.find_or_create_by(name: row[4])
			comp_item.base_salary = row[6]
			comp_item.bonus = row[8]
			comp_item.percent_of_shares = row[12] * 100
			comp_item.company_founded = row[13]
			comp_item.industry = Industry.find_or_create_by(name: row[14])
			comp_item.development_stage = DevelopmentStage.find_or_create_by(name: row[15])
			comp_item.funding_round = FundingRound.find_or_create_by(name: row[16])
			comp_item.capital_raised = CapitalRaised.find_or_create_by(name: row[17])
			comp_item.revenue = Revenue.find_or_create_by(name: row[18])
			comp_item.head_count = HeadCount.find_or_create_by(name: row[19])
			comp_item.save
		end
	end
