# ClassHero — Rastreador de Issues

Bem-vindo(a)! Este repositório existe **apenas** para organizar **bugs**, **sugestões** e **dúvidas** sobre o ClassHero.  
> **Não há código aqui.** Todo o trabalho acontece via **Issues**.

---

## 🎯 Objetivo
Centralizar reports e pedidos de melhoria, mantendo um fluxo claro de triagem, priorização e acompanhamento — sem expor o código-fonte do projeto.

---

## ✅ Antes de abrir uma Issue (checklist rápido)
- [ ] Procure por uma issue semelhante (use a busca).
- [ ] Reproduza o problema 1–2 vezes para confirmar.
- [ ] Junte evidências (prints, vídeo curto, logs).
- [ ] Remova/mascare dados sensíveis (e-mail pessoal, tokens, chaves, etc.).

> Dica: títulos objetivos ajudam muito. Ex.: **"Login por e-mail — código não chega no mobile (iOS 17)"**.

---

## 🐞 Reportar um Bug
Preencha os campos a seguir (ou use o formulário, se estiver habilitado):

**Título**  
- Resuma o problema: `Área — o que deu errado — onde/ambiente`

**Passos para reproduzir**  
1. Acesse …  
2. Clique em …  
3. Observe …

**Comportamento esperado**  
Descreva o que você imaginava que aconteceria.

**Comportamento atual**  
Descreva o que realmente aconteceu (mensagens de erro, telas, etc.).

**Contexto (para facilitar a investigação)**  
- Curso/Disciplina/Turma: `ex.: POO, 2025-2`  
- Tema/Material (se houver): `ex.: Tema 3, Material ABC`  
- Papel do usuário: `estudante / professor / admin`  
- Autenticação: `login com código / senha`  
- Dependências relevantes: `quiz / assignments / rewards / timeline`

**Ambiente**  
- Dispositivo/SO/Navegador ou App: `ex.: iPhone 13 iOS 17.5 / Chrome 126 no macOS 14`  
- Rede: `campus / casa / 4G` (se relevante)

**Evidências**  
- Prints, vídeo curto, trecho de log (sem dados sensíveis)

**Severidade (opcional)**  
- `bloqueante` (impede uso), `alta`, `média`, `baixa`

---

## ✨ Sugerir melhoria/feature
- **Resumo da ideia**: o que você quer resolver?  
- **Problema/dor**: por que isso faz falta?  
- **Proposta**: como imagina funcionando (fluxo/telas)?  
- **Área**: `frontend / backend / nestjs / supabase / quiz / assignments / timeline / rewards`  
- **Prioridade sugerida**: `P0 / P1 / P2` (opcional)

---

## 🏷️ Padrão de Labels
- **type**: `type:bug`, `type:enhancement`, `type:question`  
- **prio**: `prio:P0` (urgente), `prio:P1`, `prio:P2`  
- **area**: `area:frontend`, `area:backend`, `area:nestjs`, `area:supabase`, `area:quiz`, `area:assignments`, `area:timeline`, `area:rewards`  
- **status**: `status:needs-info`, `status:accepted`, `status:in-progress`, `status:blocked`, `status:done`

> As labels podem ser ajustadas durante a triagem.

---

## 🔄 Fluxo de Triagem (como cuidamos das issues)
1. **Chegada** → `status:needs-info`  
2. **Revisão** → pedimos detalhes (se faltar) e rotulamos `type`, `area`, `prio`  
3. **Aceita** → `status:accepted` (entrou no backlog)  
4. **Em execução** → `status:in-progress`  
5. **Bloqueada** → `status:blocked` (depende de algo)  
6. **Concluída** → `status:done` (corrigido/entregue)

> Quando a correção for incorporada ao repositório de código, a issue será fechada e informaremos a versão/ambiente em que estará disponível.

---

## 🔗 Referências cruzadas (automatiza fechamento)
Commits/PRs no repositório de código podem fechar a issue automaticamente ao usar:  
