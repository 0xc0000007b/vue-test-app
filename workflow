# название
name: Project test & build

# целевые события для запуска
# в данном случае это push и pull_request, в ветку master
on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

# выполняемые действия
jobs:
  build-and-deploy:
    runs-on: ubuntu-latest
    
    # запускаются по шагам
    # name - название шага
    # в github actions будет выводиться название шага, и процессы
    steps:
      - name: Checkout 🛎️
        uses: actions/checkout@v2.3.1
        with:
          persist-credentials: false

      - name: Install 🔧
        run: npm install

      - name: Run Test 🔨
        run: npm run test

      - name: Build 👷
        run: npm run build

      - name: Deploy 🚀
        uses: JamesIves/github-pages-deploy-action@3.7.1
        with:
          # в значение GITHUB_TOKEN помещается ссылка на ваш секрет в репозитории
          # в данном случае его название KEY
          GITHUB_TOKEN: ${{ secrets.KEY }}
          BRANCH: gh-pages
          FOLDER: public
          CLEAN: true
