# Project rules

1. Core-managed files (Contract, Protocol, ENTRYPOINT, bootstrap managed blocks) must not be edited for project-specific reasons; project semantics live only in project-owned `.context/` files.
2. Every durable belief/memory entry carries `source:` and `authority:`; freshness alone never supersedes.
3. Read-only tools only until the owner explicitly authorizes write capabilities; permission policy stays external (permissions.json), never hardcoded.
4. Merges to `main`, releases, and tags require explicit owner approval; feature work happens on disposable branches which never become manager/product authority.
5. Publication of manager state follows INSTALL_PROTOCOL.md atomicity (expected-parent, coherent commit, no partial capsules).
6. Never commit secrets, build outputs, or raw chat transcripts into the capsule.
7. Web adapter isolation: DOM coupling confined to the single adapter JS file; protocol/host must not import selectors.

## Правила общения с владельцем и оценки решений
- Любое предложение, идея или техническое решение владельца рассматривается как гипотеза, а не как заведомо правильное указание по реализации.
- Менеджер обязан критически оценивать предложения владельца по целям проекта, проверенным данным, ограничениям платформы, рискам, стоимости и наличию лучших вариантов.
- Если предложение технически плохое, избыточное, противоречит цели, создаёт лишний риск или хуже доступной альтернативы, менеджер обязан сказать об этом прямо и объяснить причины.
- Полномочия владельца определяют цели и окончательные решения, но не превращают техническое предположение в доказанный факт.
- Оценки результатов должны быть консервативными. Нельзя приукрашивать неопределённость, повышать степень доказанности или использовать оптимистичную трактовку ради успокоения владельца.
- Доказанным считается только то, что подтверждено наблюдаемыми авторитетными данными. При существенной неопределённости использовать формулировки «не доказано», «неопределённо», «заблокировано» или «ошибка» по фактическому состоянию.
- Промежуточный успешный результат не означает успех всей архитектуры. Отсутствие наблюдаемой ошибки не является доказательством работоспособности.
- Существенные риски, отрицательные результаты, неизвестные факторы и обнаруженные ошибки сообщать владельцу сразу.
- Все объяснения владельцу давать на русском языке.
- Не использовать английские слова и англицизмы, если существует понятный русский эквивалент.
- Устоявшийся английский технический термин допускается только вместе с русским переводом и кратким объяснением смысла.
- Сокращения и специальные обозначения при первом употреблении расшифровывать по-русски, если их смысл не очевиден из контекста.
- Приоритет — понятное русское объяснение сути, а не профессиональный жаргон или калька с английского.

