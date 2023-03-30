const router = require('express').Router();
const { Tag, Product, ProductTag, Category } = require('../../models');


router.get('/', async (req, res) => {
  try {
    const tagData = await Tag.findAll({include: [Product]});
    console.log(tagData);
    res.json(tagData);
  } catch (err) {
    res.status(500).json(err);
  }
});


  router.get("/:id", async (req, res) => {
    const tag = await Tag.findOne({ where: {id: req.params.id,},
    include: [Product],
  })
    .then((tag) => res.json(tag))
    .catch((err) => res.status(400).json(err));
});


router.post('/', async (req, res) => {
  try {
    const tag = await Tag.create(req.body);
    res.status(200).json(tag);
  } catch (err) {
    res.status(400).json(err);
  }
});

router.put('/:id', async (req, res) => {
  try {
    const tag = await Tag.update(req.body, {where: { id: req.params.id}});
    res.status(200).json(tag);
  }catch(err) {
    res.status(400).json(err);
  }
});

router.delete('/:id', async (req, res) => {
  try {
    const tag = await Tag.destroy ({
      where: {
        id: req.params.id
      }
    });
    if (!tag) {
      res.status(404).json ({ message: 'No product tags found with this ID'});
      return;
    }
    res.status(200).json(tag);
  } catch (err) {
    res.status(500).json(err);
  }
});

module.exports = router;
