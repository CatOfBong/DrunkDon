import json

# Чтение и анализ mod-list.json
with open('mod-list.json', 'r', encoding='utf-8') as f:
    mod_list = json.load(f)

# Собираем включенные моды, исключая базовые и сам мод
enabled_mods = [
    mod['name'] for mod in mod_list['mods'] 
    if mod['enabled'] and mod['name'] not in ['base', 'DrunkDon', 'autobuild']
]

# Формируем список зависимостей
dependencies = ["base>=1.1"]
dependencies.extend(sorted(enabled_mods, key=lambda x: x.lower()))  # Сортировка по алфавиту
dependencies.append("autobuild")

# Создаем структуру для info.json
info_data = {
    "name": "DrunkDon",
    "version": "1.0.2",
    "title": "Пьяный Дон",
    "author": "ТО \"Артхаус\"",
    "homepage": "https://discord.gg/fcwYwNsRRA",
    "description": "No Penis - No Life!",
    "factorio_version": "2.0",
    "dependencies": dependencies
}

# Записываем результат в info.json
with open('info.json', 'w', encoding='utf-8') as f:
    json.dump(info_data, f, ensure_ascii=False, indent=4)

print("info.json успешно обновлен!")