const { Router } = require('express');
const Recipe = require('../models/Recipe');

module.exports = Router()
  .post('/api/v1/recipes', (req, res) => {
    Recipe
      .insert(req.body)
      .then(recipe => res.send(recipe));
  })
  
  .get('/api/v1/recipes', (req, res) => {
    Recipe
      .find()
      .then(recipes => res.send(recipes));
  })
  
  .get('/api/v1/recipes/:id', (req, res) => {
    Recipe
      .findById(req.params.id)
      .then(recipe => res.send(recipe));
  })
  
  .put('/api/v1/recipes/:id', (req, res) => {
    Recipe
      .update(req.params.id, req.body)
      .then(recipe => res.send(recipe));
  })
  
  .delete('/api/v1/recipes/:id', (req, res) => {
    Recipe
      .delete(req.params.id)
      .then(recipe => res.send(recipe));
  });
  
