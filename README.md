
# My digital nomads
## Event reservation system:

Application for an online event reservation system.
Users can create new events, and other users can book tickets for those events.
Each event has a maximum number of attendees and a deadline to reserve tickets.
# API Reference

### Register

```http
  POST /api/register
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `name` | `string` | **Required**.|
| `email` | `string` | **Required - valid email**.|
| `password` | `string` | **Required - min 6 chars**.|
| `role` | `string` | **Required**. - Could be admin or user|


### Login => Returns the access token
```http
  POST /api/login
```
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `email` | `string` | **Required - valid email**.|
| `password` | `string` | **Required - min 6 chars**.|

### Create event => Only admin can create.

```http
  POST /api/events
```

| Parameter            | Type     | Description                               |
| :------------------- | :------- | :---------------------------------------- |
| `title`              | `string` | **Required - title of the event.**        |
| `description`        | `string` | **Required - description of the event.**  |
| `event_date`         | `date`   | **Required - date of the event (YYYY-MM-DD).** |
| `location`           | `string` | **Required - location of the event.**     |
| `price`             | `float`  | **Required - price for the event.**       |
| `attendee_limit`     | `int`    | **Required - maximum number of attendees.** |
| `reservation_deadline` | `date` | **Required - reservation deadline (YYYY-MM-DD).** |
| `Auth type` | `Bearer token` | **Required - Token.** |

### Reserve Ticket
#### Send {id} url parameter
```http
  POST /api/events/{id}/reserve
```
| Parameter            | Type     | Description                               |
| :------------------- | :------- | :---------------------------------------- |
| `Auth type`              | `Bearer token` | **Required - Token.** 

### Get all the events - No auth required.

```http
  GET /api/events
```

