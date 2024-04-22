import MyServerComponent from "../components/api-data.server";

export default function Home({ data }: { data: any }) {
  return (
    <div>
      <h1>My Server Component</h1>
      <MyServerComponent data={data}/>
    </div>
  );
}

export async function getServerSideProps() {
  const res = await fetch('https://pokeapi.co/api/v2/pokemon/pikachu');
  const data = await res.json();
  console.log('aaa');
  return { props: { data } };
}