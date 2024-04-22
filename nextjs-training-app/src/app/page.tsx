import MyServerComponent from "../components/api-data.server";

export default function Home({ data }: { data: any }) {
  return (
    <div>
      <h1>My Server Component</h1>
      <MyServerComponent data={data}/>
      <p>test</p>
    </div>
  );
}
