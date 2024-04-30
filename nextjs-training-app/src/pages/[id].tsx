import MyServerComponent from "../components/api-data.server";
import { useRouter } from "next/router";

export default function Pokemon({ data }: {data: any}) {
  const router = useRouter();
  if (router.isFallback) {
    return <div>Loading...</div>;
  }
  return (
    <div>
      <h1>My Server Component</h1>
      <MyServerComponent data={data}/>
    </div>
  );
}

export async function getServerSideProps({ params }: { params: { id: string } }) {
  const { id } = params;
  const res = await fetch(`https://pokeapi.co/api/v2/pokemon/${id}`);
  const data = await res.json();
  return { props: { data } };
}
