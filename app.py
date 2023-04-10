import os
import json

import openai
import gradio as gr

openai.api_key = os.getenv("API_KEY")


def read_messages(prompt_name: str) -> str:
    with open(f"prompts/{prompt_name}.json") as file:
        data = json.load(file)
    return data


# PROMPT = read_prompt("CEDAE")
messages = read_messages("CEDAE")

def chatbot(input):
    if input:
        messages.append({"role": "user", "content": input})
        chat = openai.ChatCompletion.create(
            model="gpt-3.5-turbo", 
            messages=messages, 
            temperature=0, 
            max_tokens=500
        )
        reply = chat.choices[0].message.content
        messages.append({"role": "assistant", "content": reply})
        return reply

inputs = gr.inputs.Textbox(lines=7, label="Chat do usuário")
outputs = gr.outputs.Textbox(label="Resposta da Nina")

gr.Interface(fn=chatbot, inputs=inputs, outputs=outputs, title="Assistente Nina",
             description="Me pergunte coisas sobre a CEDAE",
             theme="compact").launch(share=True)