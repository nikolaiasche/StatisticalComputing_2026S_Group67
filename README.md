# StatisticalComputing_2026S_Group67
Git repository für Assignments 1 bis 4. 

Verwendet wird:
- R
- R-Markdown
- tidyverse
- ggplo2
- shiny
- Latex

# Gruppe 67:
- Crasnianec Oliver
- Kovsca Lorenz
- Asche Nikolai

# Git Workflow:
1. Subtasks werden aufgeteilt
2. Nikolai erstellt branch für neues Assignment
3. Andere Gruppenmitglieder erhalten kurze Info
4. Wechseln auf neuen branch
5. Auf dem Branch arbeiten
6. Änderungen commiten
7. Commits auf branch pushen
8. Nikolai kontrolliert die Änderungen
9. Nikolai merged die Änderungen des branch in die main

# Git Regeln:
1. NIEMALS auf die main pushen oder auf der main arbeiten!
2. NIEMALS auf die main pushen oder auf der main arbeiten!
3. NIEMALS auf die main pushen oder auf der main arbeiten!
4. IMMER auf dem aktuellen Assignment-Branch arbeiten z.B. assignment1
5. Vor dem Arbeiten immer zuerst:
   - git checkout [BRANCH_NAME]
   - git pull origin [BRANCH_NAME]
7. Nach Änderungen:
   - git add.
   - git commit -m "[Kurze Beschreibung der Änderungen]"
   - git push origin [BRANCH_NAME]
8. Nicht gleichzeitig denselben Abschnitt derselben .Rmd bearbeiten!
9. Keine Panik falls etwas nicht funktioniert oder ihr euer lokales Git zerstört habt:
   - Bescheid geben und bei Nikolai nachfragen was zu tun ist
   - In solchen Fällen bitte, bitte nicht irgendwelche von LLM erstellte git commands ausführen
   - Git ist sehr mächtig und es gibt viele commands die auf den ersten Blick ähnliche Sachen machen, aber im Hintergrund die Branchstruktur verändern können ohne dass ihr es mitkriegt.
10. Bitte nicht die Ordnerstruktur oder etwas an .gitignore oder renv.lock ändern

# Git commands Reihenfolge bei neuem Assignment:
1. Neues Assignment starten:
   - git fetch origin
   - git checkout [BRANCH_NAME]
   - git pull origin [BRANCH_NAME]
2. Dann arbeiten
3. Änderungen committen:
    - git add.
    - git commit -m "[Kurze Beschreibung der Änderungen]"
    - git push origin [BRANCH_NAME]
4. Zurücklehnen und die Vorzüge von Git genießen :)

Auf eine gute Zusammenarbeit!
