import MyServerComponent from "../components/api-data.server";
import Link from "next/link";

export default function Home({ data }: { data: any }) {
  const id = data.id;
  return (
    <div>
      <h1>My Server Component</h1>
      <MyServerComponent data={data}/>
      {id > 1 && <Link href={`/${id - 1}`}>Previous&nbsp;&nbsp;</Link>}
      <Link href={`/${id + 1}`}>Next</Link>
    </div>
  );
}

export async function getServerSideProps() {
  const res = await fetch('https://pokeapi.co/api/v2/pokemon/pikachu');
  const data = await res.json();
  return { props: { data } };
}