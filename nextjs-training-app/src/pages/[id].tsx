import MyServerComponent from "../components/api-data.server";
import { useRouter } from "next/router";
import Link from "next/link";

export default function Pokemon({ data }: {data: any}) {
  const router = useRouter();
  const id = parseInt(router.query.id as string);
  if (router.isFallback) {
    return <div>Loading...</div>;
  }
  return (
    <div>
      <h1>My Server Component</h1>
      <MyServerComponent data={data}/>
      {id > 1 && <Link href={`/${id - 1}`}>Previous&nbsp;&nbsp;</Link>}
      <Link href={`/${id + 1}`}>Next</Link>
    </div>
  );
}

export async function getServerSideProps({ params }: { params: { id: string } }) {
  const { id } = params;
  const res = await fetch(`https://pokeapi.co/api/v2/pokemon/${id}`);
  const data = await res.json();
  return { props: { data } };
}
