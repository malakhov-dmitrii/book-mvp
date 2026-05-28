# Что в тебе твоё? — сайт

Static Astro сайт для короткой версии книги (MVP).

## Локально

```bash
npm install
npm run dev    # localhost:4321
npm run build  # build → dist/
npm run preview
```

## Контент

MVP markdown лежит в `src/content/kniga-mvp-v0.1.md`. Источник — `../notes/build/kniga-mvp-v0.1.md`.

Синк:

```bash
./scripts/sync-content.sh
```

## Стэк

- Astro 5 (static output)
- marked для рендера markdown
- JetBrains Mono (Google Fonts)

## Дизайн

Самиздат-эстетика: моноспейс, белый фон, красный (#c1272d) акцент, строгая сетка, ALL CAPS заголовки. Артефакты дизайн-сессии в `~/.gstack/projects/notes/designs/reader-page-20260527/`.

## Деплой

Coolify, домен `thewhychain.apps.mlh.one`.
