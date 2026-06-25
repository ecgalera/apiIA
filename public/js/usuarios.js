async function loadUsuarios() {
  const res = await fetch('/api/usuarios');
  const data = await res.json();
  const el = document.getElementById('usuarios');
  el.innerHTML = '<h2>Usuarios</h2>' + JSON.stringify(data, null, 2);
}

loadUsuarios();
