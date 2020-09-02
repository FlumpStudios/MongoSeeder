using MongoDB.Bson;
using MongoDB.Bson.Serialization;
using MongoDB.Driver;
using System;
using System.ComponentModel;
using System.Threading.Tasks;
using System.Windows;

namespace MongoSeeder
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private IMongoCollection<BsonDocument> _collection;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void UpdateDbDetails()
        {
            string connectionString = ConnectionStringBox.Text;
            string dbName = DbNameTextBox.Text;
            string collectionName = CollectionText.Text;

            var client = new MongoClient(connectionString);
            var database = client.GetDatabase(dbName);
            _collection = database.GetCollection<BsonDocument>(collectionName);
        }

        private async void Button_Click(object sender, RoutedEventArgs e)
        {
            UpdateDbDetails();
            var recordParseOk = int.TryParse(NumOfRecordsTextBox.Text, out int recordCount);

            if (recordParseOk)
            {
                var json = JsonDataTextBox.Text;

                for (int i = 0; i < recordCount; i++)
                {
                    BsonDocument data = BsonSerializer.Deserialize<BsonDocument>(ReplaceValues(json));
                    await Insert(data);
                }
                MessageBox.Show("Done!");
            }
            else
            {
                MessageBox.Show("Error parsing record count! please ensure a valid number was entered");
            }
        }

        private async Task Insert(BsonDocument obj) =>
             await _collection.InsertOneAsync(
                obj);

        private string ReplaceValues(string t)
        {
            //TODO: Move values to a config file
            const int STRING_SIZE = 8;
            Range range = new Range(1, 1000);
            Random rnd = new Random();
            

            const string STRING_VAL = "{{string}}";
            const string INT_VAL = "{{number}}";

            
            t = t.Replace(STRING_VAL, Guid.NewGuid().ToString().Substring(STRING_SIZE), StringComparison.OrdinalIgnoreCase);
            t = t.Replace(INT_VAL, rnd.Next(range.min, range.max).ToString(), StringComparison.OrdinalIgnoreCase);

            return t.Trim();
        }
    }
    
    public struct Range
    {
        public int min;
        public int max;

        public Range(int min_val, int max_val)
        {
            min = min_val;
            max = max_val;
        }
    }
}
