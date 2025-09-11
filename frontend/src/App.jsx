import axios from 'axios';
import './App.css'

function App() {
  const getUsers = async () => {
    try {
      const response = await axios.get(`/api/v1/channels`);
      console.log(response.data);
      return response.data;
    } catch (error) {
      console.error("Error fetching user data:", error);
      throw error; // Re-throw the error for further handling
    }
  }

  return (
    <>
      <button onClick={getUsers}>Запрос</button>
    </>
  )
}

export default App
