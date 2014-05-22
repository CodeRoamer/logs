package main

import glog "github.com/gogits/logs"

func main() {
	log := glog.NewLogger(0)
	log.SetLogger("file", `{"filename":"test.log"}`)
	log.Info("who")
	log.Info("who")
	log.Info("who")
	log.Info("who")
	log.Critical("shit", 123)
	log.Info("who")
	log.Close()
}
