import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { results: tasks } = await DB.prepare("SELECT * FROM cleaning_tasks ORDER BY area ASC").all();
    const { results: logs } = await DB.prepare(`
      SELECT cl.*, ct.name as task_name, emp.name as employee_name
      FROM cleaning_logs cl
      JOIN cleaning_tasks ct ON cl.task_id = ct.id
      JOIN employees emp ON cl.employee_id = emp.id
      WHERE cl.timestamp >= date('now')
    `).all();

    return NextResponse.json({ tasks, logsToday: logs });
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { task_id, employee_id } = await req.json();
    const result = await DB.prepare(`
      INSERT INTO cleaning_logs (task_id, employee_id) 
      VALUES (?, ?) RETURNING *
    `).bind(task_id, employee_id).first();
    return NextResponse.json(result);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
