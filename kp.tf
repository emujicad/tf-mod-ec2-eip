resource "aws_key_pair" "deployer" {
  key_name_prefix = "${var.project_name}-${var.workspace}-keypair-"
  public_key      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCy+20FTknf/0eQpyOcGhepAi5X/SwxxEZzUikGUCOgfzZP77vi1cJz4o/aUd9NsZvmttUWSb1BYfmHtmyLKcBMZWNv65fPCiY/3m696uJNmMJ32bBTWeX9f0VnQSoW5CNHS2fHGwOghoffPYexMyG/EhfgY9owxtGf9HbJtH3y2QlYyPdF5nhF+76x5KAz+9ene4QDRFZhEOtD9QfgFzq3WbHZ8P53wqroaQeFCFJbBN7h4Sw4bwxgXs8+vQRAKZKGiZrfXi8QxzXKzI0owSIgqWxMR63bAiMRQ4Jpsqcp63DHiQUR4LQQvnSMk3TO25z8SA4l1l2kTfe2sOKNrm7Z emujicad@JNT111018-HP1"
}