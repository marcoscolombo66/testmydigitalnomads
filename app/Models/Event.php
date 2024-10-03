<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;



class Event extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'description', 'event_date', 'location', 'price', 'attendee_limit', 'reservation_deadline', 'user_id'];

    public function creator()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function reservations()
    {
        return $this->hasMany(Reservation::class);
    }
}
