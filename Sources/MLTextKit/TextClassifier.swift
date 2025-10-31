import NaturalLanguage

public struct SentimentResult {
    public let sentiment: Sentiment
    public let confidence: Double
    
    public enum Sentiment: String {
        case positive, negative, neutral
    }
}

public actor TextClassifier {
    private let tagger = NLTagger(tagSchemes: [.sentimentScore])
    
    public init() {}
    
    public func analyzeSentiment(_ text: String) -> SentimentResult {
        tagger.string = text
        let (sentiment, _) = tagger.tag(at: text.startIndex, unit: .paragraph, scheme: .sentimentScore)
        
        guard let score = sentiment?.rawValue, let value = Double(score) else {
            return SentimentResult(sentiment: .neutral, confidence: 0.5)
        }
        
        let sentimentType: SentimentResult.Sentiment = value > 0.1 ? .positive : value < -0.1 ? .negative : .neutral
        return SentimentResult(sentiment: sentimentType, confidence: abs(value))
    }
    
    public func detectLanguage(_ text: String) -> String? {
        let recognizer = NLLanguageRecognizer()
        recognizer.processString(text)
        return recognizer.dominantLanguage?.rawValue
    }
}
