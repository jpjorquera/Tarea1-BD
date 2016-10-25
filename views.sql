CREATE VIEW view_mochila AS
  SELECT items.NOMBRE_ITEM, slots.CANTIDAD
  FROM items,slots,mochila,usuario
  WHERE slots.CANTIDAD>0 AND
        items.ID_ITEM=slots.ITEM_ID AND
        usuario.id_usuario=mochila.usuario_id AND
        mochila.id_mochila=slots.mochila_id;