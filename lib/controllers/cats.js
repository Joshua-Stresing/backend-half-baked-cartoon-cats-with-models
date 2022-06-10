const { Router } = require('express');
const Cat = require('../models/Cat');

module.exports = Router()
  .get('/:id', async (req, res) => {
    const id = req.params.id;
    const catById = await Cat.getById(id);
    res.json(catById);
  })

  .get('/', async (req, res) => {
    const catList = await Cat.getAll();
    res.json(catList);
  });
