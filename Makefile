init:
	podman machine init && podman machine start
up:
	podman compose up
down:
	podman compose down
