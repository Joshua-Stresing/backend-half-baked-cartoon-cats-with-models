const { Router } = require('express');
const { cats } = require('../../data/cats');

module.exports = Router()
  .get('/:id', (req, res) => {
    const id = req.params.id;
    const catById = cats.find((cat) => cat.id === id);
    res.json(catById);
  })

  .get('/', (req, res) => {
    const catList = cats.map((item) => {
      return {
        id: item.id,
        name: item.name,
      };
    });
    res.json(catList);
  });
