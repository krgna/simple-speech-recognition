import speech_recognition as sr

# asking for wav file's path.
path = input("Enter the path of the audio file: ")

# recognizer object
r = sr.Recognizer()

# open the file
with sr.AudioFile(path) as source:
    audio = r.record(source)
    # recognize speech using Google Speech Recognition
    try:
        print("The audio file contains: " + r.recognize_google(audio))
    except sr.UnknownValueError:
        print("Google Speech Recognition could not understand audio")
    except sr.RequestError as e:
        print("Could not request results from Google Speech Recognition service; {0}".format(e))
        
