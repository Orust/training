function MyServerComponent({ data }: { data: any }) {
  if (!data) {
    return <div>Loading...</div>;
  }
  
  return (
    <div>
      <p>Base Experience: {data.base_experience}</p>
    </div>
  );
}

export default MyServerComponent;