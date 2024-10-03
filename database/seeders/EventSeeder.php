<?php
// database/seeders/EventSeeder.php
namespace Database\Seeders;

use App\Models\Event;
use Illuminate\Database\Seeder;

class EventSeeder extends Seeder
{
    public function run()
    {
        Event::factory(20)->create(); // Crea 20 eventos
    }
}
