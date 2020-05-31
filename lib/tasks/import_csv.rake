require "import.rb"

namespace :import_csv do
	# タスクの説明
	desc "CSVデータをインポートするタスク"

	# AWSテキスト教材のCSV => タスク名：aws_texts
	task aws_texts: :environment do
		Import.csv_data(path: "db/csv_data/aws_text_data.csv", table: AwsText)
	end
end
