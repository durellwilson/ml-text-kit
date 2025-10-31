# 📝 ML Text Kit

Natural language processing for iOS apps

## Features

- 😊 Sentiment analysis
- 🌍 Language detection
- 🎯 Text classification
- ⚡ Actor-based concurrency

## Usage

```swift
import MLTextKit

let classifier = TextClassifier()

// Sentiment analysis
let result = await classifier.analyzeSentiment("I love Detroit!")
print(result.sentiment) // .positive
print(result.confidence) // 0.85

// Language detection
let lang = await classifier.detectLanguage("Bonjour")
print(lang) // "fr"
```

Perfect for Detroit NLP developers! 🧠
