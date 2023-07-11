class QuestionData {
  List<Map<String, Object>> get questions => const [
    {
      "questionText": "How are you?",
      "answers": [
        {"text": "Zuper", "score": 10},
        {"text": "So-so", "score": 5}
      ],
    },
    {
      "questionText": "Have you visited Area 51 before?",
      "answers": [
        {"text": "Yes", "score": 10},
        {"text": "No", "score": 5},
      ]
    },
      {
      "questionText": "Do you want coffee?",
      "answers": [
        {"text": "Bitte", "score": 10},
        {"text": "Nah", "score": 5},
        {"text": "Tea", "score": -5},
      ]
    },
    {
      "questionText": "Which Painting is G's fave?",
      "answers": [
        {"text": "Stormy looking volcano one", "score": 5},
        {"text": "Girl Turning Away", "score": 5},
        {"text": "Drive home moody in hallway", "score": 10},
        {"text": "T's Creative Cùinne Artwork", "score": 55},
      ]
    },
    {
      "questionText": "Which side of the couch belongs to G",
      "answers": [
        {"text": "Side closest to balcony", "score": 10},
        {"text": "Side beside wall", "score": -10},
      ]
    },
    {
      "questionText":
          "Whats the name of G's frequent ZaraHome giant candle scent?",
      "answers": [
        {"text": "Dark Vanilla", "score": -5},
        {"text": "Black Vanilla", "score": 10},
        {"text": "Dark Romance", "score": -5}
      ]
    },
  ];
}