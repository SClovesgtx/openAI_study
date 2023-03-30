import os

import openai

openai.api_key = os.getenv("API_KEY")

# audio_name = "sotaque-cloves"
audio_name = "colono-alemão"
# audio_name = "baiano"
# audio_name = "mineiro"

prompt = "A transcrição são audio de pessoas que estão reportando um vazamento de água de uma adutora da empresa CEDAE."

audio_file = open(f"audios/{audio_name}.mp3", "rb")

transcript = openai.Audio.transcribe(model="whisper-1", file=audio_file, prompt=prompt)

print(transcript)

audio_file.close()

with open(f"transcriptios/{audio_name}.txt", "w") as f:
    f.write(transcript.get("text", "null"))