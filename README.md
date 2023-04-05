## API de Filmes
### Descrição
Esta é uma API que segue o padrão REST e foi desenvolvida utilizando Ruby on Rails e PostgreSQL. A API possui dois endpoints principais: ```/movies/create_from_csv``` e ```/movies```. O primeiro é utilizado para importar dados de filmes a partir de um arquivo CSV e o segundo é utilizado para listar os filmes disponíveis.


# Ordenação
A API está ordenada pelo ano de lançamento (release_year) dos filmes. Foi adicionado um *validador* para garantir que não haja duplicidade de títulos e descrições dos filmes e também foram implementados testes para essa validação.

O endpoint ```/movies``` retorna uma lista de filmes no formato JSON, onde cada filme possui os seguintes campos:

``` json 
[
    { 
      id: identificador único do filme
      category: se é série ou filme
      title: título do filme
      director: quem dirigiu
      cast: atores
      country: país de origem do filme
      date_added: data em que foi adicionado
      released_year: data em que foi lançado
      rating: nota recebida
      duration: duração
      listed_in: gêneros
      description: descrição do filme
    }
]
```

Além disso, o endpoint ```/movies``` possui filtros para "category", "title", "director", "country" e "release_year". Para utilizar esses filtros, basta adicionar os parâmetros correspondentes na URL. 

Exemplos: ```/movies?release_year=2012``` para um parâmetro
ou ```/movie?release_year=2012&category=Movie``` sendo o símbolo "&" equivalente a "and". 

### Para iniciar o repositorio siga os passos:
clone o repositório com ```git clone https://github.com/marisnner7/movie_catalog_api/``` e digite o comando "bundle"
Inicie o banco de dados com ```rails db:setup```


A aplicação pode ser encontrada no navegador em localhost:3000

Para adicionar os filmes do csv no banco de dados, pode ser utilizado o comando:

``` 
curl -X POST -F "file=@netflix_titles.csv" http://localhost:3000/movies/create_from_csv
```

!!!Observação: no arquivo netflix_titles.csv a coluna 'type' foi alterada para 'category' em razão de type ser uma palavra reservado do ruby. Não altera em nada o resultado final pretendido com a aplicação. 
