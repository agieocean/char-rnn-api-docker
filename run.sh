nvidia-docker build -t char-rnn-api .
nvidia-docker run -v /media/share/char-rnn-api/cv:/char-rnn/cv -p 8080:8080 -d char-rnn-api