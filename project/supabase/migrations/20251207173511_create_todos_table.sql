/*
  # Create todos table

  1. New Tables
    - `todos`
      - `id` (uuid, primary key) - Unique identifier for each todo
      - `title` (text) - The todo item title
      - `completed` (boolean) - Whether the todo is completed or not
      - `created_at` (timestamptz) - When the todo was created
      - `updated_at` (timestamptz) - When the todo was last updated
  
  2. Security
    - Enable RLS on `todos` table
    - Add policy for anyone to read todos (public access for demo)
    - Add policy for anyone to insert todos
    - Add policy for anyone to update todos
    - Add policy for anyone to delete todos
  
  Note: This is a simple demo app with public access. In production,
  you would restrict these policies to authenticated users only.
*/

CREATE TABLE IF NOT EXISTS todos (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  completed boolean DEFAULT false,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

ALTER TABLE todos ENABLE ROW LEVEL SECURITY;

-- Allow public read access for demo purposes
CREATE POLICY "Anyone can read todos"
  ON todos
  FOR SELECT
  TO anon, authenticated
  USING (true);

-- Allow public insert for demo purposes
CREATE POLICY "Anyone can insert todos"
  ON todos
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);

-- Allow public update for demo purposes
CREATE POLICY "Anyone can update todos"
  ON todos
  FOR UPDATE
  TO anon, authenticated
  USING (true)
  WITH CHECK (true);

-- Allow public delete for demo purposes
CREATE POLICY "Anyone can delete todos"
  ON todos
  FOR DELETE
  TO anon, authenticated
  USING (true);