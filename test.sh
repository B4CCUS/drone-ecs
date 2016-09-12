docker run -i registry.b4cc.com:5000/plugins/drone-ecs <<EOF
{
    "repo": {
        "clone_url": "git://github.com/drone/drone",
        "owner": "drone",
        "name": "drone",
        "full_name": "drone/drone"
    },
    "system": {
        "link_url": "https://beta.drone.io"
    },
    "build": {
        "number": 22,
        "status": "success",
        "started_at": 1421029603,
        "finished_at": 1421029813,
        "message": "Update the Readme",
        "author": "johnsmith",
        "author_email": "john.smith@gmail.com",
        "event": "push",
        "branch": "master",
        "commit": "436b7a6e2abaddfd35740527353e78a227ddcb2c",
        "ref": "refs/heads/master"
    },
    "workspace": {
        "root": "/drone/src",
        "path": "/drone/src/github.com/drone/drone"
    },
    "vargs": {
        "access_key": "970d28f4dd477bc184fbd10b376de753",
        "secret_key": "9c5785d3ece6a9cdefa42eb99b58986f9095ff1c",
        "region": "us-east-1",
        "family": "my-ecs-task",
        "image_name": "namespace/repo",
        "image_tag": "latest",
        "service": "my-ecs-service",
        "environment_variables": [
            "DATABASE_URI=$$MY_DATABASE_URI"
        ],
        "port_mappings": [
          "80 9000"
        ],
        "memory": 128,
		"log_driver": "awslogs",
		"log_driver_options": [
		 	"awslogs_region=test"
		]
    }
}
EOF
