var express = require('express');
var router = express.Router();

/* DELETE item */
router.delete('/:id', function (req, res, next) {
  const itemId = req.params.id;

  // Aquí se realiza la lógica para eliminar el elemento con el ID dado
  // Ejemplo: db.deleteItem(itemId)

  res.status(200).send({ message: `Elemento con ID ${itemId} eliminado.` });
});

module.exports = router;