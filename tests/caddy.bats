#!/usr/bin/env bats

@test "Run Test Docker Container" {
	run docker-compose -f docker-compose.travis.yml up -d
}

@test "Caddy should be version v0.8.3" {
	run docker run alpinecaddy_caddy caddy --version
	[[ "$output" =~ "0.9" ]]
}

@test "Caddy Should Be The User" {
	skip
	run docker run alpinecaddy_caddy whoami
	[[ "$output" =~ "caddy" ]]
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
	skip "Waiting on Caddy v.9 for testing ssl"
}

@test "Proxies to container 1" {
	skip
}

@test "Proxies to container 2" {
	skip
}

@test "Proxies to container 3" {
	skip
}

@test "SSL Certificates" {
	skip ""
}

@test "Force Headers" {
	skip
}
