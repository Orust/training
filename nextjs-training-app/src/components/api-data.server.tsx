function MyServerComponent({ data }: { data: any }) {
  if (!data) {
    return <div>Loading...</div>;
  }
  
  return (
    <div>
      <p>Name: {data.name}</p>
      <p>Order: {data.order}</p>
      <div>
        <img src={data.sprites.front_default} alt={`${data.name} normal front`} />
        <img src={data.sprites.back_default} alt={`${data.name} normal back`} />
      </div>
    </div>
  );
}

export default MyServerComponent;