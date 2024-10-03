<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('events', function (Blueprint $table) {
            $table->id();
            $table->string('title'); // Título del evento
            $table->text('description')->nullable(); // Descripción del evento
            $table->dateTime('event_date'); // Fecha y hora del evento
            $table->string('location'); // Ubicación del evento
            $table->decimal('price', 8, 2); // Precio del ticket
            $table->integer('attendee_limit'); // Límite de asistentes
            $table->dateTime('reservation_deadline'); // Fecha límite para reservar tickets
            $table->foreignId('user_id')->constrained()->onDelete('cascade'); // ID del usuario que creó el evento
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('events');
    }
};
