build:
	npm run build

dev:
	cd frontend && npm run dev

start: 
	make start-backend

start-frontend:
	make -C frontend start

start-backend: 
	npx start-server -s ./frontend/dist

develop:
	make start-backend & make start-frontend