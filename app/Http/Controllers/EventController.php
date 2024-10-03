<?php
namespace App\Http\Controllers;

use App\Models\Event;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class EventController extends Controller
{
    public function createEvent(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'event_date' => 'required|date',
            'location' => 'required|string',
            'price' => 'required|numeric',
            'attendee_limit' => 'required|integer',
            'reservation_deadline' => 'required|date|before:event_date',
        ]);

        $event = Event::create([
            'title' => $request->title,
            'description' => $request->description,
            'event_date' => $request->event_date,
            'location' => $request->location,
            'price' => $request->price,
            'attendee_limit' => $request->attendee_limit,
            'reservation_deadline' => $request->reservation_deadline,
            'user_id' => Auth::id(),
        ]);

        return response()->json($event, 201);
    }

    public function listEvents()
    {
        $events = Event::where('event_date', '>', now())->get();
        return response()->json($events); 
       
    }    

    public function reserveTicket(Request $request, $eventId)
    {
        $event = Event::findOrFail($eventId);

        if ($event->reservation_deadline < now()) {
            return response()->json(['message' => 'Reservation deadline passed'], 403);
        }

        if ($event->reservations()->count() >= $event->attendee_limit) {
            return response()->json(['message' => 'Event is fully booked'], 403);
        }

        $event->reservations()->create(['user_id' => Auth::id()]);

        return response()->json(['message' => 'Ticket reserved'], 201);
    }
}
