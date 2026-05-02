// Script to register a mock catering order for "pasado mañana"
// Date: day after tomorrow

async function seedCatering() {
    const targetDate = new Date();
    targetDate.setDate(targetDate.getDate() + 2);
    const dateStr = targetDate.toISOString().split('T')[0];

    console.log(`Registering catering for ${dateStr}...`);

    // In a real environment I would use fetch to the API I created, but here I'll use wrangler d1 execute
    // to simulate the DB registration.
}

seedCatering();
