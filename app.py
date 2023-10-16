import streamlit as st
from transformers import pipeline

# Initialize the pipeline with your smart contract model
contract_generation = pipeline("text-generation", model="andstor/gpt-j-6B-smart-contract")

# Streamlit UI
st.title("Smart Contract Generator")

# User input
user_input = st.text_area("Enter a prompt to generate a smart contract:")

# Generate smart contract text
if st.button("Generate Contract"):
    if user_input:
        # Generate the contract text based on the user's input
        generated_contract = contract_generation(user_input, max_length=200)
        st.write("Generated Smart Contract:")
        st.write(generated_contract[0]['generated_text'])
    else:
        st.warning("Please enter a prompt to generate a smart contract.")

st.write("Sample Prompt: 'Create a smart contract for a real estate transaction.'")
