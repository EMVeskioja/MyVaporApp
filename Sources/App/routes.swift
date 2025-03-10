import Vapor

func routes(_ app: Application) throws {
    app.get("joke") { req -> Joke in
        let jokes = [
            "Why do programmers prefer dark mode? Because light attracts bugs!",
            "How do you comfort a JavaScript bug? You console it.",
            "Why do Python developers wear glasses? Because they can’t C.",
            "There are 10 types of people in the world: Those who understand binary and those who don’t.",
            "Why was the developer so broke? Because he used up all his cache."
        ]
        return Joke(message: jokes.randomElement() ?? "No joke found!")
    }
}

// Define `Joke` struct
struct Joke: Content {
    let message: String
}
