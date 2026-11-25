# TConnect 1.0 — MVP

1. Створіть проєкт Supabase. Виконайте `supabase/schema.sql` у SQL Editor один раз.
2. Створіть бота через @BotFather (/newbot).
3. Створіть Edge Function `telegram-auth` з файлу `supabase/functions/telegram-auth/index.ts`. Вимкніть Verify JWT лише для цієї функції. Додайте секрети BOT_TOKEN та AUTH_SECRET (випадковий секрет від 32 символів). Не публікуйте їх у GitHub.
4. Вимкніть публічну email-реєстрацію в Supabase Auth. У config.js додайте Project URL та legacy anon key, не service_role.
5. GitHub Settings → Pages → Deploy from a branch → main → / (root).
6. Через /setmenubutton у BotFather додайте https://mateosh0.github.io/TConnect/.
7. Після першого входу призначте адміністратора через Supabase Table Editor (profiles.is_admin).

MVP не протестовано з живими Telegram та Supabase. Стрічка хронологічна, повідомлення без realtime, медіа публічні за URL, пошук текстовий. Ідентифікатор отримувача повідомлення має формат tg + числовий Telegram ID. Немає англійської локалізації, антиспаму, приватних профілів та push через бота. Перед публічним запуском потрібні тестування, модерація та політика приватності.
