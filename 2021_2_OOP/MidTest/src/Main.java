// 201710939 엄태양 Memoria
public class Main {
    public static void main(String[] args) {
        // Partial excerpts from American Actor Robert Deniro's speech to NYU's TISCH School of the Arts, 2015
        String[] robertDeniroSpeech = { "The", "good", "news", "is", "that",
                "that’s", "not", "a", "bad", "place", "to", "start.",
                "Now", "that", "you’ve", "made", "your", "choice,",
                "or", "rather", "succumbed", "to", "it,", "your",
                "path", "is", "clear.", "Not", "easy", "but", "clear.",
                "You", "have", "to", "keep", "working,", "it’s",
                "that", "simple.", "You", "got", "through", "TISCH,",
                "that’s", "a", "big", "deal,", "or", "to", "put", "it",
                "another", "way,", "you", "got", "through", "TISCH,",
                "big", "deal.", "Well", "it’s", "a", "start.",
                "On", "this", "day", "of", "triumphantly", "graduating",
                "a", "new", "door", "is", "opening", "for", "you.",
                "A", "door", "to", "a", "lifetime", "of", "rejection.",
                "It’s", "inevitable.", "It’s", "what", "graduates",
                "call", "the", "the", "real", "world.", "You’ll",
                "experience", "it", "auditioning", "for", "a",
                "part", "or", "a", "place", "in", "a", "company.",
                "It’ll", "happen", "to", "you", "when", "you’re",
                "looking", "for", "backers", "for", "a", "project.",
                "You’ll", "feel", "it", "when", "door", "close",
                "on", "you", "when", "you’re", "trying", "to",
                "get", "attention", "for", "something", "you", "have",
                "written,", "and", "when", "you’re", "looking",
                "for", "a", "directing", "or", "choreographing",
                "job." };

        Speech speech = new Speech(robertDeniroSpeech);
        SpeechHistogram histogram = new SpeechHistogram(speech);
        histogram.calculateHistogram();
        histogram.print();
    }
}
