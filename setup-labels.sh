#!/usr/bin/env bash
set -euo pipefail
REPO="${REPO:-evertonfoz/classhero-tracker}"
mapfile -t LABELS <<'EOF'
type:bug|d73a4a|Reporta um defeito
type:enhancement|a2eeef|Pedido de melhoria/feature
type:question|d876e3|Dúvida geral
prio:P0|b60205|Prioridade crítica/urgente
prio:P1|d93f0b|Prioridade alta
prio:P2|fbca04|Prioridade média/baixa
area:frontend|1d76db|Interface/UX/SPA
area:backend|0e8a16|APIs/serviços
area:nestjs|2b8a3e|Código específico NestJS
area:supabase|00c4b3|Banco/Storage/Auth Supabase
area:quiz|5319e7|Funcionalidades de quiz
area:assignments|0052cc|Trabalhos/equipes
area:timeline|6f42c1|Linha do tempo/atividades
area:rewards|cfd3d7|XP/badges/recompensas
status:needs-info|ededed|Faltam detalhes do autor
status:accepted|c2e0c6|Aceita para backlog
status:in-progress|1d76db|Em execução
status:blocked|b60205|Bloqueada por dependência
status:done|2cbe4e|Concluída/entregue
EOF
exists() { gh label list -R "$REPO" --json name --jq '.[].name' | grep -Fxq "$1"; }
for entry in "${LABELS[@]}"; do
  IFS="|" read -r NAME COLOR DESC <<<"$entry"
  if exists "$NAME"; then
    gh label edit "$NAME" -R "$REPO" -c "$COLOR" -d "$DESC" >/dev/null && echo "✓ edit: $NAME"
  else
    gh label create "$NAME" -R "$REPO" -c "$COLOR" -d "$DESC" >/dev/null && echo "＋ create: $NAME"
  fi
done
