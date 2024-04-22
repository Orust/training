export async function getServerSideProps() {
  const res = await fetch('https://pokeapi.co/api/v2/pokemon/pikachu');
  const data = await res.json();
  console.log('aaa');
  return { props: { data } };
}