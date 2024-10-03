<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Event>
 */
class EventFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => $this->faker->sentence,
            'description' => $this->faker->paragraph,
            'event_date' => $this->faker->dateTimeBetween('+1 week', '+1 month'),
            'location' => $this->faker->address,
            'price' => $this->faker->randomFloat(2, 10, 200),
            'attendee_limit' => $this->faker->numberBetween(10, 100),
            'reservation_deadline' => $this->faker->dateTimeBetween('now', '+1 week'),
            'user_id' => \App\Models\User::factory(), // Relación con el creador del evento
        ];
    }
}
