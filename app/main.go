package main

import (
	"log"

	"github.com/gofiber/fiber/v2"
)

func main() {
	app := fiber.New()

	app.Get("/version", func(c *fiber.Ctx) error {
		return c.SendString("v3")
	})

	app.Get("/healthcheck", func(c *fiber.Ctx) error {
		return c.SendString("ok")
	})

	if err := app.Listen(":8080"); err != nil {
		log.Fatal(err)
	}
}