require "import.rb"

namespace :import_csv do
	# タスクの説明
	desc "CSVデータをインポートするタスク"

	# AWSテキスト教材のCSV => タスク名：aws_texts
	task aws_texts: :environment do
		Import.csv_data(path: "db/csv_data/aws_text_data.csv", table: AwsText)
	end

	desc "動画データをインポートするタスク"

	# 動画教材のCSV => タスク名：movies
	task movies: :environment do
		Import.csv_data(path: "db/csv_data/movie_data.csv", table: Movie)
	end
end
