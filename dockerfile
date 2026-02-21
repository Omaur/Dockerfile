FROM nginx:alpine

ARG USERNAME
ENV USERNAME=${USERNAME}

CMD ["sh", "-c", "the user is $USERNAME"]
