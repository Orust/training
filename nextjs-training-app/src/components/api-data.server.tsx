import Image from 'next/image';

function MyServerComponent({ data }: { data: any }) {
  if (!data) {
    return <div>Loading...</div>;
  }
  
  return (
    <div>
      <p>Name: {data.name}</p>
      <p>Pokedex Number: {data.id}</p>
      <div>
        <Image
          src={data.sprites.front_default}
          alt={`${data.name} normal front`}
          width={96}
          height={96}
        />
        <Image
          src={data.sprites.back_default}
          alt={`${data.name} normal back`}
          width={96}
          height={96}
        />
        <Image
          src={data.sprites.other['official-artwork'].front_default}
          alt={`${data.name} official artwork`}
          width={200}
          height={200}
        />
      </div>
    </div>
  );
}

export default MyServerComponent;