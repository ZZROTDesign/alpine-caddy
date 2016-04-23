#!/usr/bin/env bats

@test "Run Test Docker Container" {
	run docker-compose -f docker-compose.travis.yml up -d
}

@test "Caddy should be version v0.8.2"{
	run docker run caddy caddy --version
	[[ "$output" =~ "v0.8.2"]]
}

@test "Build Standard Container" {
	skip
}

@test "It should respond with HTTP 200 Okay" {
	run curl --write-out "%{http_code}\n" --silent --output /dev/null 127.0.0.1
	[[ "$output" =~ "200" ]]
}

@test "It should show the hello world page" {
	run curl 127.0.0.1
	[[ "$output" =~ "Hello World!" ]]
}

@test "Build Proxy Container" {
	skip
}

@test "SSL Certificates" {
	skip
}

@test "Force Headers" {
	skip
}
