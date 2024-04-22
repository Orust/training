import { InferGetServerSidePropsType } from 'next'

export async function getServerSideProps() {
  const res = await fetch('https://api.example.com/data')
  const data = await res.json()

  return { props: { data} }
}

function MyServerComponent({ data }: InferGetServerSidePropsType<typeof getServerSideProps>) {
  return (
    <div>
      <h1>My Server Component</h1>
      <p>{data}</p>
    </div>
  );
}

export default MyServerComponent;