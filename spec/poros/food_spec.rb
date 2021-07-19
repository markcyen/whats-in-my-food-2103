require 'rails_helper'

RSpec.describe 'Food Poros' do
  describe 'Food data' do
    it 'abstracts and encapsulates food data taht can be read' do
      sweet_potato = {
          "fdcId": 535125,
          "description": "SWEET POTATOES", # get this
          "lowercaseDescription": "sweet potatoes",
          "dataType": "Branded",
          "gtinUpc": "492111402857", # get this
          "publishedDate": "2019-04-01",
          "brandOwner": "ARCHER FARMS", # get this
          "ingredients": "SWEET POTATOES.", # get this
          "marketCountry": "United States",
          "foodCategory": "Frozen Prepared Sides",
          "allHighlightFields": "<b>Ingredients</b>: <em>SWEET</em> <em>POTATOES</em>.",
          "score": 939.0768,
          "foodNutrients": [
              {
                  "nutrientId": 1004,
                  "nutrientName": "Total lipid (fat)",
                  "nutrientNumber": "204",
                  "unitName": "G",
                  "derivationCode": "LCCD",
                  "derivationDescription": "Calculated from a daily value percentage per serving size measure",
                  "value": 0.0
              },
              {
                  "nutrientId": 1087,
                  "nutrientName": "Calcium, Ca",
                  "nutrientNumber": "301",
                  "unitName": "MG",
                  "derivationCode": "LCCD",
                  "derivationDescription": "Calculated from a daily value percentage per serving size measure",
                  "value": 36.0
              },
              {
                  "nutrientId": 1089,
                  "nutrientName": "Iron, Fe",
                  "nutrientNumber": "303",
                  "unitName": "MG",
                  "derivationCode": "LCCD",
                  "derivationDescription": "Calculated from a daily value percentage per serving size measure",
                  "value": 0.65
              },
              {
                  "nutrientId": 1104,
                  "nutrientName": "Vitamin A, IU",
                  "nutrientNumber": "318",
                  "unitName": "IU",
                  "derivationCode": "LCCD",
                  "derivationDescription": "Calculated from a daily value percentage per serving size measure",
                  "value": 14100.0
              },
              {
                  "nutrientId": 1162,
                  "nutrientName": "Vitamin C, total ascorbic acid",
                  "nutrientNumber": "401",
                  "unitName": "MG",
                  "derivationCode": "LCCD",
                  "derivationDescription": "Calculated from a daily value percentage per serving size measure",
                  "value": 2.2
              },
              {
                  "nutrientId": 1253,
                  "nutrientName": "Cholesterol",
                  "nutrientNumber": "601",
                  "unitName": "MG",
                  "derivationCode": "LCCD",
                  "derivationDescription": "Calculated from a daily value percentage per serving size measure",
                  "value": 0.0
              },
              {
                  "nutrientId": 1258,
                  "nutrientName": "Fatty acids, total saturated",
                  "nutrientNumber": "606",
                  "unitName": "G",
                  "derivationCode": "LCCD",
                  "derivationDescription": "Calculated from a daily value percentage per serving size measure",
                  "value": 0.0
              },
              {
                  "nutrientId": 1003,
                  "nutrientName": "Protein",
                  "nutrientNumber": "203",
                  "unitName": "G",
                  "derivationCode": "LCCS",
                  "derivationDescription": "Calculated from value per serving size measure",
                  "value": 1.82
              },
              {
                  "nutrientId": 1005,
                  "nutrientName": "Carbohydrate, by difference",
                  "nutrientNumber": "205",
                  "unitName": "G",
                  "derivationCode": "LCCS",
                  "derivationDescription": "Calculated from value per serving size measure",
                  "value": 20.0
              },
              {
                  "nutrientId": 1008,
                  "nutrientName": "Energy",
                  "nutrientNumber": "208",
                  "unitName": "KCAL",
                  "derivationCode": "LCCS",
                  "derivationDescription": "Calculated from value per serving size measure",
                  "value": 82.0
              },
              {
                  "nutrientId": 2000,
                  "nutrientName": "Sugars, total including NLEA",
                  "nutrientNumber": "269",
                  "unitName": "G",
                  "derivationCode": "LCCS",
                  "derivationDescription": "Calculated from value per serving size measure",
                  "value": 4.55
              },
              {
                  "nutrientId": 1079,
                  "nutrientName": "Fiber, total dietary",
                  "nutrientNumber": "291",
                  "unitName": "G",
                  "derivationCode": "LCCS",
                  "derivationDescription": "Calculated from value per serving size measure",
                  "value": 2.7
              },
              {
                  "nutrientId": 1093,
                  "nutrientName": "Sodium, Na",
                  "nutrientNumber": "307",
                  "unitName": "MG",
                  "derivationCode": "LCCS",
                  "derivationDescription": "Calculated from value per serving size measure",
                  "value": 55.0
              },
              {
                  "nutrientId": 1257,
                  "nutrientName": "Fatty acids, total trans",
                  "nutrientNumber": "605",
                  "unitName": "G",
                  "derivationCode": "LCCS",
                  "derivationDescription": "Calculated from value per serving size measure",
                  "value": 0.0
              }
          ]
      }

      sweet_potato_data = Food.new(sweet_potato)

      expect(sweet_potato_data.gtinUpc).to eq("492111402857")
      expect(sweet_potato_data.description).to eq("SWEET POTATOES")
      expect(sweet_potato_data.brandOwner).to eq("ARCHER FARMS")
      expect(sweet_potato_data.ingredients).to eq("SWEET POTATOES.")
    end
  end
end
