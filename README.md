# TinyTalks - Nepali Language Learning App for Children
The TinyTalks project presents a comprehensive mobile application designed to facilitate Nepali language learning for children aged 4 to 8. This application addresses the challenges of language preservation among Nepali communities, particularly those residing abroad, by offering engaging, interactive, and adaptive learning experiences. Built with Flutter for the user interface, Python and Django for the backend, and MySQL for database management, this application integrates advanced machine learning techniques, including a fine-tuned Wav2Vec2 model for automatic speech recognition (ASR). Data collection involved sourcing audio samples from diverse sources, including GitHub repositories, personal contributions from friends and family, and students from Budhanilkantha Kids Montessori Academy.

## Nepali Automatic Speech Recognition (ASR) Model
### Overview:
- **Base Model:** [facebook/wav2vec2-base-960h](https://huggingface.co/facebook/wav2vec2-base-960h)  
- **Language:** Nepali  

## step to run this project
1. create config.dart file in lib folder of frontend
2. create config.json in backend-> LangProject folder
3. create .env file in backend-> LangProject 
4. create virtual environment
5. run: pip install -r requirements.txt
6. make migration-run this command: python manage.py makemigrations LangProject and python manage.py migrate
