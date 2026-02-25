FROM nginx:alpine

ARG USERNAME
ENV USERNAME=${USERNAME}

CMD ["sh", "-c", "echo the user is $USERNAME"]
