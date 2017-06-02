FROM kaixhin/cuda-torch
RUN luarocks install nngraph
RUN luarocks install optim
RUN pip install -U flask-cors
RUN cd / && git clone https://github.com/karpathy/char-rnn.git
ADD server.py /char-rnn/server.py
ADD templates /char-rnn/templates
WORKDIR /char-rnn
CMD ["python", "server.py"]