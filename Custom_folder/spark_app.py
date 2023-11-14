from pyspark.sql import SparkSession

def main():
    spark = SparkSession.builder \
        .appName("Spark Test App") \
        .getOrCreate()

    # Example data processing
    data = [("Java", 20000), ("Python", 100000), ("Scala", 3000)]
    columns = ["Language", "Users"]

    df = spark.createDataFrame(data).toDF(*columns)
    df.show()

    spark.stop()

if __name__ == "__main__":
    main()