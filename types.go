package main

import (
	"github.com/linuskendall/drone-go/drone"
)

type Params struct {
	AccessKey    string            `json:"access_key"`
	SecretKey    string            `json:"secret_key"`
	Region       string            `json:"region"`
	Family       string            `json:"family"`
	Image        string            `json:"image_name"`
	Tag          string            `json:"image_tag"`
	Service      string            `json:"service"`
	Cluster      string            `json:"cluster"`
    LogDriver    string            `json:"log_driver"`
    LogDriverOptions    drone.StringSlice `json:"log_driver_options"`
	Memory       int64             `json:"memory"`
	MemoryReservation   int64   `json:"memoryReservation"`
	Environment  drone.StringSlice `json:"environment_variables"`
	PortMappings drone.StringSlice `json:"port_mappings"`
}
