function MyServerComponent({ data }: { data: any }) {
  if (!data) {
    return <div>Loading...</div>;
  }
  
  return (
    <div>
      <p>Base Experience: {data.base_experience}</p>
      <p>Name: {data.forms[0].name}</p>
    </div>
  );
}

export default MyServerComponent;