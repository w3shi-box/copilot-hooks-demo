@echo off

if not exist logs mkdir logs

echo ===== Copilot Hook Triggered ===== >> logs\session.log
echo Time: %date% %time% >> logs\session.log
echo User: %username% >> logs\session.log
echo PWD: %cd% >> logs\session.log
echo --------------------------------- >> logs\session.log
