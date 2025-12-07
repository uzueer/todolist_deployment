# Todo List CRUD Application

A simple Node.js application with full CRUD operations using Express and Supabase.

## Features

- Create new todos
- Read all todos or a specific todo
- Update todo status (mark as completed)
- Delete todos
- Clean and responsive user interface
- RESTful API

## Tech Stack

- **Backend**: Node.js with Express
- **Database**: Supabase (PostgreSQL)
- **Frontend**: Vanilla HTML, CSS, and JavaScript

## API Endpoints

### Create Todo
```
POST /api/todos
Body: { "title": "Your todo text" }
```

### Get All Todos
```
GET /api/todos
```

### Get Single Todo
```
GET /api/todos/:id
```

### Update Todo
```
PUT /api/todos/:id
Body: { "title": "Updated text", "completed": true }
```

### Delete Todo
```
DELETE /api/todos/:id
```

## Project Structure

```
├── config/
│   └── supabase.js       # Supabase client configuration
├── public/
│   └── index.html        # Frontend interface
├── server.js             # Express server with API routes
└── package.json          # Dependencies and scripts
```

## Database Schema

The `todos` table has the following structure:

- `id` (uuid) - Primary key
- `title` (text) - Todo item title
- `completed` (boolean) - Completion status
- `created_at` (timestamptz) - Creation timestamp
- `updated_at` (timestamptz) - Last update timestamp

## Deployment Ready

This application is ready to deploy to any Node.js hosting platform that supports environment variables.
