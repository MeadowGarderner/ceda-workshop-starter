#!/usr/bin/env python3
import json, os

project_dir = os.environ.get('CLAUDE_PROJECT_DIR', os.getcwd())
planning_path = os.path.join(project_dir, 'PLANNING.md')

if os.path.exists(planning_path) and os.path.getsize(planning_path) > 0:
    with open(planning_path) as f:
        content = f.read()
    msg = (
        'PLANNING.md is gevuld. Volg de Start-logica uit CLAUDE.md: '
        'skip onboarding volledig en ga direct naar de actieve stap in Stappen (blok 4).\n\n'
        f'Inhoud PLANNING.md:\n{content}'
    )
else:
    msg = (
        'PLANNING.md ontbreekt of is leeg. Volg de Start-logica uit CLAUDE.md: '
        'doorloop de Onboarding (blok 1-3) en maak daarna PLANNING.md aan met stap 1 als actief.'
    )

print(json.dumps({
    'hookSpecificOutput': {
        'hookEventName': 'SessionStart',
        'additionalContext': msg
    }
}))
