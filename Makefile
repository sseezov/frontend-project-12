build:
	rm -rf frontend/dist
	npm run build

dev:
	cd frontend && npm run dev

start: 
	make start-backend

start-backend: 
	npx start-server -s ./frontend/dist

develop:
	make start-backend & make dev