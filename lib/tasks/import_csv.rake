require "csv"

namespace :import_csv do
	# タスクの説明
	desc "CSVデータをインポートするタスク"

	# AWSテキスト教材のCSV => タスク名：aws_texts
	task aws_texts: :environment do
		require "import.rb"
		Import.csv_data(path: "db/csv_data/aws_text_data.csv", table: AwsText)
	end
end
