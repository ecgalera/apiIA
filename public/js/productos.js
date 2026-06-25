async function loadProductos() {
  const res = await fetch('/api/productos');
  const data = await res.json();
  const el = document.getElementById('productos');
  el.innerHTML = '<h2>Productos</h2>' + JSON.stringify(data, null, 2);
}

loadProductos();
