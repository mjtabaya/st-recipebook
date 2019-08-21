import React, { Component } from 'react'
import { Container, Header, Segment, Button, Icon, Dimmer, Loader, Divider } from 'semantic-ui-react'

class Home extends Component {
  constructor () {
    super()
    this.state = {}
    this.getRecipes = this.getRecipes.bind(this)
    this.getRecipe = this.getRecipe.bind(this)
  }
  componentDidMount () {
    this.getRecipes()
  }
  fetch (endpoint) {
    return new Promise((resolve, reject) => {
      window.fetch(endpoint)
      .then(response => response.json())
      .then(json => resolve(json))
      .catch(error => reject(error))
    })
  }
  getRecipes () {
    this.fetch('api/recipes')
      .then(recipes => {
        this.setState({recipes: recipes})
        recipes[0] && this.getRecipe(recipes[0].id)
      })
  }
  getRecipe (id) {
    this.fetch(`api/recipes/${id}`)
      .then(recipe => this.setState({recipe: recipe}))
  }

  printDirections (directions) {
    var formatted_directions = directions.split('.').map(function (direction, index) {
            return <p key={index}>{ direction }</p>;
        });
    return <div className="directions">{formatted_directions}</div>;
  }
  render () {
    let {recipes, recipe} = this.state
    return recipes
    ? <Container text>
        <Header as='h2' icon textAlign='center'>
        <Icon name='cocktail' circular />
        <Header.Content>
          Recipe Book
        </Header.Content>
      </Header>
      <Button.Group fluid widths={recipes.length}>
        {Object.keys(recipes).map((key) => {
          return <Button active={recipe && recipe.id === recipes[key].id} fluid key={key} onClick={() => this.getRecipe(recipes[key].id)}>
            {recipes[key].name}
          </Button>
        })}
      </Button.Group>
      <Divider hidden />
      {recipe &&
        <Container>
          <Header as='h2'>{recipe.title}</Header>
          {recipe.description && <p>{recipe.description}</p>}
          <Header as='h3'>Ingredients:</Header>
          {recipe.ingredients &&
            <Segment.Group>
              {recipe.ingredients.map((ingredient, i) => <Segment key={i}>{ingredient.amount} x {ingredient.name}</Segment>)}
            </Segment.Group>
          }
          <Header as='h3'>Directions:</Header>
          {recipe.directions && <p>{this.printDirections(recipe.directions)}</p>}
        </Container>
      }
    </Container>
    : <Container text>
      <Dimmer active inverted>
        <Loader content='Loading' />
      </Dimmer>
    </Container>
  }
}

export default Home
