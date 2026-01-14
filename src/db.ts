import { Pool } from 'pg';

const pool = new Pool({
	host: 'db', // Docker service name
	port: 5432,
	user: process.env.POSTGRES_USER,
	password: process.env.POSTGRES_PASSWORD,
	database: process.env.POSTGRES_DB,
});

export const query = (text: string, params?: any[]) => pool.query(text, params);